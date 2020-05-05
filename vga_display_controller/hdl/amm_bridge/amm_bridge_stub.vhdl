-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Tue May  5 16:18:05 2020
-- Host        : EF65AC789B8C running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top amm_bridge -prefix
--               amm_bridge_ amm_bridge_stub.vhdl
-- Design      : amm_bridge
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity amm_bridge is
  Port ( 
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    read_error : out STD_LOGIC;
    read_error_valid : out STD_LOGIC;
    read_error_master_ID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    avs_address_s0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avs_read_s0 : in STD_LOGIC;
    avs_readdata_s0 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    avs_readdatavalid_s0 : out STD_LOGIC;
    avs_waitrequest_s0 : out STD_LOGIC;
    avs_burstcount_s0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );

end amm_bridge;

architecture stub of amm_bridge is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,aresetn,read_error,read_error_valid,read_error_master_ID[2:0],avs_address_s0[31:0],avs_read_s0,avs_readdata_s0[127:0],avs_readdatavalid_s0,avs_waitrequest_s0,avs_burstcount_s0[10:0],m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arcache[3:0],m_axi_aruser[3:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[127:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "amm_axi_bridge_v1_0_4_top,Vivado 2018.3.1";
begin
end;
