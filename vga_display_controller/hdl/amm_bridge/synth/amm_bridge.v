// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:amm_axi_bridge:1.0
// IP Revision: 4

(* X_CORE_INFO = "amm_axi_bridge_v1_0_4_top,Vivado 2018.3.1" *)
(* CHECK_LICENSE_TYPE = "amm_bridge,amm_axi_bridge_v1_0_4_top,{}" *)
(* CORE_GENERATION_INFO = "amm_bridge,amm_axi_bridge_v1_0_4_top,{x_ipProduct=Vivado 2018.3.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=amm_axi_bridge,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_AVA_ADDR_WIDTH=32,C_M_AXI_ADDR_WIDTH=32,C_NUM_MASTERS=1,C_AVA_DATA_WIDTH=128,C_AVA_BURSTCOUNTWIDTH=11,C_MODE=0,C_ENABLE_PIPELINE=0,C_AVA_BYTEENABLES=0,C_FAMILY=artix7}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module amm_bridge (
  clk,
  aresetn,
  read_error,
  read_error_valid,
  read_error_master_ID,
  avs_address_s0,
  avs_read_s0,
  avs_readdata_s0,
  avs_readdatavalid_s0,
  avs_waitrequest_s0,
  avs_burstcount_s0,
  m_axi_araddr,
  m_axi_arlen,
  m_axi_arsize,
  m_axi_arburst,
  m_axi_arprot,
  m_axi_arcache,
  m_axi_aruser,
  m_axi_arvalid,
  m_axi_arready,
  m_axi_rdata,
  m_axi_rresp,
  m_axi_rlast,
  m_axi_rvalid,
  m_axi_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
output wire read_error;
output wire read_error_valid;
output wire [2 : 0] read_error_master_ID;
(* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 Avalon_S0 ADDRESS" *)
input wire [31 : 0] avs_address_s0;
(* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 Avalon_S0 READ" *)
input wire avs_read_s0;
(* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 Avalon_S0 READDATA" *)
output wire [127 : 0] avs_readdata_s0;
(* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 Avalon_S0 READDATAVALID" *)
output wire avs_readdatavalid_s0;
(* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 Avalon_S0 WAITREQUEST" *)
output wire avs_waitrequest_s0;
(* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 Avalon_S0 BURSTCOUNT" *)
input wire [10 : 0] avs_burstcount_s0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *)
output wire [31 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *)
output wire [7 : 0] m_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *)
output wire [2 : 0] m_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *)
output wire [1 : 0] m_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *)
output wire [3 : 0] m_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARUSER" *)
output wire [3 : 0] m_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *)
input wire [127 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *)
input wire m_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 4, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_B\
ITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *)
output wire m_axi_rready;

  amm_axi_bridge_v1_0_4_top #(
    .C_AVA_ADDR_WIDTH(32),
    .C_M_AXI_ADDR_WIDTH(32),
    .C_NUM_MASTERS(1),
    .C_AVA_DATA_WIDTH(128),
    .C_AVA_BURSTCOUNTWIDTH(11),
    .C_MODE(0),
    .C_ENABLE_PIPELINE(0),
    .C_AVA_BYTEENABLES(0),
    .C_FAMILY("artix7")
  ) inst (
    .clk(clk),
    .aresetn(aresetn),
    .write_error(),
    .write_error_valid(),
    .write_error_master_ID(),
    .read_error(read_error),
    .read_error_valid(read_error_valid),
    .read_error_master_ID(read_error_master_ID),
    .avs_address_s0(avs_address_s0),
    .avs_read_s0(avs_read_s0),
    .avs_write_s0(1'B0),
    .avs_writedata_s0(128'B0),
    .avs_readdata_s0(avs_readdata_s0),
    .avs_readdatavalid_s0(avs_readdatavalid_s0),
    .avs_waitrequest_s0(avs_waitrequest_s0),
    .avs_byteenable_s0(16'B0),
    .avs_burstcount_s0(avs_burstcount_s0),
    .avs_address_s1(32'B0),
    .avs_read_s1(1'B0),
    .avs_write_s1(1'B0),
    .avs_writedata_s1(128'B0),
    .avs_readdata_s1(),
    .avs_readdatavalid_s1(),
    .avs_waitrequest_s1(),
    .avs_byteenable_s1(16'B0),
    .avs_burstcount_s1(11'B0),
    .avs_address_s2(32'B0),
    .avs_read_s2(1'B0),
    .avs_write_s2(1'B0),
    .avs_writedata_s2(128'B0),
    .avs_readdata_s2(),
    .avs_readdatavalid_s2(),
    .avs_waitrequest_s2(),
    .avs_byteenable_s2(16'B0),
    .avs_burstcount_s2(11'B0),
    .avs_address_s3(32'B0),
    .avs_read_s3(1'B0),
    .avs_write_s3(1'B0),
    .avs_writedata_s3(128'B0),
    .avs_readdata_s3(),
    .avs_readdatavalid_s3(),
    .avs_waitrequest_s3(),
    .avs_byteenable_s3(16'B0),
    .avs_burstcount_s3(11'B0),
    .avs_address_s4(32'B0),
    .avs_read_s4(1'B0),
    .avs_write_s4(1'B0),
    .avs_writedata_s4(128'B0),
    .avs_readdata_s4(),
    .avs_readdatavalid_s4(),
    .avs_waitrequest_s4(),
    .avs_byteenable_s4(16'B0),
    .avs_burstcount_s4(11'B0),
    .avs_address_s5(32'B0),
    .avs_read_s5(1'B0),
    .avs_write_s5(1'B0),
    .avs_writedata_s5(128'B0),
    .avs_readdata_s5(),
    .avs_readdatavalid_s5(),
    .avs_waitrequest_s5(),
    .avs_byteenable_s5(16'B0),
    .avs_burstcount_s5(11'B0),
    .avs_address_s6(32'B0),
    .avs_read_s6(1'B0),
    .avs_write_s6(1'B0),
    .avs_writedata_s6(128'B0),
    .avs_readdata_s6(),
    .avs_readdatavalid_s6(),
    .avs_waitrequest_s6(),
    .avs_byteenable_s6(16'B0),
    .avs_burstcount_s6(11'B0),
    .avs_address_s7(32'B0),
    .avs_read_s7(1'B0),
    .avs_write_s7(1'B0),
    .avs_writedata_s7(128'B0),
    .avs_readdata_s7(),
    .avs_readdatavalid_s7(),
    .avs_waitrequest_s7(),
    .avs_byteenable_s7(16'B0),
    .avs_burstcount_s7(11'B0),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arcache(m_axi_arcache),
    .m_axi_aruser(m_axi_aruser),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arready(m_axi_arready),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rlast(m_axi_rlast),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_rready(m_axi_rready),
    .m_axi_awaddr(),
    .m_axi_awlen(),
    .m_axi_awsize(),
    .m_axi_awburst(),
    .m_axi_awprot(),
    .m_axi_awcache(),
    .m_axi_awuser(),
    .m_axi_awvalid(),
    .m_axi_awready(1'B0),
    .m_axi_wdata(),
    .m_axi_wstrb(),
    .m_axi_wlast(),
    .m_axi_wvalid(),
    .m_axi_wready(1'B0),
    .m_axi_bresp(2'B0),
    .m_axi_bvalid(1'B0),
    .m_axi_bready()
  );
endmodule
