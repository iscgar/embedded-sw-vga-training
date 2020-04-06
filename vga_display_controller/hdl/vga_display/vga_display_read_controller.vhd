
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.vga_package.all;

entity vga_display_read_controller is
    generic(
        G_RST_POLARITY             : std_logic
    );
    port(
        -- General Ports
        clk                        : in std_logic;
        rst                        : in std_logic;

        -- VGA Signals
        start_display              : in std_logic;
        new_frame_vga              : in std_logic;
        new_data_line_vga          : in std_logic;
        new_line_address_valid     : in std_logic;
        vga_line_address           : in std_logic_vector(C_MST_AWIDTH - 1 downto 0);
        new_line_irq               : out std_logic;
        line_addr_not_received_err : out std_logic;
        display_data               : out std_logic;
        vga_status                 : out std_logic_vector(3 downto 0);

        -- DDR Interface
        ddr_waitrequest            : in std_logic;
        ddr_rd_valid               : in std_logic;
        ddr_read_error             : in std_logic;
        ddr_rd                     : out std_logic;
        ddr_rd_burst_length        : out std_logic_vector(10 downto 0);
        ddr_address                : out std_logic_vector(C_MST_AWIDTH - 1 downto 0);

        -- FIFO Interface
        fifo_almost_full           : in std_logic;
        fifo_wr_en                 : out std_logic;

        -- State Machine Debug State
        sm_state                   : out std_logic_vector(3 downto 0)
    );
end entity;

architecture arch of vga_display_read_controller is
    -- Image display states
    type read_state_type is (IDLE,
                             WAIT_FOR_FIFO_AFULL,
                             WAIT_FOR_WAITREQUEST,
                             READING_DATA,
                             WAIT_FOR_NEXT_READ_LINE,
                             ERROR,
                             READ_ERROR);

    signal read_state               : read_state_type;

    -- Burst size in bytes - 1 Line (C_VGA_HORIZONTAL_VISIBLE_AREA 16-bit pixels)
    constant BURST_COUNT            : integer := (C_VGA_HORIZONTAL_VISIBLE_AREA * C_VGA_PIXEL_WIDTH) / C_MST_DWIDTH;

    signal new_line_address_cpu_int : std_logic;

    signal start_display_int        : std_logic;

    signal ddr_rd_valid_cnt         : integer range 0 to BURST_COUNT - 1;
    signal ddr_rd_done              : std_logic;
begin

    -- Displaying Image state-machine
    displaying_image : process(clk, rst)
    begin
        if rst = G_RST_POLARITY then
            read_state <= IDLE;
            line_addr_not_received_err <= '0';
            new_line_irq <= '0';
            display_data <= '0';
        elsif rising_edge(clk) then
            line_addr_not_received_err <= '0';
            new_line_irq <= '0';
            display_data <= '0';

            case read_state is
                when IDLE =>
                    if start_display_int = '1' and new_frame_vga = '1' then
                        new_line_irq <= '1';
                        display_data <= '1';
                        read_state <= WAIT_FOR_FIFO_AFULL;
                    end if;

                when WAIT_FOR_FIFO_AFULL =>
                    if fifo_almost_full = '0' then
                        read_state <= WAIT_FOR_WAITREQUEST;
                    end if;

                when WAIT_FOR_WAITREQUEST =>
                    if ddr_waitrequest = '0' then
                        read_state <= READING_DATA;
                    end if;

                when READING_DATA =>
                    if ddr_rd_done = '1' then
                        read_state <= WAIT_FOR_NEXT_READ_LINE;
                    elsif ddr_read_error = '1' then
                         read_state <= READ_ERROR;
                    end if;

                when WAIT_FOR_NEXT_READ_LINE =>
                    if new_data_line_vga = '1' then
                        new_line_irq <= '1';
                        if new_line_address_cpu_int = '1' then
                            read_state <= WAIT_FOR_FIFO_AFULL;
                        else
                            read_state <= ERROR;
                            line_addr_not_received_err <= '1';
                        end if;
                    end if;

                when ERROR =>
                    read_state <= ERROR; -- Get stuck here until reset

                when READ_ERROR =>
                    read_state <= READ_ERROR; -- Get stuck here until reset

                when others =>
                    read_state <= IDLE;
            end case;
        end if;
    end process;

    -- Assigning VGA status.
    vga_status <= x"0" when read_state = IDLE
                  else x"1" when read_state >= WAIT_FOR_FIFO_AFULL
                  else x"F";

    sm_state <= x"0" when read_state = IDLE
                else x"1" when read_state = WAIT_FOR_FIFO_AFULL
                else x"2" when read_state = WAIT_FOR_WAITREQUEST
                else x"3" when read_state = READING_DATA
                else x"4" when read_state = WAIT_FOR_NEXT_READ_LINE
                else x"5" when read_state = ERROR
                else x"6" when read_state = READ_ERROR
                else x"F";

    fifo_wr_en <= ddr_rd_valid when read_state = READING_DATA else '0';

    -- DDR Access
    ddr_rd <= '1' when read_state = WAIT_FOR_WAITREQUEST else '0';
    ddr_address <= vga_line_address;
    ddr_rd_burst_length <= conv_std_logic_vector(BURST_COUNT, ddr_rd_burst_length'length);

    -- Image address counter
    new_cpu_address_int : process(clk, rst)
    begin
        if rst = G_RST_POLARITY then
            new_line_address_cpu_int <= '0';
        elsif rising_edge(clk) then
            if new_data_line_vga = '1' then
                new_line_address_cpu_int <= '0';
            elsif new_line_address_valid = '1' then
                new_line_address_cpu_int <= '1';
            end if;
        end if;
    end process;

    -- Buffer start display
    start_display_sampler : process(clk, rst)
    begin
        if rst = G_RST_POLARITY then
            start_display_int <= '0';
        elsif rising_edge(clk) then
            if start_display = '1' then
                start_display_int <= start_display;
            end if;
        end if;
    end process;

    -- Count data elements to know when the burst read is done
    ddr_rd_done_proc : process(clk, rst)
    begin
        if rst = G_RST_POLARITY then
            ddr_rd_done <= '0';
            ddr_rd_valid_cnt <= 0;
        elsif rising_edge(clk) then
            ddr_rd_done <= '0';

            if ddr_rd_valid_cnt < (BURST_COUNT - 1) then
                if ddr_rd_valid = '1' then
                    ddr_rd_valid_cnt <= ddr_rd_valid_cnt + 1;
                end if;
            elsif ddr_rd_valid = '1' and ddr_read_error = '0' then
                ddr_rd_done <= '1';
                ddr_rd_valid_cnt <= 0;
            end if;
        end if;
    end process;

end arch;
