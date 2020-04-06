--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
--Date        : Tue Apr  7 12:57:31 2020
--Host        : igershon-x280-4013 running 64-bit Ubuntu 19.10
--Command     : generate_target vga_mb_system_wrapper.bd
--Design      : vga_mb_system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vga_mb_system_wrapper is
  port (
    ddr2_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ddr2_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr2_cas_n : out STD_LOGIC;
    ddr2_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr2_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_ras_n : out STD_LOGIC;
    ddr2_we_n : out STD_LOGIC;
    dip_switches_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    eth_mdio_mdc : out STD_LOGIC;
    eth_mdio_mdio_io : inout STD_LOGIC;
    eth_phy_crs_dv : in STD_LOGIC;
    eth_phy_refclk : out STD_LOGIC;
    eth_phy_rx_er : in STD_LOGIC;
    eth_phy_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_phy_tx_en : out STD_LOGIC;
    eth_phy_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_rstn : out STD_LOGIC_VECTOR ( 0 to 0 );
    leds_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    push_btns_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qspi_io0_io : inout STD_LOGIC;
    qspi_io1_io : inout STD_LOGIC;
    qspi_io2_io : inout STD_LOGIC;
    qspi_io3_io : inout STD_LOGIC;
    qspi_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    rgb_leds_tri_o : out STD_LOGIC_VECTOR ( 5 downto 0 );
    seven_seg_an_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seven_seg_disp_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sys_clock : in STD_LOGIC;
    sys_reset : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_h_sync : out STD_LOGIC;
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_v_sync : out STD_LOGIC
  );
end vga_mb_system_wrapper;

architecture STRUCTURE of vga_mb_system_wrapper is
  component vga_mb_system is
  port (
    sys_reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_h_sync : out STD_LOGIC;
    vga_v_sync : out STD_LOGIC;
    rgb_leds_tri_o : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ddr2_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr2_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ddr2_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr2_ras_n : out STD_LOGIC;
    ddr2_cas_n : out STD_LOGIC;
    ddr2_we_n : out STD_LOGIC;
    ddr2_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    qspi_io0_i : in STD_LOGIC;
    qspi_io0_o : out STD_LOGIC;
    qspi_io0_t : out STD_LOGIC;
    qspi_io1_i : in STD_LOGIC;
    qspi_io1_o : out STD_LOGIC;
    qspi_io1_t : out STD_LOGIC;
    qspi_io2_i : in STD_LOGIC;
    qspi_io2_o : out STD_LOGIC;
    qspi_io2_t : out STD_LOGIC;
    qspi_io3_i : in STD_LOGIC;
    qspi_io3_o : out STD_LOGIC;
    qspi_io3_t : out STD_LOGIC;
    qspi_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    qspi_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    qspi_ss_t : out STD_LOGIC;
    push_btns_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    seven_seg_disp_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    leds_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dip_switches_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    seven_seg_an_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    eth_phy_crs_dv : in STD_LOGIC;
    eth_phy_rx_er : in STD_LOGIC;
    eth_phy_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_phy_tx_en : out STD_LOGIC;
    eth_phy_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_mdio_mdc : out STD_LOGIC;
    eth_mdio_mdio_i : in STD_LOGIC;
    eth_mdio_mdio_o : out STD_LOGIC;
    eth_mdio_mdio_t : out STD_LOGIC;
    eth_phy_refclk : out STD_LOGIC;
    eth_rstn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component vga_mb_system;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal eth_mdio_mdio_i : STD_LOGIC;
  signal eth_mdio_mdio_o : STD_LOGIC;
  signal eth_mdio_mdio_t : STD_LOGIC;
  signal qspi_io0_i : STD_LOGIC;
  signal qspi_io0_o : STD_LOGIC;
  signal qspi_io0_t : STD_LOGIC;
  signal qspi_io1_i : STD_LOGIC;
  signal qspi_io1_o : STD_LOGIC;
  signal qspi_io1_t : STD_LOGIC;
  signal qspi_io2_i : STD_LOGIC;
  signal qspi_io2_o : STD_LOGIC;
  signal qspi_io2_t : STD_LOGIC;
  signal qspi_io3_i : STD_LOGIC;
  signal qspi_io3_o : STD_LOGIC;
  signal qspi_io3_t : STD_LOGIC;
  signal qspi_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal qspi_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal qspi_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal qspi_ss_t : STD_LOGIC;
  
  signal int_seven_seg_an_tri_o : std_logic_vector(7 downto 0);
  signal int_seven_seg_disp_tri_o : std_logic_vector(7 downto 0);
begin
  seven_seg_an_tri_o <= not int_seven_seg_an_tri_o;
  seven_seg_disp_tri_o <= not int_seven_seg_disp_tri_o;

eth_mdio_mdio_iobuf: component IOBUF
     port map (
      I => eth_mdio_mdio_o,
      IO => eth_mdio_mdio_io,
      O => eth_mdio_mdio_i,
      T => eth_mdio_mdio_t
    );
qspi_io0_iobuf: component IOBUF
     port map (
      I => qspi_io0_o,
      IO => qspi_io0_io,
      O => qspi_io0_i,
      T => qspi_io0_t
    );
qspi_io1_iobuf: component IOBUF
     port map (
      I => qspi_io1_o,
      IO => qspi_io1_io,
      O => qspi_io1_i,
      T => qspi_io1_t
    );
qspi_io2_iobuf: component IOBUF
     port map (
      I => qspi_io2_o,
      IO => qspi_io2_io,
      O => qspi_io2_i,
      T => qspi_io2_t
    );
qspi_io3_iobuf: component IOBUF
     port map (
      I => qspi_io3_o,
      IO => qspi_io3_io,
      O => qspi_io3_i,
      T => qspi_io3_t
    );
qspi_ss_iobuf_0: component IOBUF
     port map (
      I => qspi_ss_o_0(0),
      IO => qspi_ss_io(0),
      O => qspi_ss_i_0(0),
      T => qspi_ss_t
    );
vga_mb_system_i: component vga_mb_system
     port map (
      ddr2_addr(12 downto 0) => ddr2_addr(12 downto 0),
      ddr2_ba(2 downto 0) => ddr2_ba(2 downto 0),
      ddr2_cas_n => ddr2_cas_n,
      ddr2_ck_n(0) => ddr2_ck_n(0),
      ddr2_ck_p(0) => ddr2_ck_p(0),
      ddr2_cke(0) => ddr2_cke(0),
      ddr2_cs_n(0) => ddr2_cs_n(0),
      ddr2_dm(1 downto 0) => ddr2_dm(1 downto 0),
      ddr2_dq(15 downto 0) => ddr2_dq(15 downto 0),
      ddr2_dqs_n(1 downto 0) => ddr2_dqs_n(1 downto 0),
      ddr2_dqs_p(1 downto 0) => ddr2_dqs_p(1 downto 0),
      ddr2_odt(0) => ddr2_odt(0),
      ddr2_ras_n => ddr2_ras_n,
      ddr2_we_n => ddr2_we_n,
      dip_switches_tri_i(15 downto 0) => dip_switches_tri_i(15 downto 0),
      eth_mdio_mdc => eth_mdio_mdc,
      eth_mdio_mdio_i => eth_mdio_mdio_i,
      eth_mdio_mdio_o => eth_mdio_mdio_o,
      eth_mdio_mdio_t => eth_mdio_mdio_t,
      eth_phy_crs_dv => eth_phy_crs_dv,
      eth_phy_refclk => eth_phy_refclk,
      eth_phy_rx_er => eth_phy_rx_er,
      eth_phy_rxd(1 downto 0) => eth_phy_rxd(1 downto 0),
      eth_phy_tx_en => eth_phy_tx_en,
      eth_phy_txd(1 downto 0) => eth_phy_txd(1 downto 0),
      eth_rstn(0) => eth_rstn(0),
      leds_tri_o(15 downto 0) => leds_tri_o(15 downto 0),
      push_btns_tri_i(4 downto 0) => push_btns_tri_i(4 downto 0),
      qspi_io0_i => qspi_io0_i,
      qspi_io0_o => qspi_io0_o,
      qspi_io0_t => qspi_io0_t,
      qspi_io1_i => qspi_io1_i,
      qspi_io1_o => qspi_io1_o,
      qspi_io1_t => qspi_io1_t,
      qspi_io2_i => qspi_io2_i,
      qspi_io2_o => qspi_io2_o,
      qspi_io2_t => qspi_io2_t,
      qspi_io3_i => qspi_io3_i,
      qspi_io3_o => qspi_io3_o,
      qspi_io3_t => qspi_io3_t,
      qspi_ss_i(0) => qspi_ss_i_0(0),
      qspi_ss_o(0) => qspi_ss_o_0(0),
      qspi_ss_t => qspi_ss_t,
      rgb_leds_tri_o(5 downto 0) => rgb_leds_tri_o(5 downto 0),
      seven_seg_an_tri_o(7 downto 0) => int_seven_seg_an_tri_o(7 downto 0),
      seven_seg_disp_tri_o(7 downto 0) => int_seven_seg_disp_tri_o(7 downto 0),
      sys_clock => sys_clock,
      sys_reset => sys_reset,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd,
      vga_blue(3 downto 0) => vga_blue(3 downto 0),
      vga_green(3 downto 0) => vga_green(3 downto 0),
      vga_h_sync => vga_h_sync,
      vga_red(3 downto 0) => vga_red(3 downto 0),
      vga_v_sync => vga_v_sync
    );
end STRUCTURE;
