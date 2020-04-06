library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.vga_package.all;

entity vga_display_controller is
    generic(
        G_S_AXI_DATA_WIDTH : integer := C_SLV_DWIDTH;
        G_VGA_RED_WIDTH    : integer := C_VGA_COLOR_WIDTH;
        G_VGA_GREEN_WIDTH  : integer := C_VGA_COLOR_WIDTH;
        G_VGA_BLUE_WIDTH   : integer := C_VGA_COLOR_WIDTH
    );
    port(
        -- AXI4Lite Register Slave Interface
        axi_slv_aclk       : in std_logic;
        axi_slv_aresetn    : in std_logic;
        axi_slv_awaddr     : in std_logic_vector(C_SLV_AWIDTH - 1 downto 0);
        axi_slv_awprot     : in std_logic_vector(2 downto 0);
        axi_slv_awvalid    : in std_logic;
        axi_slv_awready    : out std_logic;
        axi_slv_wdata      : in std_logic_vector(G_S_AXI_DATA_WIDTH - 1 downto 0);
        axi_slv_wstrb      : in std_logic_vector((G_S_AXI_DATA_WIDTH / 8) - 1 downto 0);
        axi_slv_wvalid     : in std_logic;
        axi_slv_wready     : out std_logic;
        axi_slv_bresp      : out std_logic_vector(1 downto 0);
        axi_slv_bvalid     : out std_logic;
        axi_slv_bready     : in std_logic;
        axi_slv_araddr     : in std_logic_vector(C_SLV_AWIDTH - 1 downto 0);
        axi_slv_arprot     : in std_logic_vector(2 downto 0);
        axi_slv_arvalid    : in std_logic;
        axi_slv_arready    : out std_logic;
        axi_slv_rdata      : out std_logic_vector(G_S_AXI_DATA_WIDTH - 1 downto 0);
        axi_slv_rresp      : out std_logic_vector(1 downto 0);
        axi_slv_rvalid     : out std_logic;
        axi_slv_rready     : in std_logic;

        -- Avalon DDR Master Interface
        ddr_waitrequest    : in std_logic; -- AVALON_MASTER WAITREQUEST
        ddr_rd_valid       : in std_logic; -- AVALON_MASTER READDATAVALID
        ddr_readdata       : in std_logic_vector(C_MST_DWIDTH - 1 downto 0); -- AVALON_MASTER READDATA
        ddr_rd             : out std_logic; -- AVALON_MASTER READ
        ddr_rd_burst_count : out std_logic_vector(10 downto 0); -- AVALON_MASTER BURSTCOUNT
        ddr_address        : out std_logic_vector(C_MST_AWIDTH - 1 downto 0); -- AVALON_MASTER ADDRESS
        ddr_read_error     : in std_logic; -- Pulse

        -- VGA pixel clock
        vga_pixel_clock    : in std_logic;

        -- Out CPU interrupt
        vga_sys_intr       : out std_logic;

        -- Out VGA signals
        vga_red            : out std_logic_vector(G_VGA_RED_WIDTH - 1 downto 0);
        vga_green          : out std_logic_vector(G_VGA_GREEN_WIDTH - 1 downto 0);
        vga_blue           : out std_logic_vector(G_VGA_BLUE_WIDTH - 1 downto 0);
        vga_hsync          : out std_logic;
        vga_vsync          : out std_logic
    );
end entity;

architecture vga_display_controller_arch of vga_display_controller is
    attribute X_INTERFACE_INFO : STRING;
    attribute X_INTERFACE_PARAMETER : STRING;

    attribute X_INTERFACE_INFO of vga_sys_intr         : signal is "xilinx.com:signal:interrupt:1.0 vga_sys_intr INTERRUPT";
    attribute X_INTERFACE_PARAMETER of vga_sys_intr    : signal is "XIL_INTERFACENAME vga_sys_intr, SENSITIVITY LEVEL_HIGH, LOW_LATENCY 0";

    attribute X_INTERFACE_INFO of ddr_rd               : signal is "xilinx.com:interface:avalon:1.0 M_Avalon READ";
    attribute X_INTERFACE_INFO of ddr_rd_valid         : signal is "xilinx.com:interface:avalon:1.0 M_Avalon READDATAVALID";
    attribute X_INTERFACE_INFO of ddr_waitrequest      : signal is "xilinx.com:interface:avalon:1.0 M_Avalon WAITREQUEST";
    attribute X_INTERFACE_INFO of ddr_address          : signal is "xilinx.com:interface:avalon:1.0 M_Avalon ADDRESS";
    attribute X_INTERFACE_INFO of ddr_rd_burst_count   : signal is "xilinx.com:interface:avalon:1.0 M_Avalon BURSTCOUNT";
    attribute X_INTERFACE_INFO of ddr_readdata         : signal is "xilinx.com:interface:avalon:1.0 M_Avalon READDATA";

    attribute X_INTERFACE_INFO of axi_slv_awaddr       : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
    attribute X_INTERFACE_INFO of axi_slv_awprot       : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
    attribute X_INTERFACE_INFO of axi_slv_awvalid      : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
    attribute X_INTERFACE_INFO of axi_slv_awready      : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
    attribute X_INTERFACE_INFO of axi_slv_wdata        : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
    attribute X_INTERFACE_INFO of axi_slv_wstrb        : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
    attribute X_INTERFACE_INFO of axi_slv_wvalid       : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
    attribute X_INTERFACE_INFO of axi_slv_wready       : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
    attribute X_INTERFACE_INFO of axi_slv_bresp        : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
    attribute X_INTERFACE_INFO of axi_slv_bvalid       : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
    attribute X_INTERFACE_INFO of axi_slv_bready       : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
    attribute X_INTERFACE_INFO of axi_slv_araddr       : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
    attribute X_INTERFACE_INFO of axi_slv_arprot       : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
    attribute X_INTERFACE_INFO of axi_slv_arvalid      : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
    attribute X_INTERFACE_INFO of axi_slv_arready      : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
    attribute X_INTERFACE_INFO of axi_slv_rdata        : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
    attribute X_INTERFACE_INFO of axi_slv_rresp        : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
    attribute X_INTERFACE_INFO of axi_slv_rvalid       : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
    attribute X_INTERFACE_INFO of axi_slv_rready       : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";

    attribute X_INTERFACE_INFO of axi_slv_aresetn      : signal is "xilinx.com:signal:reset:1.0 axi_slv_aresetn RST";
    attribute X_INTERFACE_PARAMETER of axi_slv_aresetn : signal is "XIL_INTERFACENAME axi_slv_aresetn, POLARITY ACTIVE_LOW";

    attribute X_INTERFACE_INFO of axi_slv_aclk         : signal is "xilinx.com:signal:clock:1.0 axi_slv_aclk CLK";
    attribute X_INTERFACE_PARAMETER of axi_slv_aclk    : signal is "XIL_INTERFACENAME axi_slv_aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET axi_slv_aresetn";

    attribute X_INTERFACE_INFO of vga_pixel_clock      : signal is "xilinx.com:signal:clock:1.0 vga_pixel_clock CLK";

    -- AXI rst is active low
    constant C_VGA_RST_POLARITY  : std_logic := '0';

    signal gen_reset_n           : std_logic;
    signal sync_gen_reset        : std_logic;
    signal line_addr_err         : std_logic;

    -- Slave signals
    signal reg_display_rst       : std_logic;
    signal reg_line_address      : std_logic_vector(C_MST_AWIDTH - 1 downto 0);
    signal reg_start_display     : std_logic; -- Pulse
    signal reg_new_line_from_cpu : std_logic; -- Pulse

    -- VGA handler pulses (VGA pixel clock domain)
    signal vga_error_sig         : std_logic; -- Pulse
    signal vga_new_frame         : std_logic; -- Pulse
    signal vga_new_data_line     : std_logic; -- Pulse
    signal vga_display_data      : std_logic; -- Pulse
    signal vga_monitor_on        : std_logic; -- Signal

    -- VGA handler control signals (CPU clock domain)
    signal cpu_display_error     : std_logic; -- Pulse
    signal cpu_new_frame         : std_logic; -- Pulse
    signal cpu_new_data_line     : std_logic; -- Pulse
    signal cpu_display_data      : std_logic; -- Pulse
    signal cpu_monitor_on        : std_logic; -- Signal

    -- Image read controller signals
    signal sm_state              : std_logic_vector(3 downto 0);
    signal display_status        : std_logic_vector(3 downto 0);

    signal new_line_irq_int      : std_logic;
    signal irq_vector            : std_logic_vector(15 downto 0) := (others => '0');

    -- IRQ sender signals
    signal irq_history           : std_logic_vector(15 downto 0);
    signal irq_history_rd_indc   : std_logic;
    signal debug_vector          : std_logic_vector(G_S_AXI_DATA_WIDTH - 1 downto 0);

    -- FIFO Interface
    signal fifo_pixel_wr_data    : std_logic_vector(C_MST_DWIDTH - 1 downto 0); -- FIFO_WRITE WR_DATA
    signal fifo_pixel_wr_en      : std_logic; -- FIFO_WRITE WR_EN
    signal fifo_pixel_rd_data    : std_logic_vector(C_VGA_PIXEL_WIDTH - 1 downto 0); -- FIFO_READ RD_DATA
    signal fifo_pixel_rd_en      : std_logic; -- FIFO_READ RD_EN
    signal fifo_rd_data_valid    : std_logic;
    signal fifo_almost_full      : std_logic;
begin

    gen_reset_n <= axi_slv_aresetn and not reg_display_rst; -- Active LOW

    vga_monitor_on <= cpu_monitor_on; -- TODO: Sync!

    fifo_pixel_wr_data <= (others => '0') when gen_reset_n = C_VGA_RST_POLARITY else ddr_readdata;

    -- Pixel FIFO
    pixel_fifo_inst : entity work.pixel_fifo
    port map(
        rst         => sync_gen_reset,
        wr_clk      => axi_slv_aclk,
        rd_clk      => vga_pixel_clock,
        din         => fifo_pixel_wr_data,
        wr_en       => fifo_pixel_wr_en,
        rd_en       => fifo_pixel_rd_en,
        dout        => fifo_pixel_rd_data,
        full        => open,
        empty       => open,
        valid       => fifo_rd_data_valid,
        prog_full   => fifo_almost_full,
        wr_rst_busy => open,
        rd_rst_busy => open
    );

    -- Image read controller, reading the image according to signals.
    image_read_controller_inst : entity work.vga_display_read_controller
    generic map(
        G_RST_POLARITY => C_VGA_RST_POLARITY
    )
    port map(
        clk                        => axi_slv_aclk,
        rst                        => gen_reset_n,
        start_display              => reg_start_display,
        new_frame_vga              => cpu_new_frame,
        new_data_line_vga          => cpu_new_data_line,
        new_line_address_valid     => reg_new_line_from_cpu,
        vga_line_address           => reg_line_address,
        new_line_irq               => new_line_irq_int,
        line_addr_not_received_err => line_addr_err,
        display_data               => cpu_display_data,
        vga_status                 => display_status,
        ddr_waitrequest            => ddr_waitrequest,
        ddr_rd_valid               => ddr_rd_valid,
        ddr_read_error             => ddr_read_error,
        ddr_rd                     => ddr_rd,
        ddr_rd_burst_length        => ddr_rd_burst_count,
        ddr_address                => ddr_address,
        fifo_almost_full           => fifo_almost_full,
        fifo_wr_en                 => fifo_pixel_wr_en,
        sm_state                   => sm_state
    );

    vga_display_controller_slave_inst : entity work.vga_display_controller_slave
    generic map (
        C_S_AXI_DATA_WIDTH => G_S_AXI_DATA_WIDTH,
        C_S_AXI_ADDR_WIDTH => C_SLV_AWIDTH
    )
    port map (
        vga_line_address    => reg_line_address,
        monitor_on          => cpu_monitor_on,
        vga_display_rst     => reg_display_rst,
        start_display       => reg_start_display,
        new_line_from_cpu   => reg_new_line_from_cpu,

        vga_status          => display_status,
        debug_vector        => debug_vector,
        irq_history         => irq_history,
        irq_history_rd_indc => irq_history_rd_indc,

        S_AXI_ACLK          => axi_slv_aclk,
        S_AXI_ARESETN       => axi_slv_aresetn,
        S_AXI_AWADDR        => axi_slv_awaddr,
        S_AXI_AWPROT        => axi_slv_awprot,
        S_AXI_AWVALID       => axi_slv_awvalid,
        S_AXI_AWREADY       => axi_slv_awready,
        S_AXI_WDATA         => axi_slv_wdata,
        S_AXI_WSTRB         => axi_slv_wstrb,
        S_AXI_WVALID        => axi_slv_wvalid,
        S_AXI_WREADY        => axi_slv_wready,
        S_AXI_BRESP         => axi_slv_bresp,
        S_AXI_BVALID        => axi_slv_bvalid,
        S_AXI_BREADY        => axi_slv_bready,
        S_AXI_ARADDR        => axi_slv_araddr,
        S_AXI_ARPROT        => axi_slv_arprot,
        S_AXI_ARVALID       => axi_slv_arvalid,
        S_AXI_ARREADY       => axi_slv_arready,
        S_AXI_RDATA         => axi_slv_rdata,
        S_AXI_RRESP         => axi_slv_rresp,
        S_AXI_RVALID        => axi_slv_rvalid,
        S_AXI_RREADY        => axi_slv_rready
    );

    vga_handler_inst : entity work.vga_handler
    generic map (
        G_RST_POLARITY => C_VGA_RST_POLARITY,
        G_RED_WIDTH    => G_VGA_RED_WIDTH,
        G_GREEN_WIDTH  => G_VGA_GREEN_WIDTH,
        G_BLUE_WIDTH   => G_VGA_BLUE_WIDTH
    )
    port map (
        clk              => vga_pixel_clock,
        rst              => gen_reset_n,
        monitor_on       => vga_monitor_on,
        write_done       => vga_display_data,
        fifo_data_valid  => fifo_rd_data_valid,
        fifo_data        => fifo_pixel_rd_data,
        fifo_read_enable => fifo_pixel_rd_en,
        new_data_line    => vga_new_data_line,
        new_frame        => vga_new_frame,
        vga_error        => vga_error_sig,
        red              => vga_red,
        green            => vga_green,
        blue             => vga_blue,
        h_sync           => vga_hsync,
        v_sync           => vga_vsync
    );

    irq_vector(0) <= line_addr_err or cpu_display_error or ddr_read_error;
    irq_vector(1) <= new_line_irq_int;

    -- IRQ Sender Instantiation.
    irq_sender_inst : entity work.irq_sender
    generic map(
        G_RST_POLARITY  => C_VGA_RST_POLARITY,
        G_CPU_BUS_WIDTH => irq_vector'length,
        G_NUM_OF_IRQ    => irq_vector'length
    )
    port map(
        rst                   => gen_reset_n,
        clk                   => axi_slv_aclk,
        irq_int_modules       => irq_vector,
        irq_history_read_indc => irq_history_rd_indc,
        irq_history           => irq_history,
        irq                   => vga_sys_intr
    );

    -- Image address counter.
    debug_vector_procss : process(axi_slv_aclk, gen_reset_n)
    begin
        if gen_reset_n = C_VGA_RST_POLARITY then
            debug_vector <= (others => '0');
        elsif rising_edge(axi_slv_aclk) then
            if cpu_new_data_line = '1' then
                debug_vector(0) <= '1';
            end if;

            if line_addr_err = '1' then
                debug_vector(1) <= '1';
            end if;

            if cpu_display_error = '1' then
                debug_vector(2) <= '1';
            end if;

            if ddr_read_error = '1' then
                debug_vector(3) <= '1';
            end if;

            debug_vector(7 downto 4) <= sm_state;
        end if;
    end process;

    -- Sync and negate FIFO reset
    fifo_rst_sync_proc : process(axi_slv_aclk, gen_reset_n)
    begin
        if rising_edge(axi_slv_aclk) then
            sync_gen_reset <= not gen_reset_n;
        end if;
    end process;

    sync_new_data_line : entity work.pulse_synchronizer
    generic map(
        G_RST_POLARITY_A => C_VGA_RST_POLARITY,
        G_RST_POLARITY_B => C_VGA_RST_POLARITY
    )
    port map(
        clka      => vga_pixel_clock,
        clkb      => axi_slv_aclk,
        rsta      => gen_reset_n,
        rstb      => gen_reset_n,
        pulse_in  => vga_new_data_line,
        pulse_out => cpu_new_data_line
    );

    sync_new_frame : entity work.pulse_synchronizer
    generic map(
        G_RST_POLARITY_A => C_VGA_RST_POLARITY,
        G_RST_POLARITY_B => C_VGA_RST_POLARITY
    )
    port map(
        clka      => vga_pixel_clock,
        clkb      => axi_slv_aclk,
        rsta      => gen_reset_n,
        rstb      => gen_reset_n,
        pulse_in  => vga_new_frame,
        pulse_out => cpu_new_frame
    );

    sync_start_display : entity work.pulse_synchronizer
    generic map(
        G_RST_POLARITY_A => C_VGA_RST_POLARITY,
        G_RST_POLARITY_B => C_VGA_RST_POLARITY
    )
    port map(
        clka      => axi_slv_aclk,
        clkb      => vga_pixel_clock,
        rsta      => gen_reset_n,
        rstb      => gen_reset_n,
        pulse_in  => cpu_display_data,
        pulse_out => vga_display_data
    );

    sync_vga_error : entity work.pulse_synchronizer
    generic map(
        G_RST_POLARITY_A => C_VGA_RST_POLARITY,
        G_RST_POLARITY_B => C_VGA_RST_POLARITY
    )
    port map(
        clka      => vga_pixel_clock,
        clkb      => axi_slv_aclk,
        rsta      => gen_reset_n,
        rstb      => gen_reset_n,
        pulse_in  => vga_error_sig,
        pulse_out => cpu_display_error
    );

end vga_display_controller_arch;
