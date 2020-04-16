library ieee;
use ieee.std_logic_1164.all;

library xil_defaultlib;
use xil_defaultlib.amm_axi_bridge_v1_0_6_top;

entity amm_bridge is
    generic(
        G_ADDR_WIDTH         : integer;
        G_DATA_WIDTH         : integer;
        G_FAMILY             : string := "artix7"
    );
    port(
        clk                  : in std_logic;
        aresetn              : in std_logic;
        read_error           : out std_logic;
        read_error_valid     : out std_logic;
        read_error_master_ID : out std_logic_vector(2 downto 0);
        avs_address_s0       : in std_logic_vector(G_ADDR_WIDTH - 1 downto 0);
        avs_read_s0          : in std_logic;
        avs_readdata_s0      : out std_logic_vector(G_DATA_WIDTH - 1 downto 0);
        avs_readdatavalid_s0 : out std_logic;
        avs_waitrequest_s0   : out std_logic;
        avs_burstcount_s0    : in std_logic_vector(10 downto 0);
        m_axi_araddr         : out std_logic_vector(G_ADDR_WIDTH - 1 downto 0);
        m_axi_arlen          : out std_logic_vector(7 downto 0);
        m_axi_arsize         : out std_logic_vector(2 downto 0);
        m_axi_arburst        : out std_logic_vector(1 downto 0);
        m_axi_arprot         : out std_logic_vector(2 downto 0);
        m_axi_arcache        : out std_logic_vector(3 downto 0);
        m_axi_aruser         : out std_logic_vector(3 downto 0);
        m_axi_arvalid        : out std_logic;
        m_axi_arready        : in std_logic;
        m_axi_rdata          : in std_logic_vector(G_DATA_WIDTH - 1 downto 0);
        m_axi_rresp          : in std_logic_vector(1 downto 0);
        m_axi_rlast          : in std_logic;
        m_axi_rvalid         : in std_logic;
        m_axi_rready         : out std_logic
    );
end amm_bridge;

architecture rtl of amm_bridge is
    attribute X_INTERFACE_INFO                         : string;
    attribute X_INTERFACE_PARAMETER                    : string;
    attribute X_INTERFACE_PARAMETER of clk             : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET aresetn";
    attribute X_INTERFACE_INFO of clk                  : signal is "xilinx.com:signal:clock:1.0 clk CLK";
    attribute X_INTERFACE_PARAMETER of aresetn         : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW";
    attribute X_INTERFACE_INFO of aresetn              : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
    attribute X_INTERFACE_INFO of avs_address_s0       : signal is "xilinx.com:interface:avalon:1.0 Avalon_S0 ADDRESS";
    attribute X_INTERFACE_INFO of avs_read_s0          : signal is "xilinx.com:interface:avalon:1.0 Avalon_S0 READ";
    attribute X_INTERFACE_INFO of avs_readdata_s0      : signal is "xilinx.com:interface:avalon:1.0 Avalon_S0 READDATA";
    attribute X_INTERFACE_INFO of avs_readdatavalid_s0 : signal is "xilinx.com:interface:avalon:1.0 Avalon_S0 READDATAVALID";
    attribute X_INTERFACE_INFO of avs_waitrequest_s0   : signal is "xilinx.com:interface:avalon:1.0 Avalon_S0 WAITREQUEST";
    attribute X_INTERFACE_INFO of avs_burstcount_s0    : signal is "xilinx.com:interface:avalon:1.0 Avalon_S0 BURSTCOUNT";
    attribute X_INTERFACE_INFO of m_axi_araddr         : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
    attribute X_INTERFACE_INFO of m_axi_arlen          : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
    attribute X_INTERFACE_INFO of m_axi_arsize         : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
    attribute X_INTERFACE_INFO of m_axi_arburst        : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
    attribute X_INTERFACE_INFO of m_axi_arprot         : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
    attribute X_INTERFACE_INFO of m_axi_arcache        : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
    attribute X_INTERFACE_INFO of m_axi_aruser         : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARUSER";
    attribute X_INTERFACE_INFO of m_axi_arvalid        : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
    attribute X_INTERFACE_INFO of m_axi_arready        : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
    attribute X_INTERFACE_INFO of m_axi_rdata          : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
    attribute X_INTERFACE_INFO of m_axi_rresp          : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
    attribute X_INTERFACE_INFO of m_axi_rlast          : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
    attribute X_INTERFACE_INFO of m_axi_rvalid         : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
    attribute X_INTERFACE_INFO of m_axi_rready         : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";

    component amm_axi_bridge_v1_0_6_top is
    generic(
        C_FAMILY              : string;
        C_AVA_ADDR_WIDTH      : integer;
        C_M_AXI_ADDR_WIDTH    : integer;
        C_NUM_MASTERS         : integer;
        C_AVA_DATA_WIDTH      : integer;
        C_AVA_BURSTCOUNTWIDTH : integer;
        C_MODE                : integer;
        C_ENABLE_PIPELINE     : integer;
        C_AVA_BYTEENABLES     : integer
    );
    port(
        clk : in std_logic;
        aresetn : in std_logic;
        write_error : out std_logic;
        write_error_valid : out std_logic;
        write_error_master_ID : out std_logic_vector(2 downto 0);
        read_error : out std_logic;
        read_error_valid : out std_logic;
        read_error_master_ID : out std_logic_vector(2 downto 0);
        avs_address_s0 : in std_logic_vector(C_AVA_ADDR_WIDTH-1 downto 0);
        avs_read_s0 : in std_logic;
        avs_write_s0 : in std_logic;
        avs_writedata_s0 : in std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdata_s0 : out std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdatavalid_s0 : out std_logic;
        avs_waitrequest_s0 : out std_logic;
        avs_byteenable_s0 : in std_logic_vector((C_AVA_DATA_WIDTH/8)-1 downto 0);
        avs_burstcount_s0 : in std_logic_vector((C_AVA_BURSTCOUNTWIDTH)- 1 downto 0);
        avs_address_s1 : in std_logic_vector(C_AVA_ADDR_WIDTH-1 downto 0);
        avs_read_s1 : in std_logic;
        avs_write_s1 : in std_logic;
        avs_writedata_s1 : in std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdata_s1 : out std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdatavalid_s1 : out std_logic;
        avs_waitrequest_s1 : out std_logic;
        avs_byteenable_s1 : in std_logic_vector((C_AVA_DATA_WIDTH/8)-1 downto 0);
        avs_burstcount_s1 : in std_logic_vector((C_AVA_BURSTCOUNTWIDTH)- 1 downto 0);
        avs_address_s2 : in std_logic_vector(C_AVA_ADDR_WIDTH-1 downto 0);
        avs_read_s2 : in std_logic;
        avs_write_s2 : in std_logic;
        avs_writedata_s2 : in std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdata_s2 : out std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdatavalid_s2 : out std_logic;
        avs_waitrequest_s2 : out std_logic;
        avs_byteenable_s2 : in std_logic_vector((C_AVA_DATA_WIDTH/8)-1 downto 0);
        avs_burstcount_s2 : in std_logic_vector((C_AVA_BURSTCOUNTWIDTH)- 1 downto 0);
        avs_address_s3 : in std_logic_vector(C_AVA_ADDR_WIDTH-1 downto 0);
        avs_read_s3 : in std_logic;
        avs_write_s3 : in std_logic;
        avs_writedata_s3 : in std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdata_s3 : out std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdatavalid_s3 : out std_logic;
        avs_waitrequest_s3 : out std_logic;
        avs_byteenable_s3 : in std_logic_vector((C_AVA_DATA_WIDTH/8)-1 downto 0);
        avs_burstcount_s3 : in std_logic_vector((C_AVA_BURSTCOUNTWIDTH)- 1 downto 0);
        avs_address_s4 : in std_logic_vector(C_AVA_ADDR_WIDTH-1 downto 0);
        avs_read_s4 : in std_logic;
        avs_write_s4 : in std_logic;
        avs_writedata_s4 : in std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdata_s4 : out std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdatavalid_s4 : out std_logic;
        avs_waitrequest_s4 : out std_logic;
        avs_byteenable_s4 : in std_logic_vector((C_AVA_DATA_WIDTH/8)-1 downto 0);
        avs_burstcount_s4 : in std_logic_vector((C_AVA_BURSTCOUNTWIDTH)- 1 downto 0);
        avs_address_s5 : in std_logic_vector(C_AVA_ADDR_WIDTH-1 downto 0);
        avs_read_s5 : in std_logic;
        avs_write_s5 : in std_logic;
        avs_writedata_s5 : in std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdata_s5 : out std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdatavalid_s5 : out std_logic;
        avs_waitrequest_s5 : out std_logic;
        avs_byteenable_s5 : in std_logic_vector((C_AVA_DATA_WIDTH/8)-1 downto 0);
        avs_burstcount_s5 : in std_logic_vector((C_AVA_BURSTCOUNTWIDTH)- 1 downto 0);
        avs_address_s6 : in std_logic_vector(C_AVA_ADDR_WIDTH-1 downto 0);
        avs_read_s6 : in std_logic;
        avs_write_s6 : in std_logic;
        avs_writedata_s6 : in std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdata_s6 : out std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdatavalid_s6 : out std_logic;
        avs_waitrequest_s6 : out std_logic;
        avs_byteenable_s6 : in std_logic_vector((C_AVA_DATA_WIDTH/8)-1 downto 0);
        avs_burstcount_s6 : in std_logic_vector((C_AVA_BURSTCOUNTWIDTH)- 1 downto 0);
        avs_address_s7 : in std_logic_vector(C_AVA_ADDR_WIDTH-1 downto 0);
        avs_read_s7 : in std_logic;
        avs_write_s7 : in std_logic;
        avs_writedata_s7 : in std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdata_s7 : out std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        avs_readdatavalid_s7 : out std_logic;
        avs_waitrequest_s7 : out std_logic;
        avs_byteenable_s7 : in std_logic_vector((C_AVA_DATA_WIDTH/8)-1 downto 0);
        avs_burstcount_s7 : in std_logic_vector((C_AVA_BURSTCOUNTWIDTH)- 1 downto 0);
        m_axi_araddr : out std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        m_axi_arlen : out std_logic_vector(7 downto 0);
        m_axi_arsize : out std_logic_vector(2 downto 0);
        m_axi_arburst : out std_logic_vector(1 downto 0);
        m_axi_arprot : out std_logic_vector(2 downto 0);
        m_axi_arcache : out std_logic_vector(3 downto 0);
        m_axi_aruser : out std_logic_vector(3 downto 0);
        m_axi_arvalid : out std_logic;
        m_axi_arready : in std_logic;
        m_axi_rdata : in std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        m_axi_rresp : in std_logic_vector(1 downto 0);
        m_axi_rlast : in std_logic;
        m_axi_rvalid : in std_logic;
        m_axi_rready : out std_logic;
        m_axi_awaddr : out std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        m_axi_awlen : out std_logic_vector(7 downto 0);
        m_axi_awsize : out std_logic_vector(2 downto 0);
        m_axi_awburst : out std_logic_vector(1 downto 0);
        m_axi_awprot : out std_logic_vector(2 downto 0);
        m_axi_awcache : out std_logic_vector(3 downto 0);
        m_axi_awuser : out std_logic_vector(3 downto 0);
        m_axi_awvalid : out std_logic;
        m_axi_awready : in std_logic;
        m_axi_wdata : out std_logic_vector(C_AVA_DATA_WIDTH-1 downto 0);
        m_axi_wstrb : out std_logic_vector((C_AVA_DATA_WIDTH/8)-1 downto 0);
        m_axi_wlast : out std_logic;
        m_axi_wvalid : out std_logic;
        m_axi_wready : in std_logic;
        m_axi_bresp : in std_logic_vector(1 downto 0);
        m_axi_bvalid : in std_logic;
        m_axi_bready : out std_logic
    );
    end component;
begin
    inst : amm_axi_bridge_v1_0_6_top
    generic map(
        C_AVA_ADDR_WIDTH => G_ADDR_WIDTH,
        C_M_AXI_ADDR_WIDTH => G_ADDR_WIDTH,
        C_NUM_MASTERS => 1,
        C_AVA_DATA_WIDTH => G_DATA_WIDTH,
        C_AVA_BURSTCOUNTWIDTH => 11,
        C_MODE => 0,
        C_ENABLE_PIPELINE => 0,
        C_AVA_BYTEENABLES => 0,
        C_FAMILY => G_FAMILY
    )
    port map(
        clk => clk,
        aresetn => aresetn,
        write_error => open,
        write_error_valid => open,
        write_error_master_ID => open,
        read_error => read_error,
        read_error_valid => read_error_valid,
        read_error_master_ID => read_error_master_ID,
        avs_address_s0 => avs_address_s0,
        avs_read_s0 => avs_read_s0,
        avs_write_s0 => '0',
        avs_writedata_s0 => (others => '0'),
        avs_readdata_s0 => avs_readdata_s0,
        avs_readdatavalid_s0 => avs_readdatavalid_s0,
        avs_waitrequest_s0 => avs_waitrequest_s0,
        avs_byteenable_s0 => (others => '0'),
        avs_burstcount_s0 => avs_burstcount_s0,
        avs_address_s1 => (others => '0'),
        avs_read_s1 => '0',
        avs_write_s1 => '0',
        avs_writedata_s1 => (others => '0'),
        avs_readdata_s1 => open,
        avs_readdatavalid_s1 => open,
        avs_waitrequest_s1 => open,
        avs_byteenable_s1 => (others => '0'),
        avs_burstcount_s1 => (others => '0'),
        avs_address_s2 => (others => '0'),
        avs_read_s2 => '0',
        avs_write_s2 => '0',
        avs_writedata_s2 => (others => '0'),
        avs_readdata_s2 => open,
        avs_readdatavalid_s2 => open,
        avs_waitrequest_s2 => open,
        avs_byteenable_s2 => (others => '0'),
        avs_burstcount_s2 => (others => '0'),
        avs_address_s3 => (others => '0'),
        avs_read_s3 => '0',
        avs_write_s3 => '0',
        avs_writedata_s3 => (others => '0'),
        avs_readdata_s3 => open,
        avs_readdatavalid_s3 => open,
        avs_waitrequest_s3 => open,
        avs_byteenable_s3 => (others => '0'),
        avs_burstcount_s3 => (others => '0'),
        avs_address_s4 => (others => '0'),
        avs_read_s4 => '0',
        avs_write_s4 => '0',
        avs_writedata_s4 => (others => '0'),
        avs_readdata_s4 => open,
        avs_readdatavalid_s4 => open,
        avs_waitrequest_s4 => open,
        avs_byteenable_s4 => (others => '0'),
        avs_burstcount_s4 => (others => '0'),
        avs_address_s5 => (others => '0'),
        avs_read_s5 => '0',
        avs_write_s5 => '0',
        avs_writedata_s5 => (others => '0'),
        avs_readdata_s5 => open,
        avs_readdatavalid_s5 => open,
        avs_waitrequest_s5 => open,
        avs_byteenable_s5 => (others => '0'),
        avs_burstcount_s5 => (others => '0'),
        avs_address_s6 => (others => '0'),
        avs_read_s6 => '0',
        avs_write_s6 => '0',
        avs_writedata_s6 => (others => '0'),
        avs_readdata_s6 => open,
        avs_readdatavalid_s6 => open,
        avs_waitrequest_s6 => open,
        avs_byteenable_s6 => (others => '0'),
        avs_burstcount_s6 => (others => '0'),
        avs_address_s7 => (others => '0'),
        avs_read_s7 => '0',
        avs_write_s7 => '0',
        avs_writedata_s7 => (others => '0'),
        avs_readdata_s7 => open,
        avs_readdatavalid_s7 => open,
        avs_waitrequest_s7 => open,
        avs_byteenable_s7 => (others => '0'),
        avs_burstcount_s7 => (others => '0'),
        m_axi_araddr => m_axi_araddr,
        m_axi_arlen => m_axi_arlen,
        m_axi_arsize => m_axi_arsize,
        m_axi_arburst => m_axi_arburst,
        m_axi_arprot => m_axi_arprot,
        m_axi_arcache => m_axi_arcache,
        m_axi_aruser => m_axi_aruser,
        m_axi_arvalid => m_axi_arvalid,
        m_axi_arready => m_axi_arready,
        m_axi_rdata => m_axi_rdata,
        m_axi_rresp => m_axi_rresp,
        m_axi_rlast => m_axi_rlast,
        m_axi_rvalid => m_axi_rvalid,
        m_axi_rready => m_axi_rready,
        m_axi_awaddr => open,
        m_axi_awlen => open,
        m_axi_awsize => open,
        m_axi_awburst => open,
        m_axi_awprot => open,
        m_axi_awcache => open,
        m_axi_awuser => open,
        m_axi_awvalid => open,
        m_axi_awready => '0',
        m_axi_wdata => open,
        m_axi_wstrb => open,
        m_axi_wlast => open,
        m_axi_wvalid => open,
        m_axi_wready => '0',
        m_axi_bresp => (others => '0'),
        m_axi_bvalid => '0',
        m_axi_bready => open
    );
end;