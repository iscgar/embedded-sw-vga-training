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

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
amm_bridge your_instance_name (
  .clk(clk),                                    // input wire clk
  .aresetn(aresetn),                            // input wire aresetn
  .read_error(read_error),                      // output wire read_error
  .read_error_valid(read_error_valid),          // output wire read_error_valid
  .read_error_master_ID(read_error_master_ID),  // output wire [2 : 0] read_error_master_ID
  .avs_address_s0(avs_address_s0),              // input wire [31 : 0] avs_address_s0
  .avs_read_s0(avs_read_s0),                    // input wire avs_read_s0
  .avs_readdata_s0(avs_readdata_s0),            // output wire [127 : 0] avs_readdata_s0
  .avs_readdatavalid_s0(avs_readdatavalid_s0),  // output wire avs_readdatavalid_s0
  .avs_waitrequest_s0(avs_waitrequest_s0),      // output wire avs_waitrequest_s0
  .avs_burstcount_s0(avs_burstcount_s0),        // input wire [10 : 0] avs_burstcount_s0
  .m_axi_araddr(m_axi_araddr),                  // output wire [31 : 0] m_axi_araddr
  .m_axi_arlen(m_axi_arlen),                    // output wire [7 : 0] m_axi_arlen
  .m_axi_arsize(m_axi_arsize),                  // output wire [2 : 0] m_axi_arsize
  .m_axi_arburst(m_axi_arburst),                // output wire [1 : 0] m_axi_arburst
  .m_axi_arprot(m_axi_arprot),                  // output wire [2 : 0] m_axi_arprot
  .m_axi_arcache(m_axi_arcache),                // output wire [3 : 0] m_axi_arcache
  .m_axi_aruser(m_axi_aruser),                  // output wire [3 : 0] m_axi_aruser
  .m_axi_arvalid(m_axi_arvalid),                // output wire m_axi_arvalid
  .m_axi_arready(m_axi_arready),                // input wire m_axi_arready
  .m_axi_rdata(m_axi_rdata),                    // input wire [127 : 0] m_axi_rdata
  .m_axi_rresp(m_axi_rresp),                    // input wire [1 : 0] m_axi_rresp
  .m_axi_rlast(m_axi_rlast),                    // input wire m_axi_rlast
  .m_axi_rvalid(m_axi_rvalid),                  // input wire m_axi_rvalid
  .m_axi_rready(m_axi_rready)                  // output wire m_axi_rready
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file amm_bridge.v when simulating
// the core, amm_bridge. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

