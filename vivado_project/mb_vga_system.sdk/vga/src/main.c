#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <xparameters.h>
#include "xintc.h"
//#include "xtmrctr.h"
#include "mb_interface.h"
#include "xuartlite_i.h"

#define VGA_SYS_INTR		XPAR_AXI_INTC_0_VGA_DISPLAY_CTRL_SLAVE_VGA_SYS_INTR_INTR
#define UART_BASEADDR		XPAR_USB_UART_BASEADDR

#define TRANSLATE_VGA_ADDR(a)	((a))// - XPAR_MIG7SERIES_0_BASEADDR)

/* Registers */
#define DISPLAY_MISC_CTRL	*((volatile uint32_t *)(XPAR_VGA_DISPLAY_CTRL_SLAVE_BASEADDR + 0))
#define DISPLAY_ADDRESS		*((volatile uint32_t *)(XPAR_VGA_DISPLAY_CTRL_SLAVE_BASEADDR + 4))
#define IRQ_HISTORY			*((volatile uint32_t *)(XPAR_VGA_DISPLAY_CTRL_SLAVE_BASEADDR + 8))
#define DEBUG_VECTOR		*((volatile uint32_t *)(XPAR_VGA_DISPLAY_CTRL_SLAVE_BASEADDR + 0xc))
#define IMAGE_WIDTH			*((volatile uint32_t *)(XPAR_VGA_DISPLAY_CTRL_SLAVE_BASEADDR + 0x10))
#define IMAGE_HEIGHT		*((volatile uint32_t *)(XPAR_VGA_DISPLAY_CTRL_SLAVE_BASEADDR + 0x14))

/* Masks */
#define MONITOR_ON 			1
#define DISPLAY_RST 		2
#define START_DISPLAY 		4
#define LINE_VALID 			8
#define DISPLAY_STATUS		0xf0

/* IRQ-specific masks */
#define IRQ_HISTORY_BITS	4
#define IRQ_HISTORY_MASK	((1 << IRQ_HISTORY_BITS) - 1)

/* IRQ bits */
#define IRQ_ERROR			1
#define IRQ_LINE			2

/* VGA definitions */
#define VGA_LINES			600
#define VGA_COLS			800
#define VGA_PIXEL_SIZE		sizeof(uint16_t)
#define VGA_COLS_BYTES		(VGA_COLS * VGA_PIXEL_SIZE) /* 16-bit (5-6-5) */
#define VGA_FRAME_PIXELS	(VGA_COLS * VGA_LINES)
#define VGA_FRAME_BYTES		(VGA_FRAME_PIXELS * sizeof(uint16_t))
#define VGA_REFRESH_RATE	72

/* ==================================================== */
/* Configurations */
#define GET_IMAGE_FROM_UART 0
#define STATISTICS			0
#define HANDLE_BENCHMARK 	0
#define BREAK_IF_TIME_EXCCEEDS (0 && HANDLE_BENCHMARK)
/* ==================================================== */

#define VGA_IMAGES_COUNT_MAX	46

struct VgaFrame
{
	uint8_t data[VGA_LINES][VGA_COLS_BYTES];
} __attribute__((aligned(16)));

__attribute__((section(".vga")))
static struct VgaFrame vga[VGA_IMAGES_COUNT_MAX], *current_image = vga;

static unsigned line_index = 0;

static unsigned frames_per_image = 0, images_count = 0;
static int frame_index = 0, image_index = 0;

#if HANDLE_BENCHMARK
	static XTmrCtr tmr;

    uint32_t avg = 0;
#endif

#if STATISTICS
volatile uint32_t intrs = 0, iall = 0, iframes = 1;
#endif

static void line_intr(void *p)
{
	uint32_t irq = IRQ_HISTORY;

	do
	{
		while (irq)
		{
#if HANDLE_BENCHMARK
			XTmrCtr_Reset(&tmr, 0);
			XTmrCtr_Start(&tmr, 0);
#endif

#if STATISTICS
			++iall;
#endif

			switch (irq & IRQ_HISTORY_MASK)
			{
			case IRQ_ERROR:
				XUartLite_WriteReg(UART_BASEADDR, XUL_TX_FIFO_OFFSET, 'E');
				break;

			case IRQ_LINE:
				switch (line_index)
				{
				case VGA_LINES:
#if STATISTICS
					++iframes;
#endif

					if (++frame_index >= frames_per_image)
					{
						frame_index = 0;

						if (++image_index >= images_count)
						{
							image_index = 0;
							current_image = vga;
						}
						else
						{
							++current_image;
						}
					}

					line_index = 0;
					/* FALLTHRU */

				default:
					DISPLAY_ADDRESS = TRANSLATE_VGA_ADDR((uint32_t)current_image->data[line_index++]);
					DISPLAY_MISC_CTRL = LINE_VALID | MONITOR_ON;

					break;
				}
				XUartLite_WriteReg(UART_BASEADDR, XUL_TX_FIFO_OFFSET, 'L');

#if STATISTICS
				++intrs;
#endif
				break;

			default:
				putnum(irq); print("\r\n");
				break;
			}

			irq >>= IRQ_HISTORY_BITS;

#if HANDLE_BENCHMARK
				XTmrCtr_Stop(&tmr, 0);
#if BREAK_IF_TIME_EXCCEEDS
				if (XTmrCtr_GetValue(&tmr, 0) >= 300)
				{
					print("Ugh!"); putnum(XTmrCtr_GetValue(&tmr, 0)); print("\r\n");
					error = 1;
					break;
				}
#endif
				avg += XTmrCtr_GetValue(&tmr, 0);
#endif
		}

		irq = IRQ_HISTORY;
	} while (irq);
}

#if GET_IMAGE_FROM_UART
#define OPCODE_INIT	 0xb0
#define OPCODE_IMAGE 0xb1
#define OPCODE_DATA	 0xb2
#define OPCODE_ACK	 0xa5
#define OPCODE_NACK	 0x5a

#define IMAGE_BLOCK_SIZE	4000

#define READ_LE32(buf)		((buf)[0] | ((uint32_t)(buf)[1] << 8) | ((uint32_t)(buf)[2] << 16) | ((uint32_t)(buf)[3] << 24))
#define WRITE_LE32(buf, d)	do { (buf)[0] = (d) & 0xff; (buf)[1] = ((d) >> 8) & 0xff; (buf)[2] = ((d) >> 16) & 0xff; (buf)[3] = ((d) >> 24) & 0xff; } while (0)

struct ImageProtocolHeader
{
	uint8_t opcode;
	uint8_t ctr[sizeof(unsigned)];
};

struct InitMessage
{
	struct ImageProtocolHeader header;
	uint8_t images_cnt[sizeof(unsigned)];
	uint8_t fpi[sizeof(unsigned)];
};

struct ImageMessage
{
	struct ImageProtocolHeader header;
	uint8_t img_idx[sizeof(unsigned)];
	uint8_t pixels_cnt[sizeof(unsigned)];
};

struct DataMessage
{
	struct ImageProtocolHeader header;
	uint8_t pixels_cnt[sizeof(unsigned)];
	uint8_t data[IMAGE_BLOCK_SIZE];
};

struct ResponseMessage
{
	struct ImageProtocolHeader header;
	uint8_t res_cnt[sizeof(unsigned)];
};

enum RecvState
{
	eRecvState_WaitingForInit,
	eRecvState_WaitingForImageHeader,
	eRecvState_ReadingData,
	eRecvState_Done,
	eRecvState_Error
};

enum ResultStatus
{
	eResultStatus_Ack,
	eResultStatus_Nack
};

static void send_response(enum ResultStatus result, unsigned ctr, unsigned count)
{
	unsigned c;
	struct ResponseMessage msg =
	{
		.header =
		{
			.opcode = result == eResultStatus_Ack ? OPCODE_ACK : OPCODE_NACK
		}
	};

	WRITE_LE32(msg.header.ctr, ctr);
	WRITE_LE32(msg.res_cnt, count);

	for (c = 0; c < sizeof(msg); ++c)
	{
		while (XUartLite_IsTransmitFull(XPAR_RS232_DCE_BASEADDR))
			;

		XUartLite_WriteReg(XPAR_RS232_DCE_BASEADDR, XUL_TX_FIFO_OFFSET, ((uint8_t *)&msg)[c]);
	}
}

static void get_image_data(void)
{
	enum RecvState state = eRecvState_WaitingForInit;
	unsigned recv_count = 0, ctr = 0;
	unsigned total_images = 0, image_frames = 0, expected_image_index = 0;
	unsigned expected_size = 0, total_recv = 0;
	static uint8_t buf[sizeof(struct DataMessage) + 1] __attribute__((section(".vga_buf")));

	for (;;)
	{
		while ((recv_count < sizeof(buf)) && (!XUartLite_IsReceiveEmpty(XPAR_RS232_DCE_BASEADDR)))
		{
			buf[recv_count++] = XUartLite_ReadReg(XPAR_RS232_DCE_BASEADDR, XUL_RX_FIFO_OFFSET);
		}

		switch (state)
		{
		case eRecvState_WaitingForInit:
			if (recv_count >= sizeof(struct InitMessage))
			{
				struct InitMessage *m = (struct InitMessage *)buf;

				if ((recv_count != sizeof(struct InitMessage)) || (m->header.opcode != OPCODE_INIT))
				{
					state = -state;
				}
				else
				{
					print("Got INIT\r\n");
					ctr = READ_LE32(m->header.ctr);

					if (ctr != 0)
					{
						state = -state;
					}
					else
					{
						total_images = READ_LE32(m->images_cnt);

						if ((total_images <= 0) || (total_images > VGA_IMAGES_COUNT_MAX) || (expected_size % VGA_FRAME_PIXELS != 0))
						{
							state = -state;
						}
						else
						{
							image_frames = READ_LE32(m->fpi);

							if ((image_frames <= 0) || (image_frames > VGA_REFRESH_RATE))
							{
								state = -state;
							}
							else
							{
								recv_count = 0;
								expected_image_index = 0;
								state = eRecvState_WaitingForImageHeader;

								send_response(eResultStatus_Ack, 0, total_images);

								print("Waiting for ");putnum(total_images);print(" images @ ");putnum(image_frames);print(" fpi\r\n");
							}
						}
					}
				}
			}

			break;

		case eRecvState_WaitingForImageHeader:
			if (recv_count >= sizeof(struct ImageMessage))
			{
				struct ImageMessage *m = (struct ImageMessage *)buf;

				if ((recv_count != sizeof(struct ImageMessage)) || (m->header.opcode != OPCODE_IMAGE))
				{
					state = -state;
				}
				else
				{
					print("Got IMG\r\n");
					ctr = READ_LE32(m->header.ctr);

					if (ctr != 0)
					{
						state = -state;
					}
					else
					{
						unsigned image_index = READ_LE32(m->img_idx);

						if (image_index != expected_image_index)
						{
							state = -state;
						}
						else
						{
							expected_size = READ_LE32(m->pixels_cnt);

							if (expected_size != VGA_FRAME_PIXELS)
							{
								state = -state;
							}
							else
							{
								send_response(eResultStatus_Ack, 0, expected_size);

								print("Waiting for ");putnum(expected_size);print(" pixels for image ");putnum(expected_image_index);print("\r\n");

								expected_size <<= 1;
								recv_count = 0;
								total_recv = 0;
								state = eRecvState_ReadingData;
							}
						}
					}
				}
			}

			break;

		case eRecvState_ReadingData:
			if (recv_count >= sizeof(struct DataMessage))
			{
				struct DataMessage *m = (struct DataMessage *)buf;

				if ((recv_count != sizeof(struct DataMessage)) || (m->header.opcode != OPCODE_DATA))
				{
					state = -state;
				}
				else
				{
					unsigned next_ctr = READ_LE32(m->header.ctr);

					if (next_ctr != ctr + 1)
					{
						state = -state;
					}
					else
					{
						unsigned pixels_count = READ_LE32(m->pixels_cnt);
						unsigned copy = expected_size - total_recv;

						if (copy > sizeof(m->data))
						{
							copy = sizeof(m->data);
						}

						if ((pixels_count << 1) != copy)
						{
							state = -state;
						}
						else
						{
							memcpy(((uint8_t *)vga[expected_image_index].data) + total_recv, m->data, copy);
							total_recv += copy;

							if (total_recv > expected_size)
							{
								state = -state;
							}
							else
							{
								ctr = next_ctr;
								recv_count = 0;

								send_response(eResultStatus_Ack, ctr, pixels_count);

								print("\r");putnum(expected_image_index);print(": ");putnum(total_recv);print("/");putnum(expected_size);print(" bytes...");

								if (total_recv == expected_size)
								{
									print(" Done\r\n");

									if (++expected_image_index == total_images)
									{
										state = eRecvState_Done;
									}
									else
									{
										state = eRecvState_WaitingForImageHeader;
									}
								}
							}
						}
					}
				}
			}

			break;

		case eRecvState_Done:
			print("DONE\r\n");
			images_count = total_images;
			frames_per_image = image_frames;
			return;

		default:
			send_response(eResultStatus_Nack, ctr, expected_size);

			print("\r\n===> ");putnum(-state);print("\r\n");
		}
	}
}
#endif

static void wait_for_key(void)
{
	for (;;)
	{
		if (!XUartLite_IsReceiveEmpty(UART_BASEADDR))
		{
			XUartLite_ReadReg(UART_BASEADDR, XUL_RX_FIFO_OFFSET);
			break;
		}
	}
}

int main()
{
	XIntc intc;

	DISPLAY_MISC_CTRL = DISPLAY_RST;
	DISPLAY_MISC_CTRL = 0;

    microblaze_enable_icache();

    print("Hello World\r\n");

    frames_per_image = VGA_REFRESH_RATE;
    images_count = 1;
    frame_index = 0;
    image_index = 0;

    unsigned p = 0, li;

#if !GET_IMAGE_FROM_UART
    frames_per_image = 5;
    images_count = 45;
    frame_index = 0;
    image_index = 0;

    for (p = 0; p < images_count; ++p)
    {
#endif
		for (li = 0; li < VGA_LINES; ++li)
		{
			memset(vga[p].data[li], li + p, sizeof(vga[p].data[li]));
		}
#if !GET_IMAGE_FROM_UART
    }
#endif

#if USE_TIMER
    if (XTmrCtr_Initialize(&tmr, XPAR_XPS_TIMER_0_DEVICE_ID) != XST_SUCCESS)
    {
    	print("tmr init!\r\n");
    }
    else if (XTmrCtr_SelfTest(&tmr, 0) != XST_SUCCESS)
    {
    	print("tmr test\r\n");
    }
#endif

#if !POLLED_MODE
    if (XIntc_Initialize(&intc, XPAR_INTC_0_DEVICE_ID) != XST_SUCCESS)
    {
    	print("init failed\r\n");
    }
    else if (XIntc_SelfTest(&intc) != XST_SUCCESS)
    {
    	print("self test failed\r\n");
    }
    else if (XIntc_Start(&intc, XIN_REAL_MODE) != XST_SUCCESS)
    {
    	print("start failed\r\n");
    }
    else if (XIntc_Connect(&intc, VGA_SYS_INTR, line_intr, 0) != XST_SUCCESS)
    {
    	print("connect failed\r\n");
    }

    XIntc_Enable(&intc, VGA_SYS_INTR);
#endif

#if USE_TIMER
    XTmrCtr_SetOptions(&tmr, 0, XTC_AUTO_RELOAD_OPTION);
#endif

    microblaze_enable_interrupts();
    microblaze_enable_exceptions();

    print("Visual graphics, APPLY!\r\n");

#if GET_IMAGE_FROM_UART
	print("Getting image...\r\n");

    get_image_data();

	print("Image done.\r\n");

    image_index = 0;
    frame_index = 0;
#endif

    print("Press any key to start display...\r\n");

    wait_for_key();

    print("Very good, Arnold!\r\n");

    line_index = 0;
    current_image = vga;

    DISPLAY_ADDRESS = TRANSLATE_VGA_ADDR((uint32_t)vga[0].data[line_index++]);
    DISPLAY_MISC_CTRL = START_DISPLAY | MONITOR_ON;

#if USE_TIMER
#if !HANDLE_BENCHMARK
	uint32_t last = XTmrCtr_GetValue(&tmr, 0);
#endif

    XTmrCtr_Reset(&tmr, 0);
    XTmrCtr_Start(&tmr, 0);
#endif

    for (;;)
    {
#if USE_TIMER
#if !HANDLE_BENCHMARK
    	uint32_t current = XTmrCtr_GetValue(&tmr, 0);
    	if ((current - last) / XPAR_XPS_TIMER_0_CLOCK_FREQ_HZ >= 10)
    	{
    		print(".");
#if STATISTICS
    		putnum(intrs);
    		print("/");
    		putnum(iall);
    		print("(");
    		putnum(IRQ_HISTORY);
    		print(") => ");
    		putnum(iframes);
    		print("\r\n");
#endif
    		last = current;
    	}
#endif
#endif
    }

    return 0;
}
