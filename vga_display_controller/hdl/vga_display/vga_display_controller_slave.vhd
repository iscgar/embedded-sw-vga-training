library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_package.all;

entity vga_display_controller_slave is
    generic (
        -- Width of S_AXI data bus
        C_S_AXI_DATA_WIDTH    : integer := C_SLV_DWIDTH;
        -- Width of S_AXI address bus
        C_S_AXI_ADDR_WIDTH    : integer := C_SLV_AWIDTH
    );
    port (
        -- Output VGA Signals
        vga_line_address      : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
        monitor_on            : out std_logic;
        vga_display_rst       : out std_logic;
        start_display         : out std_logic;
        new_line_from_cpu     : out std_logic;

        -- Input VGA Signals
        vga_status            : in std_logic_vector(3 downto 0);
        debug_vector          : in std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);

        -- IRQ Sender Signals
        irq_history           : in std_logic_vector(15 downto 0);
        irq_history_rd_indc   : out std_logic;

        -- Global Clock Signal
        S_AXI_ACLK            : in std_logic;
        -- Global Reset Signal. This Signal is Active LOW
        S_AXI_ARESETN         : in std_logic;
        -- Write address (issued by master, acceped by Slave)
        S_AXI_AWADDR          : in std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
        -- Write channel Protection type. This signal indicates the
            -- privilege and security level of the transaction, and whether
            -- the transaction is a data access or an instruction access.
        S_AXI_AWPROT          : in std_logic_vector(2 downto 0);
        -- Write address valid. This signal indicates that the master signaling
            -- valid write address and control information.
        S_AXI_AWVALID         : in std_logic;
        -- Write address ready. This signal indicates that the slave is ready
            -- to accept an address and associated control signals.
        S_AXI_AWREADY         : out std_logic;
        -- Write data (issued by master, acceped by Slave)
        S_AXI_WDATA           : in std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
        -- Write strobes. This signal indicates which byte lanes hold
            -- valid data. There is one write strobe bit for each eight
            -- bits of the write data bus.
        S_AXI_WSTRB           : in std_logic_vector((C_S_AXI_DATA_WIDTH / 8) - 1 downto 0);
        -- Write valid. This signal indicates that valid write
            -- data and strobes are available.
        S_AXI_WVALID          : in std_logic;
        -- Write ready. This signal indicates that the slave
            -- can accept the write data.
        S_AXI_WREADY          : out std_logic;
        -- Write response. This signal indicates the status
            -- of the write transaction.
        S_AXI_BRESP           : out std_logic_vector(1 downto 0);
        -- Write response valid. This signal indicates that the channel
            -- is signaling a valid write response.
        S_AXI_BVALID          : out std_logic;
        -- Response ready. This signal indicates that the master
            -- can accept a write response.
        S_AXI_BREADY          : in std_logic;
        -- Read address (issued by master, acceped by Slave)
        S_AXI_ARADDR          : in std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
        -- Protection type. This signal indicates the privilege
            -- and security level of the transaction, and whether the
            -- transaction is a data access or an instruction access.
        S_AXI_ARPROT          : in std_logic_vector(2 downto 0);
        -- Read address valid. This signal indicates that the channel
            -- is signaling valid read address and control information.
        S_AXI_ARVALID         : in std_logic;
        -- Read address ready. This signal indicates that the slave is
            -- ready to accept an address and associated control signals.
        S_AXI_ARREADY         : out std_logic;
        -- Read data (issued by slave)
        S_AXI_RDATA           : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
        -- Read response. This signal indicates the status of the
            -- read transfer.
        S_AXI_RRESP           : out std_logic_vector(1 downto 0);
        -- Read valid. This signal indicates that the channel is
            -- signaling the required read data.
        S_AXI_RVALID          : out std_logic;
        -- Read ready. This signal indicates that the master can
            -- accept the read data and response information.
        S_AXI_RREADY          : in std_logic
    );
end;

architecture arch_imp of vga_display_controller_slave is
    signal monitor_on_int    : std_logic;
    signal vga_rst_int       : std_logic;

    signal vga_line_addr_reg : std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);

    -- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    -- ADDR_LSB is used for addressing 32/64 bit registers/memories
    -- ADDR_LSB = 2 for 32 bits (n downto 2)
    -- ADDR_LSB = 3 for 64 bits (n downto 3)
    constant ADDR_LSB          : integer := (C_S_AXI_DATA_WIDTH / 32) + 1;
    constant OPT_MEM_ADDR_BITS : integer := 2;

    -- Read processing signls
    signal axi_arready         : std_logic := '0';
    signal axi_rdata           : std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
    signal axi_rvalid          : std_logic := '0';

    signal valid_read_request  : std_logic;
    signal read_response_stall : std_logic;
    signal pre_raddr           : std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
    signal rd_addr             : std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);

    -- Write processing signls
    signal axi_awready          : std_logic := '1';
    signal axi_wready           : std_logic := '1';
    signal axi_bvalid           : std_logic := '0';

    signal pre_waddr            : std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
    signal waddr                : std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
    signal pre_wdata            : std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
    signal wdata                : std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
    signal pre_wstrb            : std_logic_vector((C_S_AXI_DATA_WIDTH / 8) - 1 downto 0);
    signal wstrb                : std_logic_vector((C_S_AXI_DATA_WIDTH / 8) - 1 downto 0);

    signal valid_write_address  : std_logic;
    signal valid_write_data     : std_logic;
    signal write_response_stall : std_logic;
begin

    S_AXI_AWREADY <= axi_awready;
    S_AXI_WREADY <= axi_wready;
    S_AXI_BRESP <= b"00"; -- The OKAY response
    S_AXI_BVALID <= axi_bvalid;
    S_AXI_ARREADY <= axi_arready;
    S_AXI_RDATA <= axi_rdata;
    S_AXI_RRESP <= b"00"; -- The OKAY response
    S_AXI_RVALID <= axi_rvalid;

    -- VGA Ctrl Signal Connections
    monitor_on <= monitor_on_int;
    vga_display_rst <= vga_rst_int;

    -- VGA Line Address Connection
    vga_line_address <= vga_line_addr_reg;

    --------------------------------------
    -- Read processing
    --------------------------------------
    valid_read_request <= S_AXI_ARVALID or not axi_arready;
    read_response_stall <= axi_rvalid and not S_AXI_RREADY;

    -- The read response channel valid signal
    process (S_AXI_ACLK, S_AXI_ARESETN, read_response_stall, valid_read_request)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_rvalid <= '0';
            elsif read_response_stall = '1' then
                -- Need to stay valid as long as the return path is stalled
                axi_rvalid <= '1';
            elsif valid_read_request = '1' then
                axi_rvalid <= '1';
            else
                -- Any stall has cleared, so we can always
                -- clear the valid signal in this case
                axi_rvalid <= '0';
            end if;
        end if;
    end process;

    -- Buffer the address
    process (S_AXI_ACLK, axi_arready)
    begin
        if rising_edge(S_AXI_ACLK) then
            if axi_arready = '1' then
                pre_raddr <= S_AXI_ARADDR;
            end if;
        end if;
    end process;

    rd_addr <= pre_raddr when axi_arready = '0' else S_AXI_ARADDR;

    -- Read the data
    process (S_AXI_ACLK, read_response_stall, valid_read_request, rd_addr)
        variable loc_addr : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
    begin
        if rising_edge(S_AXI_ACLK) then
            irq_history_rd_indc <= '0';

            if read_response_stall = '0' and valid_read_request = '1' then
                -- If the outgoing channel is not stalled (above)
                -- then read
                loc_addr := rd_addr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
                axi_rdata <= (others => '0');

                case loc_addr is
                    when b"000" =>
                        axi_rdata(7 downto 0) <= vga_status & "00" & vga_rst_int & monitor_on_int;

                    when b"001" =>
                        axi_rdata <= vga_line_addr_reg;

                    when b"010" =>
                        axi_rdata(15 downto 0) <= irq_history;
                        irq_history_rd_indc <= '1';

                    when b"011" =>
                        axi_rdata <= debug_vector;

                    when b"100" =>
                        axi_rdata <= std_logic_vector(to_unsigned(C_VGA_HORIZONTAL_VISIBLE_AREA, axi_rdata'length));

                    when b"101" =>
                        axi_rdata <= std_logic_vector(to_unsigned(C_VGA_VERTICAL_VISIBLE_AREA, axi_rdata'length));

                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process;

    -- The read address channel ready signal
    process (S_AXI_ACLK, S_AXI_ARESETN, read_response_stall)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_arready <= '1';
            elsif read_response_stall = '1' then
                -- Outgoing channel is stalled
                --    As long as something is already in the buffer,
                --    axi_arready needs to stay low
                axi_arready <= not valid_read_request;
            else
                axi_arready <= '1';
            end if;
        end if;
    end process;

    --------------------------------------
    -- Write processing
    --------------------------------------
    valid_write_address <= S_AXI_AWVALID or not axi_awready;
    valid_write_data <= S_AXI_WVALID or not axi_wready;
    write_response_stall <= axi_bvalid and not S_AXI_BREADY;

    -- The write address channel ready signal
    process (S_AXI_ACLK, S_AXI_ARESETN, write_response_stall, valid_write_data)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_awready <= '1';
            elsif write_response_stall = '1' then
                -- The output channel is stalled
                --  If our buffer is full, we need to remain stalled
                --  Likewise if it is empty, and there's a request,
                --    we'll need to stall.
                axi_awready <= not valid_write_address;
            elsif valid_write_data = '1' then
                -- The output channel is clear, and write data
                -- are available
                axi_awready <= '1';
            else
                -- If we were ready before, then remain ready unless an
                -- address unaccompanied by data shows up
                axi_awready <= axi_awready and not S_AXI_AWVALID;
                -- This is equivalent to
                -- axi_awready <= not valid_write_address
            end if;
        end if;
    end process;

    -- The write data channel ready signal
    process (S_AXI_ACLK, S_AXI_ARESETN, write_response_stall, valid_write_address)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_wready <= '1';
            elsif write_response_stall = '1' then
                -- The output channel is stalled
                --  We can remain ready until valid
                --  write data shows up
                axi_wready <= not valid_write_data;
            elsif valid_write_address = '1' then
                -- The output channel is clear, and a write address
                -- is available
                axi_wready <= '1';
            else
                -- if we were ready before, and there's no new data avaialble
                -- to cause us to stall, remain ready
                axi_wready <= axi_wready and not S_AXI_WVALID;
                -- This is equivalent to
                -- axi_wready <= !valid_write_data
            end if;
        end if;
    end process;

    -- Buffer the address
    process (S_AXI_ACLK, axi_awready)
    begin
        if rising_edge(S_AXI_ACLK) then
            if axi_awready = '1' then
                pre_waddr <= S_AXI_AWADDR;
            end if;
        end if;
    end process;

    -- Buffer the data
    process (S_AXI_ACLK, axi_wready)
    begin
        if rising_edge(S_AXI_ACLK) then
            if axi_wready = '1' then
                pre_wdata <= S_AXI_WDATA;
                pre_wstrb <= S_AXI_WSTRB;
            end if;
        end if;
    end process;

    -- Read the write address from our "buffer"
    waddr <= pre_waddr when axi_awready = '0' else S_AXI_AWADDR;

    -- Read the write data from our "buffer"
    wstrb <= pre_wstrb when axi_wready = '0' else S_AXI_WSTRB;
    wdata <= pre_wdata when axi_wready = '0' else S_AXI_WDATA;

    -- Actually (finally) write the data
    process (S_AXI_ACLK, S_AXI_ARESETN, write_response_stall, valid_write_address, valid_write_data, waddr)
        variable loc_addr : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                monitor_on_int <= '1';
                vga_rst_int <= '0';
                start_display <= '0';
                new_line_from_cpu <= '0';
                vga_line_addr_reg <= (others => '0');
            else
                new_line_from_cpu <= '0';
                start_display <= '0';

                -- If the output channel isn't stalled, and
                -- If we have a valid address, and
                -- If we have valid data
                if not write_response_stall = '1' and valid_write_address = '1' and valid_write_data = '1' then
                    loc_addr := waddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
                    case loc_addr is
                        when b"000" =>
                            if wstrb(0) = '1' then
                                monitor_on_int <= wdata(0);
                                vga_rst_int <= wdata(1);
                                start_display <= wdata(2);
                                new_line_from_cpu <= wdata(3);
                            end if;

                        when b"001" =>
                            vga_line_addr_reg <= (others => '0');

                            if wstrb(0) = '1' then
                                vga_line_addr_reg(7 downto 0) <= wdata(7 downto 0);
                            end if;

                            if wstrb(1) = '1' then
                                vga_line_addr_reg(15 downto 8) <= wdata(15 downto 8);
                            end if;

                            if wstrb(2) = '1' then
                                vga_line_addr_reg(23 downto 16) <= wdata(23 downto 16);
                            end if;

                            if wstrb(3) = '1' then
                                vga_line_addr_reg(31 downto 24) <= wdata(31 downto 24);
                            end if;

                        when others =>
                            null;
                    end case;
                end if;
            end if;
        end if;
    end process;

    -- The write response channel valid signal
    process (S_AXI_ACLK, S_AXI_ARESETN, S_AXI_BREADY, valid_write_address, valid_write_data)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_bvalid <= '0';
            -- The outgoing response channel should indicate a valid write if ...
            -- 1. We have a valid address, and
            -- 2. We had valid data
            elsif valid_write_address = '1' and valid_write_data = '1' then
                -- It doesn't matter here if we are stalled or not
                -- We can keep setting ready as often as we want
                axi_bvalid <= '1';
            elsif S_AXI_BREADY = '1' then
                -- Otherwise, if BREADY was true, then it was just accepted
                -- and can return to idle now
                axi_bvalid <= '0';
            end if;
        end if;
    end process;

end arch_imp;
