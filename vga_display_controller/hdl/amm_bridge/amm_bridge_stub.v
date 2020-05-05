// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue May  5 16:18:05 2020
// Host        : EF65AC789B8C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top amm_bridge -prefix
//               amm_bridge_ amm_bridge_stub.v
// Design      : amm_bridge
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "amm_axi_bridge_v1_0_4_top,Vivado 2018.3.1" *)
module amm_bridge(clk, aresetn, read_error, read_error_valid, 
  read_error_master_ID, avs_address_s0, avs_read_s0, avs_readdata_s0, avs_readdatavalid_s0, 
  avs_waitrequest_s0, avs_burstcount_s0, m_axi_araddr, m_axi_arlen, m_axi_arsize, 
  m_axi_arburst, m_axi_arprot, m_axi_arcache, m_axi_aruser, m_axi_arvalid, m_axi_arready, 
  m_axi_rdata, m_axi_rresp, m_axi_rlast, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="clk,aresetn,read_error,read_error_valid,read_error_master_ID[2:0],avs_address_s0[31:0],avs_read_s0,avs_readdata_s0[127:0],avs_readdatavalid_s0,avs_waitrequest_s0,avs_burstcount_s0[10:0],m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arcache[3:0],m_axi_aruser[3:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[127:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_rready" */;
  input clk;
  input aresetn;
  output read_error;
  output read_error_valid;
  output [2:0]read_error_master_ID;
  input [31:0]avs_address_s0;
  input avs_read_s0;
  output [127:0]avs_readdata_s0;
  output avs_readdatavalid_s0;
  output avs_waitrequest_s0;
  input [10:0]avs_burstcount_s0;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arcache;
  output [3:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
endmodule
