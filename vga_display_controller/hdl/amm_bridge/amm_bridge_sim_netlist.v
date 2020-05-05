// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue May  5 16:18:05 2020
// Host        : EF65AC789B8C running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top amm_bridge -prefix
//               amm_bridge_ amm_bridge_sim_netlist.v
// Design      : amm_bridge
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module amm_bridge_amm_axi_bridge_v1_0_4_read_multi
   (mm2s_cmd_valid,
    avs_waitrequest_s0,
    E,
    D,
    clk,
    mm2s_cmd_ready,
    avs_read_s0,
    aresetn,
    avs_burstcount_s0,
    avs_address_s0);
  output mm2s_cmd_valid;
  output avs_waitrequest_s0;
  output [0:0]E;
  output [42:0]D;
  input clk;
  input mm2s_cmd_ready;
  input avs_read_s0;
  input aresetn;
  input [10:0]avs_burstcount_s0;
  input [31:0]avs_address_s0;

  wire [42:0]D;
  wire [0:0]E;
  wire aresetn;
  wire [31:0]avs_address_s0;
  wire [10:0]avs_burstcount_s0;
  wire avs_read_s0;
  wire avs_waitrequest_s0;
  wire clk;
  wire mm2s_cmd_ready;
  wire mm2s_cmd_valid;

  amm_bridge_amm_axi_bridge_v1_0_4_read_top read_single_top_1
       (.D(D),
        .E(E),
        .aresetn(aresetn),
        .avs_address_s0(avs_address_s0),
        .avs_burstcount_s0(avs_burstcount_s0),
        .avs_read_s0(avs_read_s0),
        .avs_waitrequest_s0(avs_waitrequest_s0),
        .clk(clk),
        .mm2s_cmd_ready(mm2s_cmd_ready),
        .mm2s_cmd_valid(mm2s_cmd_valid));
endmodule

module amm_bridge_amm_axi_bridge_v1_0_4_read_top
   (mm2s_cmd_valid,
    avs_waitrequest_s0,
    E,
    D,
    clk,
    mm2s_cmd_ready,
    avs_read_s0,
    aresetn,
    avs_burstcount_s0,
    avs_address_s0);
  output mm2s_cmd_valid;
  output avs_waitrequest_s0;
  output [0:0]E;
  output [42:0]D;
  input clk;
  input mm2s_cmd_ready;
  input avs_read_s0;
  input aresetn;
  input [10:0]avs_burstcount_s0;
  input [31:0]avs_address_s0;

  wire [42:0]D;
  wire [0:0]E;
  wire aresetn;
  wire [31:0]avs_address_s0;
  wire [10:0]avs_burstcount_s0;
  wire avs_read_s0;
  wire avs_waitrequest_s0;
  wire \burstcount_reg[10]_i_2_n_0 ;
  wire clk;
  wire cmd_valid_i_1_n_0;
  wire \grant_vector[0]_i_1_n_0 ;
  wire \grant_vector_reg_n_0_[0] ;
  wire master_reg;
  wire mm2s_cmd_ready;
  wire mm2s_cmd_valid;
  wire state_i_1_n_0;
  wire state_reg_n_0;

  LUT2 #(
    .INIT(4'h8)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[63]_i_1 
       (.I0(mm2s_cmd_valid),
        .I1(mm2s_cmd_ready),
        .O(E));
  FDCE \address_reg_reg[0] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[0]),
        .Q(D[11]));
  FDCE \address_reg_reg[10] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[10]),
        .Q(D[21]));
  FDCE \address_reg_reg[11] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[11]),
        .Q(D[22]));
  FDCE \address_reg_reg[12] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[12]),
        .Q(D[23]));
  FDCE \address_reg_reg[13] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[13]),
        .Q(D[24]));
  FDCE \address_reg_reg[14] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[14]),
        .Q(D[25]));
  FDCE \address_reg_reg[15] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[15]),
        .Q(D[26]));
  FDCE \address_reg_reg[16] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[16]),
        .Q(D[27]));
  FDCE \address_reg_reg[17] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[17]),
        .Q(D[28]));
  FDCE \address_reg_reg[18] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[18]),
        .Q(D[29]));
  FDCE \address_reg_reg[19] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[19]),
        .Q(D[30]));
  FDCE \address_reg_reg[1] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[1]),
        .Q(D[12]));
  FDCE \address_reg_reg[20] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[20]),
        .Q(D[31]));
  FDCE \address_reg_reg[21] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[21]),
        .Q(D[32]));
  FDCE \address_reg_reg[22] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[22]),
        .Q(D[33]));
  FDCE \address_reg_reg[23] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[23]),
        .Q(D[34]));
  FDCE \address_reg_reg[24] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[24]),
        .Q(D[35]));
  FDCE \address_reg_reg[25] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[25]),
        .Q(D[36]));
  FDCE \address_reg_reg[26] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[26]),
        .Q(D[37]));
  FDCE \address_reg_reg[27] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[27]),
        .Q(D[38]));
  FDCE \address_reg_reg[28] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[28]),
        .Q(D[39]));
  FDCE \address_reg_reg[29] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[29]),
        .Q(D[40]));
  FDCE \address_reg_reg[2] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[2]),
        .Q(D[13]));
  FDCE \address_reg_reg[30] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[30]),
        .Q(D[41]));
  FDCE \address_reg_reg[31] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[31]),
        .Q(D[42]));
  FDCE \address_reg_reg[3] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[3]),
        .Q(D[14]));
  FDCE \address_reg_reg[4] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[4]),
        .Q(D[15]));
  FDCE \address_reg_reg[5] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[5]),
        .Q(D[16]));
  FDCE \address_reg_reg[6] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[6]),
        .Q(D[17]));
  FDCE \address_reg_reg[7] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[7]),
        .Q(D[18]));
  FDCE \address_reg_reg[8] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[8]),
        .Q(D[19]));
  FDCE \address_reg_reg[9] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_address_s0[9]),
        .Q(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    avs_waitrequest_s0_INST_0
       (.I0(\grant_vector_reg_n_0_[0] ),
        .I1(avs_read_s0),
        .I2(mm2s_cmd_ready),
        .O(avs_waitrequest_s0));
  LUT4 #(
    .INIT(16'h8000)) 
    \burstcount_reg[10]_i_1 
       (.I0(state_reg_n_0),
        .I1(mm2s_cmd_ready),
        .I2(avs_read_s0),
        .I3(\grant_vector_reg_n_0_[0] ),
        .O(master_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \burstcount_reg[10]_i_2 
       (.I0(aresetn),
        .O(\burstcount_reg[10]_i_2_n_0 ));
  FDCE \burstcount_reg_reg[0] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_burstcount_s0[0]),
        .Q(D[0]));
  FDCE \burstcount_reg_reg[10] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_burstcount_s0[10]),
        .Q(D[10]));
  FDCE \burstcount_reg_reg[1] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_burstcount_s0[1]),
        .Q(D[1]));
  FDCE \burstcount_reg_reg[2] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_burstcount_s0[2]),
        .Q(D[2]));
  FDCE \burstcount_reg_reg[3] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_burstcount_s0[3]),
        .Q(D[3]));
  FDCE \burstcount_reg_reg[4] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_burstcount_s0[4]),
        .Q(D[4]));
  FDCE \burstcount_reg_reg[5] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_burstcount_s0[5]),
        .Q(D[5]));
  FDCE \burstcount_reg_reg[6] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_burstcount_s0[6]),
        .Q(D[6]));
  FDCE \burstcount_reg_reg[7] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_burstcount_s0[7]),
        .Q(D[7]));
  FDCE \burstcount_reg_reg[8] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_burstcount_s0[8]),
        .Q(D[8]));
  FDCE \burstcount_reg_reg[9] 
       (.C(clk),
        .CE(master_reg),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(avs_burstcount_s0[9]),
        .Q(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    cmd_valid_i_1
       (.I0(avs_read_s0),
        .I1(\grant_vector_reg_n_0_[0] ),
        .I2(state_reg_n_0),
        .I3(mm2s_cmd_ready),
        .I4(mm2s_cmd_valid),
        .O(cmd_valid_i_1_n_0));
  FDCE cmd_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(cmd_valid_i_1_n_0),
        .Q(mm2s_cmd_valid));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \grant_vector[0]_i_1 
       (.I0(avs_read_s0),
        .I1(mm2s_cmd_ready),
        .I2(state_reg_n_0),
        .I3(\grant_vector_reg_n_0_[0] ),
        .O(\grant_vector[0]_i_1_n_0 ));
  FDCE \grant_vector_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(\grant_vector[0]_i_1_n_0 ),
        .Q(\grant_vector_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hD5CC)) 
    state_i_1
       (.I0(mm2s_cmd_ready),
        .I1(avs_read_s0),
        .I2(\grant_vector_reg_n_0_[0] ),
        .I3(state_reg_n_0),
        .O(state_i_1_n_0));
  FDCE state_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\burstcount_reg[10]_i_2_n_0 ),
        .D(state_i_1_n_0),
        .Q(state_reg_n_0));
endmodule

(* C_AVA_ADDR_WIDTH = "32" *) (* C_AVA_BURSTCOUNTWIDTH = "11" *) (* C_AVA_BYTEENABLES = "0" *) 
(* C_AVA_DATA_WIDTH = "128" *) (* C_AXI_ADDR_WIDTH = "32" *) (* C_ENABLE_PIPELINE = "0" *) 
(* C_FAMILY = "artix7" *) (* C_INCLUDE_MM2S = "1" *) (* C_INCLUDE_S2MM = "0" *) 
(* C_MODE = "0" *) (* C_M_AXI_ADDR_WIDTH = "32" *) (* C_NUM_MASTERS = "1" *) 
(* C_PIPELINE_DEPTH = "1" *) (* C_STATUSWIDTH = "8" *) 
module amm_bridge_amm_axi_bridge_v1_0_4_top
   (clk,
    aresetn,
    write_error,
    write_error_valid,
    write_error_master_ID,
    read_error,
    read_error_valid,
    read_error_master_ID,
    avs_address_s0,
    avs_read_s0,
    avs_write_s0,
    avs_writedata_s0,
    avs_readdata_s0,
    avs_readdatavalid_s0,
    avs_waitrequest_s0,
    avs_byteenable_s0,
    avs_burstcount_s0,
    avs_address_s1,
    avs_read_s1,
    avs_write_s1,
    avs_writedata_s1,
    avs_readdata_s1,
    avs_readdatavalid_s1,
    avs_waitrequest_s1,
    avs_byteenable_s1,
    avs_burstcount_s1,
    avs_address_s2,
    avs_read_s2,
    avs_write_s2,
    avs_writedata_s2,
    avs_readdata_s2,
    avs_readdatavalid_s2,
    avs_waitrequest_s2,
    avs_byteenable_s2,
    avs_burstcount_s2,
    avs_address_s3,
    avs_read_s3,
    avs_write_s3,
    avs_writedata_s3,
    avs_readdata_s3,
    avs_readdatavalid_s3,
    avs_waitrequest_s3,
    avs_byteenable_s3,
    avs_burstcount_s3,
    avs_address_s4,
    avs_read_s4,
    avs_write_s4,
    avs_writedata_s4,
    avs_readdata_s4,
    avs_readdatavalid_s4,
    avs_waitrequest_s4,
    avs_byteenable_s4,
    avs_burstcount_s4,
    avs_address_s5,
    avs_read_s5,
    avs_write_s5,
    avs_writedata_s5,
    avs_readdata_s5,
    avs_readdatavalid_s5,
    avs_waitrequest_s5,
    avs_byteenable_s5,
    avs_burstcount_s5,
    avs_address_s6,
    avs_read_s6,
    avs_write_s6,
    avs_writedata_s6,
    avs_readdata_s6,
    avs_readdatavalid_s6,
    avs_waitrequest_s6,
    avs_byteenable_s6,
    avs_burstcount_s6,
    avs_address_s7,
    avs_read_s7,
    avs_write_s7,
    avs_writedata_s7,
    avs_readdata_s7,
    avs_readdatavalid_s7,
    avs_waitrequest_s7,
    avs_byteenable_s7,
    avs_burstcount_s7,
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
    m_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awprot,
    m_axi_awcache,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready);
  input clk;
  input aresetn;
  output write_error;
  output write_error_valid;
  output [2:0]write_error_master_ID;
  output read_error;
  output read_error_valid;
  output [2:0]read_error_master_ID;
  input [31:0]avs_address_s0;
  input avs_read_s0;
  input avs_write_s0;
  input [127:0]avs_writedata_s0;
  output [127:0]avs_readdata_s0;
  output avs_readdatavalid_s0;
  output avs_waitrequest_s0;
  input [15:0]avs_byteenable_s0;
  input [10:0]avs_burstcount_s0;
  input [31:0]avs_address_s1;
  input avs_read_s1;
  input avs_write_s1;
  input [127:0]avs_writedata_s1;
  output [127:0]avs_readdata_s1;
  output avs_readdatavalid_s1;
  output avs_waitrequest_s1;
  input [15:0]avs_byteenable_s1;
  input [10:0]avs_burstcount_s1;
  input [31:0]avs_address_s2;
  input avs_read_s2;
  input avs_write_s2;
  input [127:0]avs_writedata_s2;
  output [127:0]avs_readdata_s2;
  output avs_readdatavalid_s2;
  output avs_waitrequest_s2;
  input [15:0]avs_byteenable_s2;
  input [10:0]avs_burstcount_s2;
  input [31:0]avs_address_s3;
  input avs_read_s3;
  input avs_write_s3;
  input [127:0]avs_writedata_s3;
  output [127:0]avs_readdata_s3;
  output avs_readdatavalid_s3;
  output avs_waitrequest_s3;
  input [15:0]avs_byteenable_s3;
  input [10:0]avs_burstcount_s3;
  input [31:0]avs_address_s4;
  input avs_read_s4;
  input avs_write_s4;
  input [127:0]avs_writedata_s4;
  output [127:0]avs_readdata_s4;
  output avs_readdatavalid_s4;
  output avs_waitrequest_s4;
  input [15:0]avs_byteenable_s4;
  input [10:0]avs_burstcount_s4;
  input [31:0]avs_address_s5;
  input avs_read_s5;
  input avs_write_s5;
  input [127:0]avs_writedata_s5;
  output [127:0]avs_readdata_s5;
  output avs_readdatavalid_s5;
  output avs_waitrequest_s5;
  input [15:0]avs_byteenable_s5;
  input [10:0]avs_burstcount_s5;
  input [31:0]avs_address_s6;
  input avs_read_s6;
  input avs_write_s6;
  input [127:0]avs_writedata_s6;
  output [127:0]avs_readdata_s6;
  output avs_readdatavalid_s6;
  output avs_waitrequest_s6;
  input [15:0]avs_byteenable_s6;
  input [10:0]avs_burstcount_s6;
  input [31:0]avs_address_s7;
  input avs_read_s7;
  input avs_write_s7;
  input [127:0]avs_writedata_s7;
  output [127:0]avs_readdata_s7;
  output avs_readdatavalid_s7;
  output avs_waitrequest_s7;
  input [15:0]avs_byteenable_s7;
  input [10:0]avs_burstcount_s7;
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
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awcache;
  output [3:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;

  wire \<const0> ;
  wire \<const1> ;
  wire \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/sig_push_regfifo ;
  wire [31:0]address;
  wire aresetn;
  wire [31:0]avs_address_s0;
  wire [10:0]avs_burstcount_s0;
  wire avs_read_s0;
  wire avs_readdatavalid_s0;
  wire avs_waitrequest_s0;
  wire [10:0]burstcount_reg;
  wire clk;
  wire [31:0]m_axi_araddr;
  wire [0:0]\^m_axi_arburst ;
  wire [7:0]m_axi_arlen;
  wire m_axi_arready;
  wire [2:2]\^m_axi_arsize ;
  wire m_axi_arvalid;
  wire [127:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire mm2s_cmd_ready;
  wire mm2s_cmd_valid;
  wire read_error;
  wire read_error_valid;

  assign avs_readdata_s0[127:0] = m_axi_rdata;
  assign avs_readdata_s1[127] = \<const0> ;
  assign avs_readdata_s1[126] = \<const0> ;
  assign avs_readdata_s1[125] = \<const0> ;
  assign avs_readdata_s1[124] = \<const0> ;
  assign avs_readdata_s1[123] = \<const0> ;
  assign avs_readdata_s1[122] = \<const0> ;
  assign avs_readdata_s1[121] = \<const0> ;
  assign avs_readdata_s1[120] = \<const0> ;
  assign avs_readdata_s1[119] = \<const0> ;
  assign avs_readdata_s1[118] = \<const0> ;
  assign avs_readdata_s1[117] = \<const0> ;
  assign avs_readdata_s1[116] = \<const0> ;
  assign avs_readdata_s1[115] = \<const0> ;
  assign avs_readdata_s1[114] = \<const0> ;
  assign avs_readdata_s1[113] = \<const0> ;
  assign avs_readdata_s1[112] = \<const0> ;
  assign avs_readdata_s1[111] = \<const0> ;
  assign avs_readdata_s1[110] = \<const0> ;
  assign avs_readdata_s1[109] = \<const0> ;
  assign avs_readdata_s1[108] = \<const0> ;
  assign avs_readdata_s1[107] = \<const0> ;
  assign avs_readdata_s1[106] = \<const0> ;
  assign avs_readdata_s1[105] = \<const0> ;
  assign avs_readdata_s1[104] = \<const0> ;
  assign avs_readdata_s1[103] = \<const0> ;
  assign avs_readdata_s1[102] = \<const0> ;
  assign avs_readdata_s1[101] = \<const0> ;
  assign avs_readdata_s1[100] = \<const0> ;
  assign avs_readdata_s1[99] = \<const0> ;
  assign avs_readdata_s1[98] = \<const0> ;
  assign avs_readdata_s1[97] = \<const0> ;
  assign avs_readdata_s1[96] = \<const0> ;
  assign avs_readdata_s1[95] = \<const0> ;
  assign avs_readdata_s1[94] = \<const0> ;
  assign avs_readdata_s1[93] = \<const0> ;
  assign avs_readdata_s1[92] = \<const0> ;
  assign avs_readdata_s1[91] = \<const0> ;
  assign avs_readdata_s1[90] = \<const0> ;
  assign avs_readdata_s1[89] = \<const0> ;
  assign avs_readdata_s1[88] = \<const0> ;
  assign avs_readdata_s1[87] = \<const0> ;
  assign avs_readdata_s1[86] = \<const0> ;
  assign avs_readdata_s1[85] = \<const0> ;
  assign avs_readdata_s1[84] = \<const0> ;
  assign avs_readdata_s1[83] = \<const0> ;
  assign avs_readdata_s1[82] = \<const0> ;
  assign avs_readdata_s1[81] = \<const0> ;
  assign avs_readdata_s1[80] = \<const0> ;
  assign avs_readdata_s1[79] = \<const0> ;
  assign avs_readdata_s1[78] = \<const0> ;
  assign avs_readdata_s1[77] = \<const0> ;
  assign avs_readdata_s1[76] = \<const0> ;
  assign avs_readdata_s1[75] = \<const0> ;
  assign avs_readdata_s1[74] = \<const0> ;
  assign avs_readdata_s1[73] = \<const0> ;
  assign avs_readdata_s1[72] = \<const0> ;
  assign avs_readdata_s1[71] = \<const0> ;
  assign avs_readdata_s1[70] = \<const0> ;
  assign avs_readdata_s1[69] = \<const0> ;
  assign avs_readdata_s1[68] = \<const0> ;
  assign avs_readdata_s1[67] = \<const0> ;
  assign avs_readdata_s1[66] = \<const0> ;
  assign avs_readdata_s1[65] = \<const0> ;
  assign avs_readdata_s1[64] = \<const0> ;
  assign avs_readdata_s1[63] = \<const0> ;
  assign avs_readdata_s1[62] = \<const0> ;
  assign avs_readdata_s1[61] = \<const0> ;
  assign avs_readdata_s1[60] = \<const0> ;
  assign avs_readdata_s1[59] = \<const0> ;
  assign avs_readdata_s1[58] = \<const0> ;
  assign avs_readdata_s1[57] = \<const0> ;
  assign avs_readdata_s1[56] = \<const0> ;
  assign avs_readdata_s1[55] = \<const0> ;
  assign avs_readdata_s1[54] = \<const0> ;
  assign avs_readdata_s1[53] = \<const0> ;
  assign avs_readdata_s1[52] = \<const0> ;
  assign avs_readdata_s1[51] = \<const0> ;
  assign avs_readdata_s1[50] = \<const0> ;
  assign avs_readdata_s1[49] = \<const0> ;
  assign avs_readdata_s1[48] = \<const0> ;
  assign avs_readdata_s1[47] = \<const0> ;
  assign avs_readdata_s1[46] = \<const0> ;
  assign avs_readdata_s1[45] = \<const0> ;
  assign avs_readdata_s1[44] = \<const0> ;
  assign avs_readdata_s1[43] = \<const0> ;
  assign avs_readdata_s1[42] = \<const0> ;
  assign avs_readdata_s1[41] = \<const0> ;
  assign avs_readdata_s1[40] = \<const0> ;
  assign avs_readdata_s1[39] = \<const0> ;
  assign avs_readdata_s1[38] = \<const0> ;
  assign avs_readdata_s1[37] = \<const0> ;
  assign avs_readdata_s1[36] = \<const0> ;
  assign avs_readdata_s1[35] = \<const0> ;
  assign avs_readdata_s1[34] = \<const0> ;
  assign avs_readdata_s1[33] = \<const0> ;
  assign avs_readdata_s1[32] = \<const0> ;
  assign avs_readdata_s1[31] = \<const0> ;
  assign avs_readdata_s1[30] = \<const0> ;
  assign avs_readdata_s1[29] = \<const0> ;
  assign avs_readdata_s1[28] = \<const0> ;
  assign avs_readdata_s1[27] = \<const0> ;
  assign avs_readdata_s1[26] = \<const0> ;
  assign avs_readdata_s1[25] = \<const0> ;
  assign avs_readdata_s1[24] = \<const0> ;
  assign avs_readdata_s1[23] = \<const0> ;
  assign avs_readdata_s1[22] = \<const0> ;
  assign avs_readdata_s1[21] = \<const0> ;
  assign avs_readdata_s1[20] = \<const0> ;
  assign avs_readdata_s1[19] = \<const0> ;
  assign avs_readdata_s1[18] = \<const0> ;
  assign avs_readdata_s1[17] = \<const0> ;
  assign avs_readdata_s1[16] = \<const0> ;
  assign avs_readdata_s1[15] = \<const0> ;
  assign avs_readdata_s1[14] = \<const0> ;
  assign avs_readdata_s1[13] = \<const0> ;
  assign avs_readdata_s1[12] = \<const0> ;
  assign avs_readdata_s1[11] = \<const0> ;
  assign avs_readdata_s1[10] = \<const0> ;
  assign avs_readdata_s1[9] = \<const0> ;
  assign avs_readdata_s1[8] = \<const0> ;
  assign avs_readdata_s1[7] = \<const0> ;
  assign avs_readdata_s1[6] = \<const0> ;
  assign avs_readdata_s1[5] = \<const0> ;
  assign avs_readdata_s1[4] = \<const0> ;
  assign avs_readdata_s1[3] = \<const0> ;
  assign avs_readdata_s1[2] = \<const0> ;
  assign avs_readdata_s1[1] = \<const0> ;
  assign avs_readdata_s1[0] = \<const0> ;
  assign avs_readdata_s2[127] = \<const0> ;
  assign avs_readdata_s2[126] = \<const0> ;
  assign avs_readdata_s2[125] = \<const0> ;
  assign avs_readdata_s2[124] = \<const0> ;
  assign avs_readdata_s2[123] = \<const0> ;
  assign avs_readdata_s2[122] = \<const0> ;
  assign avs_readdata_s2[121] = \<const0> ;
  assign avs_readdata_s2[120] = \<const0> ;
  assign avs_readdata_s2[119] = \<const0> ;
  assign avs_readdata_s2[118] = \<const0> ;
  assign avs_readdata_s2[117] = \<const0> ;
  assign avs_readdata_s2[116] = \<const0> ;
  assign avs_readdata_s2[115] = \<const0> ;
  assign avs_readdata_s2[114] = \<const0> ;
  assign avs_readdata_s2[113] = \<const0> ;
  assign avs_readdata_s2[112] = \<const0> ;
  assign avs_readdata_s2[111] = \<const0> ;
  assign avs_readdata_s2[110] = \<const0> ;
  assign avs_readdata_s2[109] = \<const0> ;
  assign avs_readdata_s2[108] = \<const0> ;
  assign avs_readdata_s2[107] = \<const0> ;
  assign avs_readdata_s2[106] = \<const0> ;
  assign avs_readdata_s2[105] = \<const0> ;
  assign avs_readdata_s2[104] = \<const0> ;
  assign avs_readdata_s2[103] = \<const0> ;
  assign avs_readdata_s2[102] = \<const0> ;
  assign avs_readdata_s2[101] = \<const0> ;
  assign avs_readdata_s2[100] = \<const0> ;
  assign avs_readdata_s2[99] = \<const0> ;
  assign avs_readdata_s2[98] = \<const0> ;
  assign avs_readdata_s2[97] = \<const0> ;
  assign avs_readdata_s2[96] = \<const0> ;
  assign avs_readdata_s2[95] = \<const0> ;
  assign avs_readdata_s2[94] = \<const0> ;
  assign avs_readdata_s2[93] = \<const0> ;
  assign avs_readdata_s2[92] = \<const0> ;
  assign avs_readdata_s2[91] = \<const0> ;
  assign avs_readdata_s2[90] = \<const0> ;
  assign avs_readdata_s2[89] = \<const0> ;
  assign avs_readdata_s2[88] = \<const0> ;
  assign avs_readdata_s2[87] = \<const0> ;
  assign avs_readdata_s2[86] = \<const0> ;
  assign avs_readdata_s2[85] = \<const0> ;
  assign avs_readdata_s2[84] = \<const0> ;
  assign avs_readdata_s2[83] = \<const0> ;
  assign avs_readdata_s2[82] = \<const0> ;
  assign avs_readdata_s2[81] = \<const0> ;
  assign avs_readdata_s2[80] = \<const0> ;
  assign avs_readdata_s2[79] = \<const0> ;
  assign avs_readdata_s2[78] = \<const0> ;
  assign avs_readdata_s2[77] = \<const0> ;
  assign avs_readdata_s2[76] = \<const0> ;
  assign avs_readdata_s2[75] = \<const0> ;
  assign avs_readdata_s2[74] = \<const0> ;
  assign avs_readdata_s2[73] = \<const0> ;
  assign avs_readdata_s2[72] = \<const0> ;
  assign avs_readdata_s2[71] = \<const0> ;
  assign avs_readdata_s2[70] = \<const0> ;
  assign avs_readdata_s2[69] = \<const0> ;
  assign avs_readdata_s2[68] = \<const0> ;
  assign avs_readdata_s2[67] = \<const0> ;
  assign avs_readdata_s2[66] = \<const0> ;
  assign avs_readdata_s2[65] = \<const0> ;
  assign avs_readdata_s2[64] = \<const0> ;
  assign avs_readdata_s2[63] = \<const0> ;
  assign avs_readdata_s2[62] = \<const0> ;
  assign avs_readdata_s2[61] = \<const0> ;
  assign avs_readdata_s2[60] = \<const0> ;
  assign avs_readdata_s2[59] = \<const0> ;
  assign avs_readdata_s2[58] = \<const0> ;
  assign avs_readdata_s2[57] = \<const0> ;
  assign avs_readdata_s2[56] = \<const0> ;
  assign avs_readdata_s2[55] = \<const0> ;
  assign avs_readdata_s2[54] = \<const0> ;
  assign avs_readdata_s2[53] = \<const0> ;
  assign avs_readdata_s2[52] = \<const0> ;
  assign avs_readdata_s2[51] = \<const0> ;
  assign avs_readdata_s2[50] = \<const0> ;
  assign avs_readdata_s2[49] = \<const0> ;
  assign avs_readdata_s2[48] = \<const0> ;
  assign avs_readdata_s2[47] = \<const0> ;
  assign avs_readdata_s2[46] = \<const0> ;
  assign avs_readdata_s2[45] = \<const0> ;
  assign avs_readdata_s2[44] = \<const0> ;
  assign avs_readdata_s2[43] = \<const0> ;
  assign avs_readdata_s2[42] = \<const0> ;
  assign avs_readdata_s2[41] = \<const0> ;
  assign avs_readdata_s2[40] = \<const0> ;
  assign avs_readdata_s2[39] = \<const0> ;
  assign avs_readdata_s2[38] = \<const0> ;
  assign avs_readdata_s2[37] = \<const0> ;
  assign avs_readdata_s2[36] = \<const0> ;
  assign avs_readdata_s2[35] = \<const0> ;
  assign avs_readdata_s2[34] = \<const0> ;
  assign avs_readdata_s2[33] = \<const0> ;
  assign avs_readdata_s2[32] = \<const0> ;
  assign avs_readdata_s2[31] = \<const0> ;
  assign avs_readdata_s2[30] = \<const0> ;
  assign avs_readdata_s2[29] = \<const0> ;
  assign avs_readdata_s2[28] = \<const0> ;
  assign avs_readdata_s2[27] = \<const0> ;
  assign avs_readdata_s2[26] = \<const0> ;
  assign avs_readdata_s2[25] = \<const0> ;
  assign avs_readdata_s2[24] = \<const0> ;
  assign avs_readdata_s2[23] = \<const0> ;
  assign avs_readdata_s2[22] = \<const0> ;
  assign avs_readdata_s2[21] = \<const0> ;
  assign avs_readdata_s2[20] = \<const0> ;
  assign avs_readdata_s2[19] = \<const0> ;
  assign avs_readdata_s2[18] = \<const0> ;
  assign avs_readdata_s2[17] = \<const0> ;
  assign avs_readdata_s2[16] = \<const0> ;
  assign avs_readdata_s2[15] = \<const0> ;
  assign avs_readdata_s2[14] = \<const0> ;
  assign avs_readdata_s2[13] = \<const0> ;
  assign avs_readdata_s2[12] = \<const0> ;
  assign avs_readdata_s2[11] = \<const0> ;
  assign avs_readdata_s2[10] = \<const0> ;
  assign avs_readdata_s2[9] = \<const0> ;
  assign avs_readdata_s2[8] = \<const0> ;
  assign avs_readdata_s2[7] = \<const0> ;
  assign avs_readdata_s2[6] = \<const0> ;
  assign avs_readdata_s2[5] = \<const0> ;
  assign avs_readdata_s2[4] = \<const0> ;
  assign avs_readdata_s2[3] = \<const0> ;
  assign avs_readdata_s2[2] = \<const0> ;
  assign avs_readdata_s2[1] = \<const0> ;
  assign avs_readdata_s2[0] = \<const0> ;
  assign avs_readdata_s3[127] = \<const0> ;
  assign avs_readdata_s3[126] = \<const0> ;
  assign avs_readdata_s3[125] = \<const0> ;
  assign avs_readdata_s3[124] = \<const0> ;
  assign avs_readdata_s3[123] = \<const0> ;
  assign avs_readdata_s3[122] = \<const0> ;
  assign avs_readdata_s3[121] = \<const0> ;
  assign avs_readdata_s3[120] = \<const0> ;
  assign avs_readdata_s3[119] = \<const0> ;
  assign avs_readdata_s3[118] = \<const0> ;
  assign avs_readdata_s3[117] = \<const0> ;
  assign avs_readdata_s3[116] = \<const0> ;
  assign avs_readdata_s3[115] = \<const0> ;
  assign avs_readdata_s3[114] = \<const0> ;
  assign avs_readdata_s3[113] = \<const0> ;
  assign avs_readdata_s3[112] = \<const0> ;
  assign avs_readdata_s3[111] = \<const0> ;
  assign avs_readdata_s3[110] = \<const0> ;
  assign avs_readdata_s3[109] = \<const0> ;
  assign avs_readdata_s3[108] = \<const0> ;
  assign avs_readdata_s3[107] = \<const0> ;
  assign avs_readdata_s3[106] = \<const0> ;
  assign avs_readdata_s3[105] = \<const0> ;
  assign avs_readdata_s3[104] = \<const0> ;
  assign avs_readdata_s3[103] = \<const0> ;
  assign avs_readdata_s3[102] = \<const0> ;
  assign avs_readdata_s3[101] = \<const0> ;
  assign avs_readdata_s3[100] = \<const0> ;
  assign avs_readdata_s3[99] = \<const0> ;
  assign avs_readdata_s3[98] = \<const0> ;
  assign avs_readdata_s3[97] = \<const0> ;
  assign avs_readdata_s3[96] = \<const0> ;
  assign avs_readdata_s3[95] = \<const0> ;
  assign avs_readdata_s3[94] = \<const0> ;
  assign avs_readdata_s3[93] = \<const0> ;
  assign avs_readdata_s3[92] = \<const0> ;
  assign avs_readdata_s3[91] = \<const0> ;
  assign avs_readdata_s3[90] = \<const0> ;
  assign avs_readdata_s3[89] = \<const0> ;
  assign avs_readdata_s3[88] = \<const0> ;
  assign avs_readdata_s3[87] = \<const0> ;
  assign avs_readdata_s3[86] = \<const0> ;
  assign avs_readdata_s3[85] = \<const0> ;
  assign avs_readdata_s3[84] = \<const0> ;
  assign avs_readdata_s3[83] = \<const0> ;
  assign avs_readdata_s3[82] = \<const0> ;
  assign avs_readdata_s3[81] = \<const0> ;
  assign avs_readdata_s3[80] = \<const0> ;
  assign avs_readdata_s3[79] = \<const0> ;
  assign avs_readdata_s3[78] = \<const0> ;
  assign avs_readdata_s3[77] = \<const0> ;
  assign avs_readdata_s3[76] = \<const0> ;
  assign avs_readdata_s3[75] = \<const0> ;
  assign avs_readdata_s3[74] = \<const0> ;
  assign avs_readdata_s3[73] = \<const0> ;
  assign avs_readdata_s3[72] = \<const0> ;
  assign avs_readdata_s3[71] = \<const0> ;
  assign avs_readdata_s3[70] = \<const0> ;
  assign avs_readdata_s3[69] = \<const0> ;
  assign avs_readdata_s3[68] = \<const0> ;
  assign avs_readdata_s3[67] = \<const0> ;
  assign avs_readdata_s3[66] = \<const0> ;
  assign avs_readdata_s3[65] = \<const0> ;
  assign avs_readdata_s3[64] = \<const0> ;
  assign avs_readdata_s3[63] = \<const0> ;
  assign avs_readdata_s3[62] = \<const0> ;
  assign avs_readdata_s3[61] = \<const0> ;
  assign avs_readdata_s3[60] = \<const0> ;
  assign avs_readdata_s3[59] = \<const0> ;
  assign avs_readdata_s3[58] = \<const0> ;
  assign avs_readdata_s3[57] = \<const0> ;
  assign avs_readdata_s3[56] = \<const0> ;
  assign avs_readdata_s3[55] = \<const0> ;
  assign avs_readdata_s3[54] = \<const0> ;
  assign avs_readdata_s3[53] = \<const0> ;
  assign avs_readdata_s3[52] = \<const0> ;
  assign avs_readdata_s3[51] = \<const0> ;
  assign avs_readdata_s3[50] = \<const0> ;
  assign avs_readdata_s3[49] = \<const0> ;
  assign avs_readdata_s3[48] = \<const0> ;
  assign avs_readdata_s3[47] = \<const0> ;
  assign avs_readdata_s3[46] = \<const0> ;
  assign avs_readdata_s3[45] = \<const0> ;
  assign avs_readdata_s3[44] = \<const0> ;
  assign avs_readdata_s3[43] = \<const0> ;
  assign avs_readdata_s3[42] = \<const0> ;
  assign avs_readdata_s3[41] = \<const0> ;
  assign avs_readdata_s3[40] = \<const0> ;
  assign avs_readdata_s3[39] = \<const0> ;
  assign avs_readdata_s3[38] = \<const0> ;
  assign avs_readdata_s3[37] = \<const0> ;
  assign avs_readdata_s3[36] = \<const0> ;
  assign avs_readdata_s3[35] = \<const0> ;
  assign avs_readdata_s3[34] = \<const0> ;
  assign avs_readdata_s3[33] = \<const0> ;
  assign avs_readdata_s3[32] = \<const0> ;
  assign avs_readdata_s3[31] = \<const0> ;
  assign avs_readdata_s3[30] = \<const0> ;
  assign avs_readdata_s3[29] = \<const0> ;
  assign avs_readdata_s3[28] = \<const0> ;
  assign avs_readdata_s3[27] = \<const0> ;
  assign avs_readdata_s3[26] = \<const0> ;
  assign avs_readdata_s3[25] = \<const0> ;
  assign avs_readdata_s3[24] = \<const0> ;
  assign avs_readdata_s3[23] = \<const0> ;
  assign avs_readdata_s3[22] = \<const0> ;
  assign avs_readdata_s3[21] = \<const0> ;
  assign avs_readdata_s3[20] = \<const0> ;
  assign avs_readdata_s3[19] = \<const0> ;
  assign avs_readdata_s3[18] = \<const0> ;
  assign avs_readdata_s3[17] = \<const0> ;
  assign avs_readdata_s3[16] = \<const0> ;
  assign avs_readdata_s3[15] = \<const0> ;
  assign avs_readdata_s3[14] = \<const0> ;
  assign avs_readdata_s3[13] = \<const0> ;
  assign avs_readdata_s3[12] = \<const0> ;
  assign avs_readdata_s3[11] = \<const0> ;
  assign avs_readdata_s3[10] = \<const0> ;
  assign avs_readdata_s3[9] = \<const0> ;
  assign avs_readdata_s3[8] = \<const0> ;
  assign avs_readdata_s3[7] = \<const0> ;
  assign avs_readdata_s3[6] = \<const0> ;
  assign avs_readdata_s3[5] = \<const0> ;
  assign avs_readdata_s3[4] = \<const0> ;
  assign avs_readdata_s3[3] = \<const0> ;
  assign avs_readdata_s3[2] = \<const0> ;
  assign avs_readdata_s3[1] = \<const0> ;
  assign avs_readdata_s3[0] = \<const0> ;
  assign avs_readdata_s4[127] = \<const0> ;
  assign avs_readdata_s4[126] = \<const0> ;
  assign avs_readdata_s4[125] = \<const0> ;
  assign avs_readdata_s4[124] = \<const0> ;
  assign avs_readdata_s4[123] = \<const0> ;
  assign avs_readdata_s4[122] = \<const0> ;
  assign avs_readdata_s4[121] = \<const0> ;
  assign avs_readdata_s4[120] = \<const0> ;
  assign avs_readdata_s4[119] = \<const0> ;
  assign avs_readdata_s4[118] = \<const0> ;
  assign avs_readdata_s4[117] = \<const0> ;
  assign avs_readdata_s4[116] = \<const0> ;
  assign avs_readdata_s4[115] = \<const0> ;
  assign avs_readdata_s4[114] = \<const0> ;
  assign avs_readdata_s4[113] = \<const0> ;
  assign avs_readdata_s4[112] = \<const0> ;
  assign avs_readdata_s4[111] = \<const0> ;
  assign avs_readdata_s4[110] = \<const0> ;
  assign avs_readdata_s4[109] = \<const0> ;
  assign avs_readdata_s4[108] = \<const0> ;
  assign avs_readdata_s4[107] = \<const0> ;
  assign avs_readdata_s4[106] = \<const0> ;
  assign avs_readdata_s4[105] = \<const0> ;
  assign avs_readdata_s4[104] = \<const0> ;
  assign avs_readdata_s4[103] = \<const0> ;
  assign avs_readdata_s4[102] = \<const0> ;
  assign avs_readdata_s4[101] = \<const0> ;
  assign avs_readdata_s4[100] = \<const0> ;
  assign avs_readdata_s4[99] = \<const0> ;
  assign avs_readdata_s4[98] = \<const0> ;
  assign avs_readdata_s4[97] = \<const0> ;
  assign avs_readdata_s4[96] = \<const0> ;
  assign avs_readdata_s4[95] = \<const0> ;
  assign avs_readdata_s4[94] = \<const0> ;
  assign avs_readdata_s4[93] = \<const0> ;
  assign avs_readdata_s4[92] = \<const0> ;
  assign avs_readdata_s4[91] = \<const0> ;
  assign avs_readdata_s4[90] = \<const0> ;
  assign avs_readdata_s4[89] = \<const0> ;
  assign avs_readdata_s4[88] = \<const0> ;
  assign avs_readdata_s4[87] = \<const0> ;
  assign avs_readdata_s4[86] = \<const0> ;
  assign avs_readdata_s4[85] = \<const0> ;
  assign avs_readdata_s4[84] = \<const0> ;
  assign avs_readdata_s4[83] = \<const0> ;
  assign avs_readdata_s4[82] = \<const0> ;
  assign avs_readdata_s4[81] = \<const0> ;
  assign avs_readdata_s4[80] = \<const0> ;
  assign avs_readdata_s4[79] = \<const0> ;
  assign avs_readdata_s4[78] = \<const0> ;
  assign avs_readdata_s4[77] = \<const0> ;
  assign avs_readdata_s4[76] = \<const0> ;
  assign avs_readdata_s4[75] = \<const0> ;
  assign avs_readdata_s4[74] = \<const0> ;
  assign avs_readdata_s4[73] = \<const0> ;
  assign avs_readdata_s4[72] = \<const0> ;
  assign avs_readdata_s4[71] = \<const0> ;
  assign avs_readdata_s4[70] = \<const0> ;
  assign avs_readdata_s4[69] = \<const0> ;
  assign avs_readdata_s4[68] = \<const0> ;
  assign avs_readdata_s4[67] = \<const0> ;
  assign avs_readdata_s4[66] = \<const0> ;
  assign avs_readdata_s4[65] = \<const0> ;
  assign avs_readdata_s4[64] = \<const0> ;
  assign avs_readdata_s4[63] = \<const0> ;
  assign avs_readdata_s4[62] = \<const0> ;
  assign avs_readdata_s4[61] = \<const0> ;
  assign avs_readdata_s4[60] = \<const0> ;
  assign avs_readdata_s4[59] = \<const0> ;
  assign avs_readdata_s4[58] = \<const0> ;
  assign avs_readdata_s4[57] = \<const0> ;
  assign avs_readdata_s4[56] = \<const0> ;
  assign avs_readdata_s4[55] = \<const0> ;
  assign avs_readdata_s4[54] = \<const0> ;
  assign avs_readdata_s4[53] = \<const0> ;
  assign avs_readdata_s4[52] = \<const0> ;
  assign avs_readdata_s4[51] = \<const0> ;
  assign avs_readdata_s4[50] = \<const0> ;
  assign avs_readdata_s4[49] = \<const0> ;
  assign avs_readdata_s4[48] = \<const0> ;
  assign avs_readdata_s4[47] = \<const0> ;
  assign avs_readdata_s4[46] = \<const0> ;
  assign avs_readdata_s4[45] = \<const0> ;
  assign avs_readdata_s4[44] = \<const0> ;
  assign avs_readdata_s4[43] = \<const0> ;
  assign avs_readdata_s4[42] = \<const0> ;
  assign avs_readdata_s4[41] = \<const0> ;
  assign avs_readdata_s4[40] = \<const0> ;
  assign avs_readdata_s4[39] = \<const0> ;
  assign avs_readdata_s4[38] = \<const0> ;
  assign avs_readdata_s4[37] = \<const0> ;
  assign avs_readdata_s4[36] = \<const0> ;
  assign avs_readdata_s4[35] = \<const0> ;
  assign avs_readdata_s4[34] = \<const0> ;
  assign avs_readdata_s4[33] = \<const0> ;
  assign avs_readdata_s4[32] = \<const0> ;
  assign avs_readdata_s4[31] = \<const0> ;
  assign avs_readdata_s4[30] = \<const0> ;
  assign avs_readdata_s4[29] = \<const0> ;
  assign avs_readdata_s4[28] = \<const0> ;
  assign avs_readdata_s4[27] = \<const0> ;
  assign avs_readdata_s4[26] = \<const0> ;
  assign avs_readdata_s4[25] = \<const0> ;
  assign avs_readdata_s4[24] = \<const0> ;
  assign avs_readdata_s4[23] = \<const0> ;
  assign avs_readdata_s4[22] = \<const0> ;
  assign avs_readdata_s4[21] = \<const0> ;
  assign avs_readdata_s4[20] = \<const0> ;
  assign avs_readdata_s4[19] = \<const0> ;
  assign avs_readdata_s4[18] = \<const0> ;
  assign avs_readdata_s4[17] = \<const0> ;
  assign avs_readdata_s4[16] = \<const0> ;
  assign avs_readdata_s4[15] = \<const0> ;
  assign avs_readdata_s4[14] = \<const0> ;
  assign avs_readdata_s4[13] = \<const0> ;
  assign avs_readdata_s4[12] = \<const0> ;
  assign avs_readdata_s4[11] = \<const0> ;
  assign avs_readdata_s4[10] = \<const0> ;
  assign avs_readdata_s4[9] = \<const0> ;
  assign avs_readdata_s4[8] = \<const0> ;
  assign avs_readdata_s4[7] = \<const0> ;
  assign avs_readdata_s4[6] = \<const0> ;
  assign avs_readdata_s4[5] = \<const0> ;
  assign avs_readdata_s4[4] = \<const0> ;
  assign avs_readdata_s4[3] = \<const0> ;
  assign avs_readdata_s4[2] = \<const0> ;
  assign avs_readdata_s4[1] = \<const0> ;
  assign avs_readdata_s4[0] = \<const0> ;
  assign avs_readdata_s5[127] = \<const0> ;
  assign avs_readdata_s5[126] = \<const0> ;
  assign avs_readdata_s5[125] = \<const0> ;
  assign avs_readdata_s5[124] = \<const0> ;
  assign avs_readdata_s5[123] = \<const0> ;
  assign avs_readdata_s5[122] = \<const0> ;
  assign avs_readdata_s5[121] = \<const0> ;
  assign avs_readdata_s5[120] = \<const0> ;
  assign avs_readdata_s5[119] = \<const0> ;
  assign avs_readdata_s5[118] = \<const0> ;
  assign avs_readdata_s5[117] = \<const0> ;
  assign avs_readdata_s5[116] = \<const0> ;
  assign avs_readdata_s5[115] = \<const0> ;
  assign avs_readdata_s5[114] = \<const0> ;
  assign avs_readdata_s5[113] = \<const0> ;
  assign avs_readdata_s5[112] = \<const0> ;
  assign avs_readdata_s5[111] = \<const0> ;
  assign avs_readdata_s5[110] = \<const0> ;
  assign avs_readdata_s5[109] = \<const0> ;
  assign avs_readdata_s5[108] = \<const0> ;
  assign avs_readdata_s5[107] = \<const0> ;
  assign avs_readdata_s5[106] = \<const0> ;
  assign avs_readdata_s5[105] = \<const0> ;
  assign avs_readdata_s5[104] = \<const0> ;
  assign avs_readdata_s5[103] = \<const0> ;
  assign avs_readdata_s5[102] = \<const0> ;
  assign avs_readdata_s5[101] = \<const0> ;
  assign avs_readdata_s5[100] = \<const0> ;
  assign avs_readdata_s5[99] = \<const0> ;
  assign avs_readdata_s5[98] = \<const0> ;
  assign avs_readdata_s5[97] = \<const0> ;
  assign avs_readdata_s5[96] = \<const0> ;
  assign avs_readdata_s5[95] = \<const0> ;
  assign avs_readdata_s5[94] = \<const0> ;
  assign avs_readdata_s5[93] = \<const0> ;
  assign avs_readdata_s5[92] = \<const0> ;
  assign avs_readdata_s5[91] = \<const0> ;
  assign avs_readdata_s5[90] = \<const0> ;
  assign avs_readdata_s5[89] = \<const0> ;
  assign avs_readdata_s5[88] = \<const0> ;
  assign avs_readdata_s5[87] = \<const0> ;
  assign avs_readdata_s5[86] = \<const0> ;
  assign avs_readdata_s5[85] = \<const0> ;
  assign avs_readdata_s5[84] = \<const0> ;
  assign avs_readdata_s5[83] = \<const0> ;
  assign avs_readdata_s5[82] = \<const0> ;
  assign avs_readdata_s5[81] = \<const0> ;
  assign avs_readdata_s5[80] = \<const0> ;
  assign avs_readdata_s5[79] = \<const0> ;
  assign avs_readdata_s5[78] = \<const0> ;
  assign avs_readdata_s5[77] = \<const0> ;
  assign avs_readdata_s5[76] = \<const0> ;
  assign avs_readdata_s5[75] = \<const0> ;
  assign avs_readdata_s5[74] = \<const0> ;
  assign avs_readdata_s5[73] = \<const0> ;
  assign avs_readdata_s5[72] = \<const0> ;
  assign avs_readdata_s5[71] = \<const0> ;
  assign avs_readdata_s5[70] = \<const0> ;
  assign avs_readdata_s5[69] = \<const0> ;
  assign avs_readdata_s5[68] = \<const0> ;
  assign avs_readdata_s5[67] = \<const0> ;
  assign avs_readdata_s5[66] = \<const0> ;
  assign avs_readdata_s5[65] = \<const0> ;
  assign avs_readdata_s5[64] = \<const0> ;
  assign avs_readdata_s5[63] = \<const0> ;
  assign avs_readdata_s5[62] = \<const0> ;
  assign avs_readdata_s5[61] = \<const0> ;
  assign avs_readdata_s5[60] = \<const0> ;
  assign avs_readdata_s5[59] = \<const0> ;
  assign avs_readdata_s5[58] = \<const0> ;
  assign avs_readdata_s5[57] = \<const0> ;
  assign avs_readdata_s5[56] = \<const0> ;
  assign avs_readdata_s5[55] = \<const0> ;
  assign avs_readdata_s5[54] = \<const0> ;
  assign avs_readdata_s5[53] = \<const0> ;
  assign avs_readdata_s5[52] = \<const0> ;
  assign avs_readdata_s5[51] = \<const0> ;
  assign avs_readdata_s5[50] = \<const0> ;
  assign avs_readdata_s5[49] = \<const0> ;
  assign avs_readdata_s5[48] = \<const0> ;
  assign avs_readdata_s5[47] = \<const0> ;
  assign avs_readdata_s5[46] = \<const0> ;
  assign avs_readdata_s5[45] = \<const0> ;
  assign avs_readdata_s5[44] = \<const0> ;
  assign avs_readdata_s5[43] = \<const0> ;
  assign avs_readdata_s5[42] = \<const0> ;
  assign avs_readdata_s5[41] = \<const0> ;
  assign avs_readdata_s5[40] = \<const0> ;
  assign avs_readdata_s5[39] = \<const0> ;
  assign avs_readdata_s5[38] = \<const0> ;
  assign avs_readdata_s5[37] = \<const0> ;
  assign avs_readdata_s5[36] = \<const0> ;
  assign avs_readdata_s5[35] = \<const0> ;
  assign avs_readdata_s5[34] = \<const0> ;
  assign avs_readdata_s5[33] = \<const0> ;
  assign avs_readdata_s5[32] = \<const0> ;
  assign avs_readdata_s5[31] = \<const0> ;
  assign avs_readdata_s5[30] = \<const0> ;
  assign avs_readdata_s5[29] = \<const0> ;
  assign avs_readdata_s5[28] = \<const0> ;
  assign avs_readdata_s5[27] = \<const0> ;
  assign avs_readdata_s5[26] = \<const0> ;
  assign avs_readdata_s5[25] = \<const0> ;
  assign avs_readdata_s5[24] = \<const0> ;
  assign avs_readdata_s5[23] = \<const0> ;
  assign avs_readdata_s5[22] = \<const0> ;
  assign avs_readdata_s5[21] = \<const0> ;
  assign avs_readdata_s5[20] = \<const0> ;
  assign avs_readdata_s5[19] = \<const0> ;
  assign avs_readdata_s5[18] = \<const0> ;
  assign avs_readdata_s5[17] = \<const0> ;
  assign avs_readdata_s5[16] = \<const0> ;
  assign avs_readdata_s5[15] = \<const0> ;
  assign avs_readdata_s5[14] = \<const0> ;
  assign avs_readdata_s5[13] = \<const0> ;
  assign avs_readdata_s5[12] = \<const0> ;
  assign avs_readdata_s5[11] = \<const0> ;
  assign avs_readdata_s5[10] = \<const0> ;
  assign avs_readdata_s5[9] = \<const0> ;
  assign avs_readdata_s5[8] = \<const0> ;
  assign avs_readdata_s5[7] = \<const0> ;
  assign avs_readdata_s5[6] = \<const0> ;
  assign avs_readdata_s5[5] = \<const0> ;
  assign avs_readdata_s5[4] = \<const0> ;
  assign avs_readdata_s5[3] = \<const0> ;
  assign avs_readdata_s5[2] = \<const0> ;
  assign avs_readdata_s5[1] = \<const0> ;
  assign avs_readdata_s5[0] = \<const0> ;
  assign avs_readdata_s6[127] = \<const0> ;
  assign avs_readdata_s6[126] = \<const0> ;
  assign avs_readdata_s6[125] = \<const0> ;
  assign avs_readdata_s6[124] = \<const0> ;
  assign avs_readdata_s6[123] = \<const0> ;
  assign avs_readdata_s6[122] = \<const0> ;
  assign avs_readdata_s6[121] = \<const0> ;
  assign avs_readdata_s6[120] = \<const0> ;
  assign avs_readdata_s6[119] = \<const0> ;
  assign avs_readdata_s6[118] = \<const0> ;
  assign avs_readdata_s6[117] = \<const0> ;
  assign avs_readdata_s6[116] = \<const0> ;
  assign avs_readdata_s6[115] = \<const0> ;
  assign avs_readdata_s6[114] = \<const0> ;
  assign avs_readdata_s6[113] = \<const0> ;
  assign avs_readdata_s6[112] = \<const0> ;
  assign avs_readdata_s6[111] = \<const0> ;
  assign avs_readdata_s6[110] = \<const0> ;
  assign avs_readdata_s6[109] = \<const0> ;
  assign avs_readdata_s6[108] = \<const0> ;
  assign avs_readdata_s6[107] = \<const0> ;
  assign avs_readdata_s6[106] = \<const0> ;
  assign avs_readdata_s6[105] = \<const0> ;
  assign avs_readdata_s6[104] = \<const0> ;
  assign avs_readdata_s6[103] = \<const0> ;
  assign avs_readdata_s6[102] = \<const0> ;
  assign avs_readdata_s6[101] = \<const0> ;
  assign avs_readdata_s6[100] = \<const0> ;
  assign avs_readdata_s6[99] = \<const0> ;
  assign avs_readdata_s6[98] = \<const0> ;
  assign avs_readdata_s6[97] = \<const0> ;
  assign avs_readdata_s6[96] = \<const0> ;
  assign avs_readdata_s6[95] = \<const0> ;
  assign avs_readdata_s6[94] = \<const0> ;
  assign avs_readdata_s6[93] = \<const0> ;
  assign avs_readdata_s6[92] = \<const0> ;
  assign avs_readdata_s6[91] = \<const0> ;
  assign avs_readdata_s6[90] = \<const0> ;
  assign avs_readdata_s6[89] = \<const0> ;
  assign avs_readdata_s6[88] = \<const0> ;
  assign avs_readdata_s6[87] = \<const0> ;
  assign avs_readdata_s6[86] = \<const0> ;
  assign avs_readdata_s6[85] = \<const0> ;
  assign avs_readdata_s6[84] = \<const0> ;
  assign avs_readdata_s6[83] = \<const0> ;
  assign avs_readdata_s6[82] = \<const0> ;
  assign avs_readdata_s6[81] = \<const0> ;
  assign avs_readdata_s6[80] = \<const0> ;
  assign avs_readdata_s6[79] = \<const0> ;
  assign avs_readdata_s6[78] = \<const0> ;
  assign avs_readdata_s6[77] = \<const0> ;
  assign avs_readdata_s6[76] = \<const0> ;
  assign avs_readdata_s6[75] = \<const0> ;
  assign avs_readdata_s6[74] = \<const0> ;
  assign avs_readdata_s6[73] = \<const0> ;
  assign avs_readdata_s6[72] = \<const0> ;
  assign avs_readdata_s6[71] = \<const0> ;
  assign avs_readdata_s6[70] = \<const0> ;
  assign avs_readdata_s6[69] = \<const0> ;
  assign avs_readdata_s6[68] = \<const0> ;
  assign avs_readdata_s6[67] = \<const0> ;
  assign avs_readdata_s6[66] = \<const0> ;
  assign avs_readdata_s6[65] = \<const0> ;
  assign avs_readdata_s6[64] = \<const0> ;
  assign avs_readdata_s6[63] = \<const0> ;
  assign avs_readdata_s6[62] = \<const0> ;
  assign avs_readdata_s6[61] = \<const0> ;
  assign avs_readdata_s6[60] = \<const0> ;
  assign avs_readdata_s6[59] = \<const0> ;
  assign avs_readdata_s6[58] = \<const0> ;
  assign avs_readdata_s6[57] = \<const0> ;
  assign avs_readdata_s6[56] = \<const0> ;
  assign avs_readdata_s6[55] = \<const0> ;
  assign avs_readdata_s6[54] = \<const0> ;
  assign avs_readdata_s6[53] = \<const0> ;
  assign avs_readdata_s6[52] = \<const0> ;
  assign avs_readdata_s6[51] = \<const0> ;
  assign avs_readdata_s6[50] = \<const0> ;
  assign avs_readdata_s6[49] = \<const0> ;
  assign avs_readdata_s6[48] = \<const0> ;
  assign avs_readdata_s6[47] = \<const0> ;
  assign avs_readdata_s6[46] = \<const0> ;
  assign avs_readdata_s6[45] = \<const0> ;
  assign avs_readdata_s6[44] = \<const0> ;
  assign avs_readdata_s6[43] = \<const0> ;
  assign avs_readdata_s6[42] = \<const0> ;
  assign avs_readdata_s6[41] = \<const0> ;
  assign avs_readdata_s6[40] = \<const0> ;
  assign avs_readdata_s6[39] = \<const0> ;
  assign avs_readdata_s6[38] = \<const0> ;
  assign avs_readdata_s6[37] = \<const0> ;
  assign avs_readdata_s6[36] = \<const0> ;
  assign avs_readdata_s6[35] = \<const0> ;
  assign avs_readdata_s6[34] = \<const0> ;
  assign avs_readdata_s6[33] = \<const0> ;
  assign avs_readdata_s6[32] = \<const0> ;
  assign avs_readdata_s6[31] = \<const0> ;
  assign avs_readdata_s6[30] = \<const0> ;
  assign avs_readdata_s6[29] = \<const0> ;
  assign avs_readdata_s6[28] = \<const0> ;
  assign avs_readdata_s6[27] = \<const0> ;
  assign avs_readdata_s6[26] = \<const0> ;
  assign avs_readdata_s6[25] = \<const0> ;
  assign avs_readdata_s6[24] = \<const0> ;
  assign avs_readdata_s6[23] = \<const0> ;
  assign avs_readdata_s6[22] = \<const0> ;
  assign avs_readdata_s6[21] = \<const0> ;
  assign avs_readdata_s6[20] = \<const0> ;
  assign avs_readdata_s6[19] = \<const0> ;
  assign avs_readdata_s6[18] = \<const0> ;
  assign avs_readdata_s6[17] = \<const0> ;
  assign avs_readdata_s6[16] = \<const0> ;
  assign avs_readdata_s6[15] = \<const0> ;
  assign avs_readdata_s6[14] = \<const0> ;
  assign avs_readdata_s6[13] = \<const0> ;
  assign avs_readdata_s6[12] = \<const0> ;
  assign avs_readdata_s6[11] = \<const0> ;
  assign avs_readdata_s6[10] = \<const0> ;
  assign avs_readdata_s6[9] = \<const0> ;
  assign avs_readdata_s6[8] = \<const0> ;
  assign avs_readdata_s6[7] = \<const0> ;
  assign avs_readdata_s6[6] = \<const0> ;
  assign avs_readdata_s6[5] = \<const0> ;
  assign avs_readdata_s6[4] = \<const0> ;
  assign avs_readdata_s6[3] = \<const0> ;
  assign avs_readdata_s6[2] = \<const0> ;
  assign avs_readdata_s6[1] = \<const0> ;
  assign avs_readdata_s6[0] = \<const0> ;
  assign avs_readdata_s7[127] = \<const0> ;
  assign avs_readdata_s7[126] = \<const0> ;
  assign avs_readdata_s7[125] = \<const0> ;
  assign avs_readdata_s7[124] = \<const0> ;
  assign avs_readdata_s7[123] = \<const0> ;
  assign avs_readdata_s7[122] = \<const0> ;
  assign avs_readdata_s7[121] = \<const0> ;
  assign avs_readdata_s7[120] = \<const0> ;
  assign avs_readdata_s7[119] = \<const0> ;
  assign avs_readdata_s7[118] = \<const0> ;
  assign avs_readdata_s7[117] = \<const0> ;
  assign avs_readdata_s7[116] = \<const0> ;
  assign avs_readdata_s7[115] = \<const0> ;
  assign avs_readdata_s7[114] = \<const0> ;
  assign avs_readdata_s7[113] = \<const0> ;
  assign avs_readdata_s7[112] = \<const0> ;
  assign avs_readdata_s7[111] = \<const0> ;
  assign avs_readdata_s7[110] = \<const0> ;
  assign avs_readdata_s7[109] = \<const0> ;
  assign avs_readdata_s7[108] = \<const0> ;
  assign avs_readdata_s7[107] = \<const0> ;
  assign avs_readdata_s7[106] = \<const0> ;
  assign avs_readdata_s7[105] = \<const0> ;
  assign avs_readdata_s7[104] = \<const0> ;
  assign avs_readdata_s7[103] = \<const0> ;
  assign avs_readdata_s7[102] = \<const0> ;
  assign avs_readdata_s7[101] = \<const0> ;
  assign avs_readdata_s7[100] = \<const0> ;
  assign avs_readdata_s7[99] = \<const0> ;
  assign avs_readdata_s7[98] = \<const0> ;
  assign avs_readdata_s7[97] = \<const0> ;
  assign avs_readdata_s7[96] = \<const0> ;
  assign avs_readdata_s7[95] = \<const0> ;
  assign avs_readdata_s7[94] = \<const0> ;
  assign avs_readdata_s7[93] = \<const0> ;
  assign avs_readdata_s7[92] = \<const0> ;
  assign avs_readdata_s7[91] = \<const0> ;
  assign avs_readdata_s7[90] = \<const0> ;
  assign avs_readdata_s7[89] = \<const0> ;
  assign avs_readdata_s7[88] = \<const0> ;
  assign avs_readdata_s7[87] = \<const0> ;
  assign avs_readdata_s7[86] = \<const0> ;
  assign avs_readdata_s7[85] = \<const0> ;
  assign avs_readdata_s7[84] = \<const0> ;
  assign avs_readdata_s7[83] = \<const0> ;
  assign avs_readdata_s7[82] = \<const0> ;
  assign avs_readdata_s7[81] = \<const0> ;
  assign avs_readdata_s7[80] = \<const0> ;
  assign avs_readdata_s7[79] = \<const0> ;
  assign avs_readdata_s7[78] = \<const0> ;
  assign avs_readdata_s7[77] = \<const0> ;
  assign avs_readdata_s7[76] = \<const0> ;
  assign avs_readdata_s7[75] = \<const0> ;
  assign avs_readdata_s7[74] = \<const0> ;
  assign avs_readdata_s7[73] = \<const0> ;
  assign avs_readdata_s7[72] = \<const0> ;
  assign avs_readdata_s7[71] = \<const0> ;
  assign avs_readdata_s7[70] = \<const0> ;
  assign avs_readdata_s7[69] = \<const0> ;
  assign avs_readdata_s7[68] = \<const0> ;
  assign avs_readdata_s7[67] = \<const0> ;
  assign avs_readdata_s7[66] = \<const0> ;
  assign avs_readdata_s7[65] = \<const0> ;
  assign avs_readdata_s7[64] = \<const0> ;
  assign avs_readdata_s7[63] = \<const0> ;
  assign avs_readdata_s7[62] = \<const0> ;
  assign avs_readdata_s7[61] = \<const0> ;
  assign avs_readdata_s7[60] = \<const0> ;
  assign avs_readdata_s7[59] = \<const0> ;
  assign avs_readdata_s7[58] = \<const0> ;
  assign avs_readdata_s7[57] = \<const0> ;
  assign avs_readdata_s7[56] = \<const0> ;
  assign avs_readdata_s7[55] = \<const0> ;
  assign avs_readdata_s7[54] = \<const0> ;
  assign avs_readdata_s7[53] = \<const0> ;
  assign avs_readdata_s7[52] = \<const0> ;
  assign avs_readdata_s7[51] = \<const0> ;
  assign avs_readdata_s7[50] = \<const0> ;
  assign avs_readdata_s7[49] = \<const0> ;
  assign avs_readdata_s7[48] = \<const0> ;
  assign avs_readdata_s7[47] = \<const0> ;
  assign avs_readdata_s7[46] = \<const0> ;
  assign avs_readdata_s7[45] = \<const0> ;
  assign avs_readdata_s7[44] = \<const0> ;
  assign avs_readdata_s7[43] = \<const0> ;
  assign avs_readdata_s7[42] = \<const0> ;
  assign avs_readdata_s7[41] = \<const0> ;
  assign avs_readdata_s7[40] = \<const0> ;
  assign avs_readdata_s7[39] = \<const0> ;
  assign avs_readdata_s7[38] = \<const0> ;
  assign avs_readdata_s7[37] = \<const0> ;
  assign avs_readdata_s7[36] = \<const0> ;
  assign avs_readdata_s7[35] = \<const0> ;
  assign avs_readdata_s7[34] = \<const0> ;
  assign avs_readdata_s7[33] = \<const0> ;
  assign avs_readdata_s7[32] = \<const0> ;
  assign avs_readdata_s7[31] = \<const0> ;
  assign avs_readdata_s7[30] = \<const0> ;
  assign avs_readdata_s7[29] = \<const0> ;
  assign avs_readdata_s7[28] = \<const0> ;
  assign avs_readdata_s7[27] = \<const0> ;
  assign avs_readdata_s7[26] = \<const0> ;
  assign avs_readdata_s7[25] = \<const0> ;
  assign avs_readdata_s7[24] = \<const0> ;
  assign avs_readdata_s7[23] = \<const0> ;
  assign avs_readdata_s7[22] = \<const0> ;
  assign avs_readdata_s7[21] = \<const0> ;
  assign avs_readdata_s7[20] = \<const0> ;
  assign avs_readdata_s7[19] = \<const0> ;
  assign avs_readdata_s7[18] = \<const0> ;
  assign avs_readdata_s7[17] = \<const0> ;
  assign avs_readdata_s7[16] = \<const0> ;
  assign avs_readdata_s7[15] = \<const0> ;
  assign avs_readdata_s7[14] = \<const0> ;
  assign avs_readdata_s7[13] = \<const0> ;
  assign avs_readdata_s7[12] = \<const0> ;
  assign avs_readdata_s7[11] = \<const0> ;
  assign avs_readdata_s7[10] = \<const0> ;
  assign avs_readdata_s7[9] = \<const0> ;
  assign avs_readdata_s7[8] = \<const0> ;
  assign avs_readdata_s7[7] = \<const0> ;
  assign avs_readdata_s7[6] = \<const0> ;
  assign avs_readdata_s7[5] = \<const0> ;
  assign avs_readdata_s7[4] = \<const0> ;
  assign avs_readdata_s7[3] = \<const0> ;
  assign avs_readdata_s7[2] = \<const0> ;
  assign avs_readdata_s7[1] = \<const0> ;
  assign avs_readdata_s7[0] = \<const0> ;
  assign avs_readdatavalid_s1 = \<const0> ;
  assign avs_readdatavalid_s2 = \<const0> ;
  assign avs_readdatavalid_s3 = \<const0> ;
  assign avs_readdatavalid_s4 = \<const0> ;
  assign avs_readdatavalid_s5 = \<const0> ;
  assign avs_readdatavalid_s6 = \<const0> ;
  assign avs_readdatavalid_s7 = \<const0> ;
  assign avs_waitrequest_s1 = \<const1> ;
  assign avs_waitrequest_s2 = \<const1> ;
  assign avs_waitrequest_s3 = \<const1> ;
  assign avs_waitrequest_s4 = \<const1> ;
  assign avs_waitrequest_s5 = \<const1> ;
  assign avs_waitrequest_s6 = \<const1> ;
  assign avs_waitrequest_s7 = \<const1> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \^m_axi_arburst [0];
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const1> ;
  assign m_axi_arcache[0] = \<const1> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arsize[2] = \^m_axi_arsize [2];
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[3] = \<const0> ;
  assign m_axi_aruser[2] = \<const0> ;
  assign m_axi_aruser[1] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[3] = \<const0> ;
  assign m_axi_awuser[2] = \<const0> ;
  assign m_axi_awuser[1] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_wdata[127] = \<const0> ;
  assign m_axi_wdata[126] = \<const0> ;
  assign m_axi_wdata[125] = \<const0> ;
  assign m_axi_wdata[124] = \<const0> ;
  assign m_axi_wdata[123] = \<const0> ;
  assign m_axi_wdata[122] = \<const0> ;
  assign m_axi_wdata[121] = \<const0> ;
  assign m_axi_wdata[120] = \<const0> ;
  assign m_axi_wdata[119] = \<const0> ;
  assign m_axi_wdata[118] = \<const0> ;
  assign m_axi_wdata[117] = \<const0> ;
  assign m_axi_wdata[116] = \<const0> ;
  assign m_axi_wdata[115] = \<const0> ;
  assign m_axi_wdata[114] = \<const0> ;
  assign m_axi_wdata[113] = \<const0> ;
  assign m_axi_wdata[112] = \<const0> ;
  assign m_axi_wdata[111] = \<const0> ;
  assign m_axi_wdata[110] = \<const0> ;
  assign m_axi_wdata[109] = \<const0> ;
  assign m_axi_wdata[108] = \<const0> ;
  assign m_axi_wdata[107] = \<const0> ;
  assign m_axi_wdata[106] = \<const0> ;
  assign m_axi_wdata[105] = \<const0> ;
  assign m_axi_wdata[104] = \<const0> ;
  assign m_axi_wdata[103] = \<const0> ;
  assign m_axi_wdata[102] = \<const0> ;
  assign m_axi_wdata[101] = \<const0> ;
  assign m_axi_wdata[100] = \<const0> ;
  assign m_axi_wdata[99] = \<const0> ;
  assign m_axi_wdata[98] = \<const0> ;
  assign m_axi_wdata[97] = \<const0> ;
  assign m_axi_wdata[96] = \<const0> ;
  assign m_axi_wdata[95] = \<const0> ;
  assign m_axi_wdata[94] = \<const0> ;
  assign m_axi_wdata[93] = \<const0> ;
  assign m_axi_wdata[92] = \<const0> ;
  assign m_axi_wdata[91] = \<const0> ;
  assign m_axi_wdata[90] = \<const0> ;
  assign m_axi_wdata[89] = \<const0> ;
  assign m_axi_wdata[88] = \<const0> ;
  assign m_axi_wdata[87] = \<const0> ;
  assign m_axi_wdata[86] = \<const0> ;
  assign m_axi_wdata[85] = \<const0> ;
  assign m_axi_wdata[84] = \<const0> ;
  assign m_axi_wdata[83] = \<const0> ;
  assign m_axi_wdata[82] = \<const0> ;
  assign m_axi_wdata[81] = \<const0> ;
  assign m_axi_wdata[80] = \<const0> ;
  assign m_axi_wdata[79] = \<const0> ;
  assign m_axi_wdata[78] = \<const0> ;
  assign m_axi_wdata[77] = \<const0> ;
  assign m_axi_wdata[76] = \<const0> ;
  assign m_axi_wdata[75] = \<const0> ;
  assign m_axi_wdata[74] = \<const0> ;
  assign m_axi_wdata[73] = \<const0> ;
  assign m_axi_wdata[72] = \<const0> ;
  assign m_axi_wdata[71] = \<const0> ;
  assign m_axi_wdata[70] = \<const0> ;
  assign m_axi_wdata[69] = \<const0> ;
  assign m_axi_wdata[68] = \<const0> ;
  assign m_axi_wdata[67] = \<const0> ;
  assign m_axi_wdata[66] = \<const0> ;
  assign m_axi_wdata[65] = \<const0> ;
  assign m_axi_wdata[64] = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[15] = \<const0> ;
  assign m_axi_wstrb[14] = \<const0> ;
  assign m_axi_wstrb[13] = \<const0> ;
  assign m_axi_wstrb[12] = \<const0> ;
  assign m_axi_wstrb[11] = \<const0> ;
  assign m_axi_wstrb[10] = \<const0> ;
  assign m_axi_wstrb[9] = \<const0> ;
  assign m_axi_wstrb[8] = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign read_error_master_ID[2] = \<const0> ;
  assign read_error_master_ID[1] = \<const0> ;
  assign read_error_master_ID[0] = \<const0> ;
  assign write_error = \<const0> ;
  assign write_error_master_ID[2] = \<const0> ;
  assign write_error_master_ID[1] = \<const0> ;
  assign write_error_master_ID[0] = \<const0> ;
  assign write_error_valid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  amm_bridge_axi_datamover I_DATAMOVER
       (.D({address,burstcount_reg}),
        .E(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/sig_push_regfifo ),
        .aresetn(aresetn),
        .clk(clk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(\^m_axi_arburst ),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(\^m_axi_arsize ),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .mm2s_cmd_ready(mm2s_cmd_ready),
        .mm2s_cmd_valid(mm2s_cmd_valid),
        .read_error(read_error),
        .read_error_valid(read_error_valid),
        .sig_dqual_reg_full_reg(avs_readdatavalid_s0));
  amm_bridge_amm_axi_bridge_v1_0_4_read_multi \READ_TOP.amm_axi_bridge_v1_0_4_read_multi_top_1 
       (.D({address,burstcount_reg}),
        .E(\GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_CMD_STATUS/I_CMD_FIFO/sig_push_regfifo ),
        .aresetn(aresetn),
        .avs_address_s0(avs_address_s0),
        .avs_burstcount_s0(avs_burstcount_s0),
        .avs_read_s0(avs_read_s0),
        .avs_waitrequest_s0(avs_waitrequest_s0),
        .clk(clk),
        .mm2s_cmd_ready(mm2s_cmd_ready),
        .mm2s_cmd_valid(mm2s_cmd_valid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* CHECK_LICENSE_TYPE = "amm_bridge,amm_axi_bridge_v1_0_4_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "amm_axi_bridge_v1_0_4_top,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module amm_bridge
   (clk,
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
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  output read_error;
  output read_error_valid;
  output [2:0]read_error_master_ID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 Avalon_S0 ADDRESS" *) input [31:0]avs_address_s0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 Avalon_S0 READ" *) input avs_read_s0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 Avalon_S0 READDATA" *) output [127:0]avs_readdata_s0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 Avalon_S0 READDATAVALID" *) output avs_readdatavalid_s0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 Avalon_S0 WAITREQUEST" *) output avs_waitrequest_s0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 Avalon_S0 BURSTCOUNT" *) input [10:0]avs_burstcount_s0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARUSER" *) output [3:0]m_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [127:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 4, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire aresetn;
  wire [31:0]avs_address_s0;
  wire [10:0]avs_burstcount_s0;
  wire avs_read_s0;
  wire [127:0]avs_readdata_s0;
  wire avs_readdatavalid_s0;
  wire avs_waitrequest_s0;
  wire clk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire [3:0]m_axi_aruser;
  wire m_axi_arvalid;
  wire [127:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire read_error;
  wire [2:0]read_error_master_ID;
  wire read_error_valid;
  wire NLW_inst_avs_readdatavalid_s1_UNCONNECTED;
  wire NLW_inst_avs_readdatavalid_s2_UNCONNECTED;
  wire NLW_inst_avs_readdatavalid_s3_UNCONNECTED;
  wire NLW_inst_avs_readdatavalid_s4_UNCONNECTED;
  wire NLW_inst_avs_readdatavalid_s5_UNCONNECTED;
  wire NLW_inst_avs_readdatavalid_s6_UNCONNECTED;
  wire NLW_inst_avs_readdatavalid_s7_UNCONNECTED;
  wire NLW_inst_avs_waitrequest_s1_UNCONNECTED;
  wire NLW_inst_avs_waitrequest_s2_UNCONNECTED;
  wire NLW_inst_avs_waitrequest_s3_UNCONNECTED;
  wire NLW_inst_avs_waitrequest_s4_UNCONNECTED;
  wire NLW_inst_avs_waitrequest_s5_UNCONNECTED;
  wire NLW_inst_avs_waitrequest_s6_UNCONNECTED;
  wire NLW_inst_avs_waitrequest_s7_UNCONNECTED;
  wire NLW_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_bready_UNCONNECTED;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_inst_write_error_UNCONNECTED;
  wire NLW_inst_write_error_valid_UNCONNECTED;
  wire [127:0]NLW_inst_avs_readdata_s1_UNCONNECTED;
  wire [127:0]NLW_inst_avs_readdata_s2_UNCONNECTED;
  wire [127:0]NLW_inst_avs_readdata_s3_UNCONNECTED;
  wire [127:0]NLW_inst_avs_readdata_s4_UNCONNECTED;
  wire [127:0]NLW_inst_avs_readdata_s5_UNCONNECTED;
  wire [127:0]NLW_inst_avs_readdata_s6_UNCONNECTED;
  wire [127:0]NLW_inst_avs_readdata_s7_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awprot_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [127:0]NLW_inst_m_axi_wdata_UNCONNECTED;
  wire [15:0]NLW_inst_m_axi_wstrb_UNCONNECTED;
  wire [2:0]NLW_inst_write_error_master_ID_UNCONNECTED;

  (* C_AVA_ADDR_WIDTH = "32" *) 
  (* C_AVA_BURSTCOUNTWIDTH = "11" *) 
  (* C_AVA_BYTEENABLES = "0" *) 
  (* C_AVA_DATA_WIDTH = "128" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_ENABLE_PIPELINE = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_INCLUDE_MM2S = "1" *) 
  (* C_INCLUDE_S2MM = "0" *) 
  (* C_MODE = "0" *) 
  (* C_M_AXI_ADDR_WIDTH = "32" *) 
  (* C_NUM_MASTERS = "1" *) 
  (* C_PIPELINE_DEPTH = "1" *) 
  (* C_STATUSWIDTH = "8" *) 
  amm_bridge_amm_axi_bridge_v1_0_4_top inst
       (.aresetn(aresetn),
        .avs_address_s0(avs_address_s0),
        .avs_address_s1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_address_s2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_address_s3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_address_s4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_address_s5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_address_s6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_address_s7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_burstcount_s0(avs_burstcount_s0),
        .avs_burstcount_s1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_burstcount_s2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_burstcount_s3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_burstcount_s4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_burstcount_s5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_burstcount_s6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_burstcount_s7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_byteenable_s0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_byteenable_s1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_byteenable_s2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_byteenable_s3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_byteenable_s4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_byteenable_s5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_byteenable_s6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_byteenable_s7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_read_s0(avs_read_s0),
        .avs_read_s1(1'b0),
        .avs_read_s2(1'b0),
        .avs_read_s3(1'b0),
        .avs_read_s4(1'b0),
        .avs_read_s5(1'b0),
        .avs_read_s6(1'b0),
        .avs_read_s7(1'b0),
        .avs_readdata_s0(avs_readdata_s0),
        .avs_readdata_s1(NLW_inst_avs_readdata_s1_UNCONNECTED[127:0]),
        .avs_readdata_s2(NLW_inst_avs_readdata_s2_UNCONNECTED[127:0]),
        .avs_readdata_s3(NLW_inst_avs_readdata_s3_UNCONNECTED[127:0]),
        .avs_readdata_s4(NLW_inst_avs_readdata_s4_UNCONNECTED[127:0]),
        .avs_readdata_s5(NLW_inst_avs_readdata_s5_UNCONNECTED[127:0]),
        .avs_readdata_s6(NLW_inst_avs_readdata_s6_UNCONNECTED[127:0]),
        .avs_readdata_s7(NLW_inst_avs_readdata_s7_UNCONNECTED[127:0]),
        .avs_readdatavalid_s0(avs_readdatavalid_s0),
        .avs_readdatavalid_s1(NLW_inst_avs_readdatavalid_s1_UNCONNECTED),
        .avs_readdatavalid_s2(NLW_inst_avs_readdatavalid_s2_UNCONNECTED),
        .avs_readdatavalid_s3(NLW_inst_avs_readdatavalid_s3_UNCONNECTED),
        .avs_readdatavalid_s4(NLW_inst_avs_readdatavalid_s4_UNCONNECTED),
        .avs_readdatavalid_s5(NLW_inst_avs_readdatavalid_s5_UNCONNECTED),
        .avs_readdatavalid_s6(NLW_inst_avs_readdatavalid_s6_UNCONNECTED),
        .avs_readdatavalid_s7(NLW_inst_avs_readdatavalid_s7_UNCONNECTED),
        .avs_waitrequest_s0(avs_waitrequest_s0),
        .avs_waitrequest_s1(NLW_inst_avs_waitrequest_s1_UNCONNECTED),
        .avs_waitrequest_s2(NLW_inst_avs_waitrequest_s2_UNCONNECTED),
        .avs_waitrequest_s3(NLW_inst_avs_waitrequest_s3_UNCONNECTED),
        .avs_waitrequest_s4(NLW_inst_avs_waitrequest_s4_UNCONNECTED),
        .avs_waitrequest_s5(NLW_inst_avs_waitrequest_s5_UNCONNECTED),
        .avs_waitrequest_s6(NLW_inst_avs_waitrequest_s6_UNCONNECTED),
        .avs_waitrequest_s7(NLW_inst_avs_waitrequest_s7_UNCONNECTED),
        .avs_write_s0(1'b0),
        .avs_write_s1(1'b0),
        .avs_write_s2(1'b0),
        .avs_write_s3(1'b0),
        .avs_write_s4(1'b0),
        .avs_write_s5(1'b0),
        .avs_write_s6(1'b0),
        .avs_write_s7(1'b0),
        .avs_writedata_s0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_writedata_s1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_writedata_s2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_writedata_s3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_writedata_s4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_writedata_s5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_writedata_s6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .avs_writedata_s7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clk(clk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(m_axi_aruser),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(NLW_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awprot(NLW_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(1'b0),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[3:0]),
        .m_axi_awvalid(NLW_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bready(NLW_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(NLW_inst_m_axi_wdata_UNCONNECTED[127:0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_inst_m_axi_wstrb_UNCONNECTED[15:0]),
        .m_axi_wvalid(NLW_inst_m_axi_wvalid_UNCONNECTED),
        .read_error(read_error),
        .read_error_master_ID(read_error_master_ID),
        .read_error_valid(read_error_valid),
        .write_error(NLW_inst_write_error_UNCONNECTED),
        .write_error_master_ID(NLW_inst_write_error_master_ID_UNCONNECTED[2:0]),
        .write_error_valid(NLW_inst_write_error_valid_UNCONNECTED));
endmodule

module amm_bridge_axi_datamover
   (m_axi_arsize,
    m_axi_arburst,
    m_axi_arvalid,
    mm2s_cmd_ready,
    read_error_valid,
    read_error,
    m_axi_rready,
    sig_dqual_reg_full_reg,
    m_axi_araddr,
    m_axi_arlen,
    aresetn,
    clk,
    E,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rresp,
    m_axi_arready,
    mm2s_cmd_valid,
    D);
  output [0:0]m_axi_arsize;
  output [0:0]m_axi_arburst;
  output m_axi_arvalid;
  output mm2s_cmd_ready;
  output read_error_valid;
  output read_error;
  output m_axi_rready;
  output sig_dqual_reg_full_reg;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  input aresetn;
  input clk;
  input [0:0]E;
  input m_axi_rlast;
  input m_axi_rvalid;
  input [1:0]m_axi_rresp;
  input m_axi_arready;
  input mm2s_cmd_valid;
  input [42:0]D;

  wire [42:0]D;
  wire [0:0]E;
  wire aresetn;
  wire clk;
  wire [31:0]m_axi_araddr;
  wire [0:0]m_axi_arburst;
  wire [7:0]m_axi_arlen;
  wire m_axi_arready;
  wire [0:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire mm2s_cmd_ready;
  wire mm2s_cmd_valid;
  wire read_error;
  wire read_error_valid;
  wire sig_dqual_reg_full_reg;

  amm_bridge_axi_datamover_mm2s_full_wrap \GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER 
       (.D(D),
        .E(E),
        .aresetn(aresetn),
        .clk(clk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .mm2s_cmd_ready(mm2s_cmd_ready),
        .mm2s_cmd_valid(mm2s_cmd_valid),
        .read_error(read_error),
        .read_error_valid(read_error_valid),
        .sig_dqual_reg_full_reg(sig_dqual_reg_full_reg));
endmodule

module amm_bridge_axi_datamover_addr_cntl
   (out,
    sig_init_reg2,
    FIFO_Full_reg,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arvalid,
    sig_inhibit_rdy_n,
    sig_wr_fifo,
    m_axi_araddr,
    m_axi_arlen,
    SR,
    sig_init_reg,
    clk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_mstr2addr_cmd_valid,
    m_axi_arready,
    in);
  output out;
  output sig_init_reg2;
  output FIFO_Full_reg;
  output [0:0]m_axi_arsize;
  output [0:0]m_axi_arburst;
  output m_axi_arvalid;
  output sig_inhibit_rdy_n;
  output sig_wr_fifo;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  input [0:0]SR;
  input sig_init_reg;
  input clk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_mstr2addr_cmd_valid;
  input m_axi_arready;
  input [41:0]in;

  wire FIFO_Full_reg;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_5 ;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_6 ;
  wire [0:0]SR;
  wire clk;
  wire [41:0]in;
  wire [31:0]m_axi_araddr;
  wire [0:0]m_axi_arburst;
  wire [7:0]m_axi_arlen;
  wire m_axi_arready;
  wire [0:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [50:4]p_1_out;
  wire sig_addr2rsc_calc_error;
  wire sig_addr_reg_empty;
  wire sig_addr_reg_full;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_inhibit_rdy_n;
  wire sig_init_reg;
  wire sig_init_reg2;
  wire sig_mstr2addr_cmd_valid;
  wire sig_next_addr_reg0;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi;
  (* RTL_KEEP = "true" *) (* equivalent_register_removal = "no" *) wire sig_posted_to_axi_2;
  wire sig_push_addr_reg1_out;
  wire sig_wr_fifo;

  assign out = sig_posted_to_axi;
  amm_bridge_axi_datamover_fifo__parameterized1 \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .\INFERRED_GEN.cnt_i_reg[2] (\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_5 ),
        .SR(SR),
        .clk(clk),
        .in(in),
        .out({p_1_out[50],p_1_out[47:46],p_1_out[43:4]}),
        .sel(sig_wr_fifo),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_calc_error_reg_reg(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_6 ),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_reg(sig_init_reg),
        .sig_init_reg2(sig_init_reg2),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out));
  FDSE #(
    .INIT(1'b0)) 
    sig_addr_reg_empty_reg
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b0),
        .Q(sig_addr_reg_empty),
        .S(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_reg_full_reg
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(1'b1),
        .Q(sig_addr_reg_full),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_valid_reg_reg
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_6 ),
        .Q(m_axi_arvalid),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[50]),
        .Q(sig_addr2rsc_calc_error),
        .R(sig_next_addr_reg0));
  LUT4 #(
    .INIT(16'h08FF)) 
    \sig_next_addr_reg[31]_i_1 
       (.I0(m_axi_arready),
        .I1(sig_addr_reg_full),
        .I2(sig_addr2rsc_calc_error),
        .I3(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[0] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[4]),
        .Q(m_axi_araddr[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[10] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[14]),
        .Q(m_axi_araddr[10]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[11] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[15]),
        .Q(m_axi_araddr[11]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[12] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[16]),
        .Q(m_axi_araddr[12]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[13] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[17]),
        .Q(m_axi_araddr[13]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[14] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[18]),
        .Q(m_axi_araddr[14]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[15] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[19]),
        .Q(m_axi_araddr[15]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[16] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[20]),
        .Q(m_axi_araddr[16]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[17] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[21]),
        .Q(m_axi_araddr[17]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[18] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[22]),
        .Q(m_axi_araddr[18]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[19] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[23]),
        .Q(m_axi_araddr[19]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[1] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[5]),
        .Q(m_axi_araddr[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[20] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[24]),
        .Q(m_axi_araddr[20]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[21] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[25]),
        .Q(m_axi_araddr[21]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[22] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[26]),
        .Q(m_axi_araddr[22]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[23] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[27]),
        .Q(m_axi_araddr[23]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[24] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[28]),
        .Q(m_axi_araddr[24]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[25] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[29]),
        .Q(m_axi_araddr[25]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[26] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[30]),
        .Q(m_axi_araddr[26]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[27] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[31]),
        .Q(m_axi_araddr[27]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[28] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[32]),
        .Q(m_axi_araddr[28]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[29] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[33]),
        .Q(m_axi_araddr[29]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[2] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[6]),
        .Q(m_axi_araddr[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[30] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[34]),
        .Q(m_axi_araddr[30]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[31] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[35]),
        .Q(m_axi_araddr[31]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[3] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[7]),
        .Q(m_axi_araddr[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[4] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[8]),
        .Q(m_axi_araddr[4]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[5] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[9]),
        .Q(m_axi_araddr[5]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[6] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[10]),
        .Q(m_axi_araddr[6]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[7] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[11]),
        .Q(m_axi_araddr[7]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[8] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[12]),
        .Q(m_axi_araddr[8]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_addr_reg_reg[9] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[13]),
        .Q(m_axi_araddr[9]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_burst_reg_reg[0] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[47]),
        .Q(m_axi_arburst),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[0] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[36]),
        .Q(m_axi_arlen[0]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[1] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[37]),
        .Q(m_axi_arlen[1]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[2] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[38]),
        .Q(m_axi_arlen[2]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[3] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[39]),
        .Q(m_axi_arlen[3]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[4] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[40]),
        .Q(m_axi_arlen[4]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[5] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[41]),
        .Q(m_axi_arlen[5]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[6] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[42]),
        .Q(m_axi_arlen[6]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_len_reg_reg[7] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[43]),
        .Q(m_axi_arlen[7]),
        .R(sig_next_addr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \sig_next_size_reg_reg[2] 
       (.C(clk),
        .CE(sig_push_addr_reg1_out),
        .D(p_1_out[46]),
        .Q(m_axi_arsize),
        .R(sig_next_addr_reg0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_5 ),
        .Q(sig_posted_to_axi_2),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    sig_posted_to_axi_reg
       (.C(clk),
        .CE(1'b1),
        .D(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO_n_5 ),
        .Q(sig_posted_to_axi),
        .R(1'b0));
endmodule

module amm_bridge_axi_datamover_cmd_status
   (sig_init_done,
    sig_cmd2mstr_cmd_valid,
    mm2s_cmd_ready,
    sig_init_done_0,
    read_error_valid,
    sig_stat2rsc_status_ready,
    read_error,
    sig_rd_sts_tag_reg0,
    Q,
    sig_init_done_reg,
    clk,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg ,
    SR,
    sig_init_done_reg_0,
    sig_rsc2stat_status_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    aresetn,
    mm2s_cmd_valid,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ,
    E,
    D,
    sig_rsc2stat_status);
  output sig_init_done;
  output sig_cmd2mstr_cmd_valid;
  output mm2s_cmd_ready;
  output sig_init_done_0;
  output read_error_valid;
  output sig_stat2rsc_status_ready;
  output read_error;
  output sig_rd_sts_tag_reg0;
  output [43:0]Q;
  input sig_init_done_reg;
  input clk;
  input \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  input [0:0]SR;
  input sig_init_done_reg_0;
  input sig_rsc2stat_status_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input aresetn;
  input mm2s_cmd_valid;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  input [0:0]E;
  input [42:0]D;
  input [2:0]sig_rsc2stat_status;

  wire [42:0]D;
  wire [0:0]E;
  wire [43:0]Q;
  wire [0:0]SR;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  wire aresetn;
  wire clk;
  wire mm2s_cmd_ready;
  wire mm2s_cmd_valid;
  wire read_error;
  wire read_error_valid;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_reg;
  wire sig_init_done_reg_0;
  wire sig_rd_sts_tag_reg0;
  wire [2:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  amm_bridge_axi_datamover_fifo__parameterized0 \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO 
       (.SR(SR),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 (sig_stat2rsc_status_ready),
        .aresetn(aresetn),
        .clk(clk),
        .read_error(read_error),
        .read_error_valid(read_error_valid),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_init_done_0(sig_init_done_0),
        .sig_init_done_reg_0(sig_init_done_reg_0),
        .sig_rd_sts_tag_reg0(sig_rd_sts_tag_reg0),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  amm_bridge_axi_datamover_fifo I_CMD_FIFO
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 (\USE_SINGLE_REG.sig_regfifo_empty_reg_reg ),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 (\USE_SINGLE_REG.sig_regfifo_full_reg_reg ),
        .clk(clk),
        .mm2s_cmd_ready(mm2s_cmd_ready),
        .mm2s_cmd_valid(mm2s_cmd_valid),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_init_done(sig_init_done),
        .sig_init_done_reg_0(sig_init_done_reg));
endmodule

module amm_bridge_axi_datamover_fifo
   (sig_init_done,
    sig_cmd2mstr_cmd_valid,
    mm2s_cmd_ready,
    Q,
    sig_init_done_reg_0,
    clk,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ,
    SR,
    mm2s_cmd_valid,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ,
    E,
    D);
  output sig_init_done;
  output sig_cmd2mstr_cmd_valid;
  output mm2s_cmd_ready;
  output [43:0]Q;
  input sig_init_done_reg_0;
  input clk;
  input \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ;
  input [0:0]SR;
  input mm2s_cmd_valid;
  input \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  input [0:0]E;
  input [42:0]D;

  wire [42:0]D;
  wire [0:0]E;
  wire [43:0]Q;
  wire [0:0]SR;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ;
  wire clk;
  wire mm2s_cmd_ready;
  wire mm2s_cmd_valid;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_init_done;
  wire sig_init_done_reg_0;

  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[23] 
       (.C(clk),
        .CE(E),
        .D(1'b1),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(Q[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(Q[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(Q[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(Q[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[56] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(Q[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[57] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(Q[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[58] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(Q[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[59] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(Q[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[60] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(Q[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[61] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(Q[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[62] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(Q[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[63] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(Q[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  LUT4 #(
    .INIT(16'hBAFF)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1 
       (.I0(sig_init_done),
        .I1(mm2s_cmd_valid),
        .I2(mm2s_cmd_ready),
        .I3(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .O(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1_n_0 ),
        .Q(mm2s_cmd_ready),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_full_reg_reg_0 ),
        .Q(sig_cmd2mstr_cmd_valid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module amm_bridge_axi_datamover_fifo__parameterized0
   (sig_init_done_0,
    read_error_valid,
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ,
    read_error,
    sig_rd_sts_tag_reg0,
    sig_init_done_reg_0,
    clk,
    SR,
    sig_rsc2stat_status_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    aresetn,
    sig_rsc2stat_status);
  output sig_init_done_0;
  output read_error_valid;
  output \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  output read_error;
  output sig_rd_sts_tag_reg0;
  input sig_init_done_reg_0;
  input clk;
  input [0:0]SR;
  input sig_rsc2stat_status_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input aresetn;
  input [2:0]sig_rsc2stat_status;

  wire [0:0]SR;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0 ;
  wire aresetn;
  wire clk;
  wire [6:4]mm2s_status;
  wire read_error;
  wire read_error_valid;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_init_done_0;
  wire sig_init_done_reg_0;
  wire sig_rd_sts_tag_reg0;
  wire [2:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;

  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1 
       (.I0(sig_rsc2stat_status[0]),
        .I1(sig_rsc2stat_status_valid),
        .I2(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I3(mm2s_status[4]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1 
       (.I0(sig_rsc2stat_status[1]),
        .I1(sig_rsc2stat_status_valid),
        .I2(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I3(mm2s_status[5]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1 
       (.I0(sig_rsc2stat_status[2]),
        .I1(sig_rsc2stat_status_valid),
        .I2(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I3(mm2s_status[6]),
        .O(\USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[4]_i_1_n_0 ),
        .Q(mm2s_status[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[5]_i_1_n_0 ),
        .Q(mm2s_status[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_dout_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_dout_reg[6]_i_1_n_0 ),
        .Q(mm2s_status[6]),
        .R(SR));
  LUT5 #(
    .INIT(32'hF8F8FFF8)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0 
       (.I0(read_error_valid),
        .I1(aresetn),
        .I2(sig_init_done_0),
        .I3(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I4(sig_rsc2stat_status_valid),
        .O(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_empty_reg_i_1__0_n_0 ),
        .Q(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00AA8080)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0 
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I2(sig_rsc2stat_status_valid),
        .I3(aresetn),
        .I4(read_error_valid),
        .O(\USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\USE_SINGLE_REG.sig_regfifo_full_reg_i_1__0_n_0 ),
        .Q(read_error_valid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    read_error_INST_0
       (.I0(mm2s_status[6]),
        .I1(mm2s_status[5]),
        .I2(mm2s_status[4]),
        .O(read_error));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    sig_rd_sts_interr_reg_i_1
       (.I0(\USE_SINGLE_REG.sig_regfifo_empty_reg_reg_0 ),
        .I1(sig_rsc2stat_status_valid),
        .I2(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_rd_sts_tag_reg0));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module amm_bridge_axi_datamover_fifo__parameterized1
   (sig_init_reg2,
    FIFO_Full_reg,
    sig_inhibit_rdy_n_reg_0,
    sel,
    sig_push_addr_reg1_out,
    \INFERRED_GEN.cnt_i_reg[2] ,
    sig_calc_error_reg_reg,
    out,
    SR,
    sig_init_reg,
    clk,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_addr_reg_empty,
    sig_mstr2addr_cmd_valid,
    in);
  output sig_init_reg2;
  output FIFO_Full_reg;
  output sig_inhibit_rdy_n_reg_0;
  output sel;
  output sig_push_addr_reg1_out;
  output \INFERRED_GEN.cnt_i_reg[2] ;
  output sig_calc_error_reg_reg;
  output [42:0]out;
  input [0:0]SR;
  input sig_init_reg;
  input clk;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input sig_addr_reg_empty;
  input sig_mstr2addr_cmd_valid;
  input [41:0]in;

  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]SR;
  wire clk;
  wire [41:0]in;
  wire [42:0]out;
  wire sel;
  wire sig_addr_reg_empty;
  wire sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_inhibit_rdy_n_i_1__0_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done;
  wire sig_init_done_i_1__2_n_0;
  wire sig_init_reg;
  wire sig_init_reg2;
  wire sig_mstr2addr_cmd_valid;
  wire sig_push_addr_reg1_out;

  amm_bridge_srl_fifo_f \USE_SRL_FIFO.I_SYNC_FIFO 
       (.FIFO_Full_reg(FIFO_Full_reg),
        .FIFO_Full_reg_0(sel),
        .\INFERRED_GEN.cnt_i_reg[0] (sig_inhibit_rdy_n_reg_0),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .SR(SR),
        .clk(clk),
        .in(in),
        .out(out),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1__0
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1__0_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SR));
  LUT4 #(
    .INIT(16'h2000)) 
    sig_init_done_i_1__2
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_init_done),
        .I2(sig_init_reg),
        .I3(sig_init_reg2),
        .O(sig_init_done_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_init_done_i_1__2_n_0),
        .Q(sig_init_done),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    sig_init_reg2_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_init_reg),
        .Q(sig_init_reg2),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "axi_datamover_fifo" *) 
module amm_bridge_axi_datamover_fifo__parameterized2
   (FIFO_Full_reg,
    sig_init_done,
    sig_inhibit_rdy_n_reg_0,
    sig_push_dqual_reg,
    sel,
    sig_dqual_reg_empty_reg,
    E,
    sig_clr_dqual_reg,
    D,
    out,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0,
    sig_addr_posted_cntr_eq_0__1,
    SR,
    clk,
    sig_init_done_reg_0,
    sig_mstr2data_cmd_valid,
    sig_last_dbeat_reg,
    sig_last_dbeat_reg_0,
    \sig_dbeat_cntr_reg[7] ,
    Q,
    m_axi_rlast,
    sig_dqual_reg_full,
    sig_next_calc_error_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \sig_dbeat_cntr_reg[4] ,
    sig_ld_new_cmd_reg,
    sig_dqual_reg_empty,
    sig_addr_posted_cntr,
    sig_data2rsc_valid,
    m_axi_rvalid,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_last_dbeat,
    sig_next_sequential_reg,
    in);
  output FIFO_Full_reg;
  output sig_init_done;
  output sig_inhibit_rdy_n_reg_0;
  output sig_push_dqual_reg;
  output sel;
  output sig_dqual_reg_empty_reg;
  output [0:0]E;
  output sig_clr_dqual_reg;
  output [7:0]D;
  output [2:0]out;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  output sig_addr_posted_cntr_eq_0__1;
  input [0:0]SR;
  input clk;
  input sig_init_done_reg_0;
  input sig_mstr2data_cmd_valid;
  input sig_last_dbeat_reg;
  input sig_last_dbeat_reg_0;
  input \sig_dbeat_cntr_reg[7] ;
  input [7:0]Q;
  input m_axi_rlast;
  input sig_dqual_reg_full;
  input sig_next_calc_error_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_ld_new_cmd_reg;
  input sig_dqual_reg_empty;
  input [2:0]sig_addr_posted_cntr;
  input sig_data2rsc_valid;
  input m_axi_rvalid;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_last_dbeat;
  input sig_next_sequential_reg;
  input [10:0]in;

  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire [7:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [10:0]in;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire [2:0]out;
  wire sel;
  wire [2:0]sig_addr_posted_cntr;
  wire sig_addr_posted_cntr_eq_0__1;
  wire sig_clr_dqual_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  wire sig_data2rsc_valid;
  wire \sig_dbeat_cntr_reg[4] ;
  wire \sig_dbeat_cntr_reg[7] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_full;
  wire sig_inhibit_rdy_n_i_1_n_0;
  wire sig_inhibit_rdy_n_reg_0;
  wire sig_init_done;
  wire sig_init_done_reg_0;
  wire sig_last_dbeat;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_sequential_reg;
  wire sig_push_dqual_reg;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  amm_bridge_srl_fifo_f__parameterized0 \USE_SRL_FIFO.I_SYNC_FIFO 
       (.D(D),
        .E(E),
        .FIFO_Full_reg(FIFO_Full_reg),
        .FIFO_Full_reg_0(sel),
        .\INFERRED_GEN.cnt_i_reg[0] (sig_inhibit_rdy_n_reg_0),
        .Q(Q),
        .SR(SR),
        .clk(clk),
        .in(in),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_addr_posted_cntr_eq_0__1(sig_addr_posted_cntr_eq_0__1),
        .sig_clr_dqual_reg(sig_clr_dqual_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .\sig_dbeat_cntr_reg[7] (\sig_dbeat_cntr_reg[7] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_push_dqual_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_last_dbeat(sig_last_dbeat),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  LUT2 #(
    .INIT(4'hE)) 
    sig_inhibit_rdy_n_i_1
       (.I0(sig_init_done),
        .I1(sig_inhibit_rdy_n_reg_0),
        .O(sig_inhibit_rdy_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_inhibit_rdy_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_inhibit_rdy_n_i_1_n_0),
        .Q(sig_inhibit_rdy_n_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_init_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_init_done_reg_0),
        .Q(sig_init_done),
        .R(1'b0));
endmodule

module amm_bridge_axi_datamover_mm2s_full_wrap
   (m_axi_arsize,
    m_axi_arburst,
    m_axi_arvalid,
    mm2s_cmd_ready,
    read_error_valid,
    read_error,
    m_axi_rready,
    sig_dqual_reg_full_reg,
    m_axi_araddr,
    m_axi_arlen,
    aresetn,
    clk,
    E,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rresp,
    m_axi_arready,
    mm2s_cmd_valid,
    D);
  output [0:0]m_axi_arsize;
  output [0:0]m_axi_arburst;
  output m_axi_arvalid;
  output mm2s_cmd_ready;
  output read_error_valid;
  output read_error;
  output m_axi_rready;
  output sig_dqual_reg_full_reg;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  input aresetn;
  input clk;
  input [0:0]E;
  input m_axi_rlast;
  input m_axi_rvalid;
  input [1:0]m_axi_rresp;
  input m_axi_arready;
  input mm2s_cmd_valid;
  input [42:0]D;

  wire [42:0]D;
  wire [0:0]E;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_wr_fifo ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_wr_fifo ;
  wire \GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done ;
  wire I_ADDR_CNTL_n_2;
  wire \I_CMD_FIFO/sig_init_done ;
  wire I_CMD_STATUS_n_24;
  wire I_CMD_STATUS_n_25;
  wire I_CMD_STATUS_n_26;
  wire I_CMD_STATUS_n_27;
  wire I_CMD_STATUS_n_28;
  wire I_CMD_STATUS_n_29;
  wire I_CMD_STATUS_n_30;
  wire I_CMD_STATUS_n_31;
  wire I_CMD_STATUS_n_32;
  wire I_CMD_STATUS_n_33;
  wire I_CMD_STATUS_n_34;
  wire I_CMD_STATUS_n_35;
  wire I_CMD_STATUS_n_36;
  wire I_CMD_STATUS_n_37;
  wire I_CMD_STATUS_n_38;
  wire I_CMD_STATUS_n_39;
  wire I_MSTR_PCC_n_1;
  wire I_MSTR_PCC_n_45;
  wire I_MSTR_PCC_n_47;
  wire I_MSTR_PCC_n_48;
  wire I_RD_DATA_CNTL_n_0;
  wire I_RESET_n_1;
  wire I_RESET_n_2;
  wire I_RESET_n_3;
  wire aresetn;
  wire clk;
  wire [15:0]data;
  wire [31:0]m_axi_araddr;
  wire [0:0]m_axi_arburst;
  wire [7:0]m_axi_arlen;
  wire m_axi_arready;
  wire [0:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire mm2s_cmd_ready;
  wire mm2s_cmd_valid;
  wire read_error;
  wire read_error_valid;
  wire sig_addr2data_addr_posted;
  wire sig_cmd2mstr_cmd_valid;
  wire [14:4]sig_cmd2mstr_command;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_type_slice;
  wire sig_data2rsc_calc_err;
  wire sig_data2rsc_slverr;
  wire sig_dqual_reg_full_reg;
  wire [31:4]sig_mstr2addr_addr;
  wire [0:0]sig_mstr2addr_burst;
  wire sig_mstr2addr_cmd_valid;
  wire sig_mstr2data_cmd_valid;
  wire sig_mstr2data_dre_src_align;
  wire [7:0]sig_mstr2data_len;
  wire [3:1]sig_mstr2data_saddr_lsb;
  wire sig_mstr2data_sequential;
  wire sig_push_rd_sts_reg;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_tag_reg0;
  wire sig_rsc2data_ready;
  wire [6:4]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;
  wire sig_stream_rst;

  amm_bridge_axi_datamover_addr_cntl I_ADDR_CNTL
       (.FIFO_Full_reg(I_ADDR_CNTL_n_2),
        .SR(sig_stream_rst),
        .clk(clk),
        .in({I_MSTR_PCC_n_1,sig_mstr2addr_burst,sig_mstr2data_len,sig_mstr2addr_addr,sig_mstr2data_saddr_lsb,sig_mstr2data_dre_src_align}),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .out(sig_addr2data_addr_posted),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_inhibit_rdy_n(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg ),
        .sig_init_reg2(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2 ),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_wr_fifo(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_wr_fifo ));
  amm_bridge_axi_datamover_cmd_status I_CMD_STATUS
       (.D(D),
        .E(E),
        .Q({data,I_CMD_STATUS_n_24,I_CMD_STATUS_n_25,I_CMD_STATUS_n_26,I_CMD_STATUS_n_27,I_CMD_STATUS_n_28,I_CMD_STATUS_n_29,I_CMD_STATUS_n_30,I_CMD_STATUS_n_31,I_CMD_STATUS_n_32,I_CMD_STATUS_n_33,I_CMD_STATUS_n_34,I_CMD_STATUS_n_35,I_CMD_STATUS_n_36,I_CMD_STATUS_n_37,I_CMD_STATUS_n_38,I_CMD_STATUS_n_39,sig_cmd_type_slice,sig_cmd2mstr_command}),
        .SR(sig_stream_rst),
        .\USE_SINGLE_REG.sig_regfifo_empty_reg_reg (I_MSTR_PCC_n_48),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg (I_MSTR_PCC_n_47),
        .aresetn(aresetn),
        .clk(clk),
        .mm2s_cmd_ready(mm2s_cmd_ready),
        .mm2s_cmd_valid(mm2s_cmd_valid),
        .read_error(read_error),
        .read_error_valid(read_error_valid),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_init_done(\I_CMD_FIFO/sig_init_done ),
        .sig_init_done_0(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done ),
        .sig_init_done_reg(I_RESET_n_1),
        .sig_init_done_reg_0(I_RESET_n_2),
        .sig_rd_sts_tag_reg0(sig_rd_sts_tag_reg0),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  amm_bridge_axi_datamover_pcc I_MSTR_PCC
       (.E(E),
        .Q({data,I_CMD_STATUS_n_24,I_CMD_STATUS_n_25,I_CMD_STATUS_n_26,I_CMD_STATUS_n_27,I_CMD_STATUS_n_28,I_CMD_STATUS_n_29,I_CMD_STATUS_n_30,I_CMD_STATUS_n_31,I_CMD_STATUS_n_32,I_CMD_STATUS_n_33,I_CMD_STATUS_n_34,I_CMD_STATUS_n_35,I_CMD_STATUS_n_36,I_CMD_STATUS_n_37,I_CMD_STATUS_n_38,I_CMD_STATUS_n_39,sig_cmd_type_slice,sig_cmd2mstr_command}),
        .SR(sig_stream_rst),
        .\USE_SINGLE_REG.sig_regfifo_full_reg_reg (I_MSTR_PCC_n_48),
        .clk(clk),
        .in({I_MSTR_PCC_n_1,sig_mstr2addr_burst,sig_mstr2data_len,sig_mstr2addr_addr,sig_mstr2data_saddr_lsb,sig_mstr2data_dre_src_align}),
        .sig_calc_error_reg_reg_0({I_MSTR_PCC_n_45,sig_mstr2data_sequential}),
        .sig_cmd2addr_valid_reg_0(I_ADDR_CNTL_n_2),
        .sig_cmd2data_valid_reg_0(I_RD_DATA_CNTL_n_0),
        .sig_cmd2mstr_cmd_valid(sig_cmd2mstr_cmd_valid),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0(I_MSTR_PCC_n_47),
        .sig_inhibit_rdy_n(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_inhibit_rdy_n_1(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg ),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_wr_fifo(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_wr_fifo ),
        .sig_wr_fifo_0(\GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/sig_wr_fifo ));
  amm_bridge_axi_datamover_rddata_cntl I_RD_DATA_CNTL
       (.FIFO_Full_reg(I_RD_DATA_CNTL_n_0),
        .SR(sig_stream_rst),
        .clk(clk),
        .in({I_MSTR_PCC_n_1,I_MSTR_PCC_n_45,sig_mstr2data_sequential,sig_mstr2data_len}),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .out(sig_addr2data_addr_posted),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_data2rsc_calc_err(sig_data2rsc_calc_err),
        .sig_data2rsc_slverr(sig_data2rsc_slverr),
        .sig_dqual_reg_full_reg_0(sig_dqual_reg_full_reg),
        .sig_inhibit_rdy_n(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_inhibit_rdy_n ),
        .sig_init_done(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_init_done_reg(I_RESET_n_3),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_push_rd_sts_reg(sig_push_rd_sts_reg),
        .sig_rd_sts_decerr_reg0(sig_rd_sts_decerr_reg0),
        .sig_rsc2data_ready(sig_rsc2data_ready),
        .sig_rsc2stat_status(sig_rsc2stat_status[5]),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready),
        .sig_wr_fifo(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_wr_fifo ));
  amm_bridge_axi_datamover_rd_status_cntl I_RD_STATUS_CNTLR
       (.clk(clk),
        .sig_data2rsc_calc_err(sig_data2rsc_calc_err),
        .sig_data2rsc_slverr(sig_data2rsc_slverr),
        .sig_push_rd_sts_reg(sig_push_rd_sts_reg),
        .sig_rd_sts_decerr_reg0(sig_rd_sts_decerr_reg0),
        .sig_rd_sts_tag_reg0(sig_rd_sts_tag_reg0),
        .sig_rsc2data_ready(sig_rsc2data_ready),
        .sig_rsc2stat_status(sig_rsc2stat_status),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid));
  amm_bridge_axi_datamover_reset I_RESET
       (.SR(sig_stream_rst),
        .aresetn(aresetn),
        .clk(clk),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_0(I_RESET_n_1),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_1(I_RESET_n_2),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_2(I_RESET_n_3),
        .sig_init_done(\I_CMD_FIFO/sig_init_done ),
        .sig_init_done_0(\GEN_INCLUDE_STATUS_FIFO.I_STS_FIFO/sig_init_done ),
        .sig_init_done_1(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_done ),
        .sig_init_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg ),
        .sig_init_reg2(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/sig_init_reg2 ));
endmodule

module amm_bridge_axi_datamover_pcc
   (sig_init_reg,
    in,
    sig_mstr2data_cmd_valid,
    sig_mstr2addr_cmd_valid,
    sig_calc_error_reg_reg_0,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0,
    \USE_SINGLE_REG.sig_regfifo_full_reg_reg ,
    SR,
    clk,
    sig_wr_fifo,
    sig_wr_fifo_0,
    Q,
    sig_cmd2mstr_cmd_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    E,
    sig_inhibit_rdy_n,
    sig_cmd2data_valid_reg_0,
    sig_inhibit_rdy_n_1,
    sig_cmd2addr_valid_reg_0);
  output sig_init_reg;
  output [41:0]in;
  output sig_mstr2data_cmd_valid;
  output sig_mstr2addr_cmd_valid;
  output [1:0]sig_calc_error_reg_reg_0;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  output \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  input [0:0]SR;
  input clk;
  input sig_wr_fifo;
  input sig_wr_fifo_0;
  input [43:0]Q;
  input sig_cmd2mstr_cmd_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input [0:0]E;
  input sig_inhibit_rdy_n;
  input sig_cmd2data_valid_reg_0;
  input sig_inhibit_rdy_n_1;
  input sig_cmd2addr_valid_reg_0;

  wire [0:0]E;
  wire \FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0 ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ;
  wire \FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ;
  wire \INFERRED_GEN.data_reg[3][17]_srl4_i_1_n_2 ;
  wire \INFERRED_GEN.data_reg[3][17]_srl4_i_1_n_3 ;
  wire \INFERRED_GEN.data_reg[3][17]_srl4_i_2_n_0 ;
  wire \INFERRED_GEN.data_reg[3][17]_srl4_i_3_n_0 ;
  wire \INFERRED_GEN.data_reg[3][17]_srl4_i_4_n_0 ;
  wire \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_0 ;
  wire \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_1 ;
  wire \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_2 ;
  wire \INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_3 ;
  wire \INFERRED_GEN.data_reg[3][21]_srl4_i_2_n_0 ;
  wire \INFERRED_GEN.data_reg[3][21]_srl4_i_3_n_0 ;
  wire \INFERRED_GEN.data_reg[3][21]_srl4_i_4_n_0 ;
  wire \INFERRED_GEN.data_reg[3][21]_srl4_i_5_n_0 ;
  wire \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_0 ;
  wire \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_1 ;
  wire \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_2 ;
  wire \INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_3 ;
  wire \INFERRED_GEN.data_reg[3][22]_srl4_i_2_n_0 ;
  wire \INFERRED_GEN.data_reg[3][22]_srl4_i_3_n_0 ;
  wire \INFERRED_GEN.data_reg[3][22]_srl4_i_4_n_0 ;
  wire \INFERRED_GEN.data_reg[3][22]_srl4_i_5_n_0 ;
  wire [43:0]Q;
  wire [0:0]SR;
  wire \USE_SINGLE_REG.sig_regfifo_full_reg_reg ;
  wire clk;
  wire [41:0]in;
  wire [15:0]p_1_in;
  wire p_1_in_0;
  wire sig_addr_aligned_im0;
  wire sig_addr_aligned_ireg1;
  wire sig_addr_aligned_ireg1_i_2_n_0;
  wire sig_addr_aligned_ireg1_i_3_n_0;
  wire \sig_addr_cntr_im0_msh[0]_i_1_n_0 ;
  wire \sig_addr_cntr_im0_msh[0]_i_3_n_0 ;
  wire \sig_addr_cntr_im0_msh[0]_i_4_n_0 ;
  wire \sig_addr_cntr_im0_msh[0]_i_5_n_0 ;
  wire \sig_addr_cntr_im0_msh[0]_i_6_n_0 ;
  wire \sig_addr_cntr_im0_msh[0]_i_7_n_0 ;
  wire \sig_addr_cntr_im0_msh[12]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[12]_i_3_n_0 ;
  wire \sig_addr_cntr_im0_msh[12]_i_4_n_0 ;
  wire \sig_addr_cntr_im0_msh[12]_i_5_n_0 ;
  wire \sig_addr_cntr_im0_msh[4]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[4]_i_3_n_0 ;
  wire \sig_addr_cntr_im0_msh[4]_i_4_n_0 ;
  wire \sig_addr_cntr_im0_msh[4]_i_5_n_0 ;
  wire \sig_addr_cntr_im0_msh[8]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh[8]_i_3_n_0 ;
  wire \sig_addr_cntr_im0_msh[8]_i_4_n_0 ;
  wire \sig_addr_cntr_im0_msh[8]_i_5_n_0 ;
  wire [15:0]sig_addr_cntr_im0_msh_reg;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_0 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_1 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_2 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_3 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_4 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_5 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_6 ;
  wire \sig_addr_cntr_im0_msh_reg[0]_i_2_n_7 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_1 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_2 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_3 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_4 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_5 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_6 ;
  wire \sig_addr_cntr_im0_msh_reg[12]_i_1_n_7 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_0 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_1 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_2 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_3 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_4 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_5 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_6 ;
  wire \sig_addr_cntr_im0_msh_reg[4]_i_1_n_7 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_0 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_1 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_2 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_3 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_4 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_5 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_6 ;
  wire \sig_addr_cntr_im0_msh_reg[8]_i_1_n_7 ;
  wire \sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[10]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[11]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[12]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[7]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[8]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2[9]_i_1_n_0 ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[0] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[10] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[11] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[12] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[1] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[2] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[3] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[4] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[5] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[6] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[7] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[8] ;
  wire \sig_addr_cntr_incr_ireg2_reg_n_0_[9] ;
  wire \sig_addr_cntr_lsh_im0[15]_i_1_n_0 ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[0] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[10] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[11] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[12] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[13] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[14] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[1] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[2] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[3] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[4] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[5] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[6] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[7] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[8] ;
  wire \sig_addr_cntr_lsh_im0_reg_n_0_[9] ;
  wire [31:0]sig_addr_cntr_lsh_kh;
  wire [11:0]sig_adjusted_addr_incr_im1;
  wire \sig_adjusted_addr_incr_ireg2[11]_i_2_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[11]_i_3_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[11]_i_4_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[11]_i_5_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_2_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_3_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_4_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[3]_i_5_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_2_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_3_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_4_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2[7]_i_5_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_1 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_2 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_3 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_1 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_2 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_3 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_1 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_2 ;
  wire \sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_3 ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[10] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[11] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ;
  wire \sig_adjusted_addr_incr_ireg2_reg_n_0_[9] ;
  wire sig_brst_cnt_eq_one_im0;
  wire sig_brst_cnt_eq_one_ireg1;
  wire sig_brst_cnt_eq_zero_im0;
  wire sig_brst_cnt_eq_zero_ireg1;
  wire \sig_btt_cntr_im0[11]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[11]_i_3_n_0 ;
  wire \sig_btt_cntr_im0[11]_i_4_n_0 ;
  wire \sig_btt_cntr_im0[11]_i_5_n_0 ;
  wire \sig_btt_cntr_im0[11]_i_6_n_0 ;
  wire \sig_btt_cntr_im0[11]_i_7_n_0 ;
  wire \sig_btt_cntr_im0[11]_i_8_n_0 ;
  wire \sig_btt_cntr_im0[11]_i_9_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_3_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_4_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_5_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_6_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_7_n_0 ;
  wire \sig_btt_cntr_im0[15]_i_8_n_0 ;
  wire \sig_btt_cntr_im0[19]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[19]_i_3_n_0 ;
  wire \sig_btt_cntr_im0[19]_i_4_n_0 ;
  wire \sig_btt_cntr_im0[19]_i_5_n_0 ;
  wire \sig_btt_cntr_im0[19]_i_6_n_0 ;
  wire \sig_btt_cntr_im0[19]_i_7_n_0 ;
  wire \sig_btt_cntr_im0[19]_i_8_n_0 ;
  wire \sig_btt_cntr_im0[19]_i_9_n_0 ;
  wire \sig_btt_cntr_im0[22]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[22]_i_3_n_0 ;
  wire \sig_btt_cntr_im0[22]_i_4_n_0 ;
  wire \sig_btt_cntr_im0[22]_i_5_n_0 ;
  wire \sig_btt_cntr_im0[22]_i_6_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_3_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_4_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_5_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_6_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_7_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_8_n_0 ;
  wire \sig_btt_cntr_im0[3]_i_9_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_2_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_3_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_4_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_5_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_6_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_7_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_8_n_0 ;
  wire \sig_btt_cntr_im0[7]_i_9_n_0 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_0 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_1 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_2 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_3 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_4 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_5 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_6 ;
  wire \sig_btt_cntr_im0_reg[11]_i_1_n_7 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_0 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_1 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_2 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_3 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_4 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_5 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_6 ;
  wire \sig_btt_cntr_im0_reg[15]_i_1_n_7 ;
  wire \sig_btt_cntr_im0_reg[19]_i_1_n_0 ;
  wire \sig_btt_cntr_im0_reg[19]_i_1_n_1 ;
  wire \sig_btt_cntr_im0_reg[19]_i_1_n_2 ;
  wire \sig_btt_cntr_im0_reg[19]_i_1_n_3 ;
  wire \sig_btt_cntr_im0_reg[19]_i_1_n_4 ;
  wire \sig_btt_cntr_im0_reg[19]_i_1_n_5 ;
  wire \sig_btt_cntr_im0_reg[19]_i_1_n_6 ;
  wire \sig_btt_cntr_im0_reg[19]_i_1_n_7 ;
  wire \sig_btt_cntr_im0_reg[22]_i_1_n_2 ;
  wire \sig_btt_cntr_im0_reg[22]_i_1_n_3 ;
  wire \sig_btt_cntr_im0_reg[22]_i_1_n_5 ;
  wire \sig_btt_cntr_im0_reg[22]_i_1_n_6 ;
  wire \sig_btt_cntr_im0_reg[22]_i_1_n_7 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_0 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_1 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_2 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_3 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_4 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_5 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_6 ;
  wire \sig_btt_cntr_im0_reg[3]_i_1_n_7 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_0 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_1 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_2 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_3 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_4 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_5 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_6 ;
  wire \sig_btt_cntr_im0_reg[7]_i_1_n_7 ;
  wire \sig_btt_cntr_im0_reg_n_0_[0] ;
  wire \sig_btt_cntr_im0_reg_n_0_[10] ;
  wire \sig_btt_cntr_im0_reg_n_0_[11] ;
  wire \sig_btt_cntr_im0_reg_n_0_[12] ;
  wire \sig_btt_cntr_im0_reg_n_0_[13] ;
  wire \sig_btt_cntr_im0_reg_n_0_[14] ;
  wire \sig_btt_cntr_im0_reg_n_0_[15] ;
  wire \sig_btt_cntr_im0_reg_n_0_[16] ;
  wire \sig_btt_cntr_im0_reg_n_0_[17] ;
  wire \sig_btt_cntr_im0_reg_n_0_[18] ;
  wire \sig_btt_cntr_im0_reg_n_0_[19] ;
  wire \sig_btt_cntr_im0_reg_n_0_[1] ;
  wire \sig_btt_cntr_im0_reg_n_0_[20] ;
  wire \sig_btt_cntr_im0_reg_n_0_[21] ;
  wire \sig_btt_cntr_im0_reg_n_0_[22] ;
  wire \sig_btt_cntr_im0_reg_n_0_[2] ;
  wire \sig_btt_cntr_im0_reg_n_0_[3] ;
  wire \sig_btt_cntr_im0_reg_n_0_[4] ;
  wire \sig_btt_cntr_im0_reg_n_0_[5] ;
  wire \sig_btt_cntr_im0_reg_n_0_[6] ;
  wire \sig_btt_cntr_im0_reg_n_0_[7] ;
  wire \sig_btt_cntr_im0_reg_n_0_[8] ;
  wire \sig_btt_cntr_im0_reg_n_0_[9] ;
  wire sig_btt_eq_b2mbaa_im0;
  wire sig_btt_eq_b2mbaa_im01;
  wire sig_btt_eq_b2mbaa_im01_carry__0_i_1_n_0;
  wire sig_btt_eq_b2mbaa_im01_carry_i_1_n_0;
  wire sig_btt_eq_b2mbaa_im01_carry_i_2_n_0;
  wire sig_btt_eq_b2mbaa_im01_carry_i_3_n_0;
  wire sig_btt_eq_b2mbaa_im01_carry_i_4_n_0;
  wire sig_btt_eq_b2mbaa_im01_carry_n_0;
  wire sig_btt_eq_b2mbaa_im01_carry_n_1;
  wire sig_btt_eq_b2mbaa_im01_carry_n_2;
  wire sig_btt_eq_b2mbaa_im01_carry_n_3;
  wire sig_btt_eq_b2mbaa_ireg1;
  wire sig_btt_is_zero__0;
  wire sig_btt_lt_b2mbaa_im0;
  wire sig_btt_lt_b2mbaa_im01;
  wire sig_btt_lt_b2mbaa_im01_carry__0_i_1_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry__0_i_2_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry__0_i_3_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry__0_i_4_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry__0_i_5_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry__0_n_2;
  wire sig_btt_lt_b2mbaa_im01_carry__0_n_3;
  wire sig_btt_lt_b2mbaa_im01_carry_i_1_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_2_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_3_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_4_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_5_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_6_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_7_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_i_8_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_n_0;
  wire sig_btt_lt_b2mbaa_im01_carry_n_1;
  wire sig_btt_lt_b2mbaa_im01_carry_n_2;
  wire sig_btt_lt_b2mbaa_im01_carry_n_3;
  wire sig_btt_lt_b2mbaa_ireg1;
  wire sig_btt_lt_b2mbaa_ireg1_i_2_n_0;
  wire sig_btt_lt_b2mbaa_ireg1_i_3_n_0;
  wire [12:1]sig_bytes_to_mbaa_im0;
  wire [12:0]sig_bytes_to_mbaa_ireg1;
  wire \sig_bytes_to_mbaa_ireg1[12]_i_2_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[12]_i_3_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[12]_i_4_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[4]_i_2_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[4]_i_3_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[4]_i_4_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[4]_i_5_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[4]_i_6_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[8]_i_2_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[8]_i_3_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[8]_i_4_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1[8]_i_5_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1_reg[12]_i_1_n_2 ;
  wire \sig_bytes_to_mbaa_ireg1_reg[12]_i_1_n_3 ;
  wire \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_1 ;
  wire \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_2 ;
  wire \sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_3 ;
  wire \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_0 ;
  wire \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_1 ;
  wire \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_2 ;
  wire \sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_3 ;
  wire sig_calc_error_pushed;
  wire sig_calc_error_pushed_i_1_n_0;
  wire sig_calc_error_reg_i_1_n_0;
  wire sig_calc_error_reg_i_3_n_0;
  wire [1:0]sig_calc_error_reg_reg_0;
  wire sig_cmd2addr_valid_i_1_n_0;
  wire sig_cmd2addr_valid_reg_0;
  wire sig_cmd2data_valid_i_1_n_0;
  wire sig_cmd2data_valid_reg_0;
  wire sig_cmd2dre_valid_i_1_n_0;
  wire sig_cmd2dre_valid_reg_n_0;
  wire sig_cmd2mstr_cmd_valid;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  wire sig_first_xfer_im0;
  wire sig_first_xfer_im0_i_1_n_0;
  wire sig_inhibit_rdy_n;
  wire sig_inhibit_rdy_n_1;
  wire sig_init_reg;
  wire sig_input_burst_type_reg_i_1_n_0;
  wire sig_input_reg_empty;
  wire sig_input_reg_empty_i_1_n_0;
  wire sig_ld_xfer_reg;
  wire sig_ld_xfer_reg_i_1_n_0;
  wire sig_ld_xfer_reg_tmp;
  wire sig_ld_xfer_reg_tmp_i_1_n_0;
  wire sig_mstr2addr_cmd_valid;
  wire sig_mstr2data_cmd_valid;
  wire sig_no_btt_residue_im0;
  wire sig_no_btt_residue_ireg1;
  wire sig_no_btt_residue_ireg1_i_2_n_0;
  wire sig_no_btt_residue_ireg1_i_3_n_0;
  wire sig_parent_done;
  wire sig_parent_done_i_1_n_0;
  wire sig_pop_xfer_reg0_out;
  wire [15:0]sig_predict_addr_lsh_im2;
  wire [15:15]sig_predict_addr_lsh_ireg3;
  wire \sig_predict_addr_lsh_ireg3[11]_i_2_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[11]_i_3_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[11]_i_4_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[11]_i_5_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[15]_i_2_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_2_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_3_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_4_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[3]_i_5_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_2_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ;
  wire \sig_predict_addr_lsh_ireg3[7]_i_5_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2 ;
  wire \sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3 ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[0] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[10] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[11] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[12] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[13] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[14] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[1] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[2] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[3] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[4] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[5] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[6] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[7] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[8] ;
  wire \sig_predict_addr_lsh_ireg3_reg_n_0_[9] ;
  wire sig_push_input_reg11_out;
  wire sig_sm_halt_ns;
  wire sig_sm_halt_reg;
  wire sig_sm_ld_calc1_reg;
  wire sig_sm_ld_calc1_reg_ns;
  wire sig_sm_ld_calc2_reg;
  wire sig_sm_ld_xfer_reg_ns;
  wire sig_sm_pop_input_reg;
  wire sig_sm_pop_input_reg_ns;
  wire sig_wr_fifo;
  wire sig_wr_fifo_0;
  wire sig_xfer_reg_empty;
  wire sig_xfer_reg_empty_i_1_n_0;
  wire [3:2]\NLW_INFERRED_GEN.data_reg[3][17]_srl4_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_INFERRED_GEN.data_reg[3][17]_srl4_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_INFERRED_GEN.data_reg[3][22]_srl4_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_sig_addr_cntr_im0_msh_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sig_adjusted_addr_incr_ireg2_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_sig_btt_cntr_im0_reg[22]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sig_btt_cntr_im0_reg[22]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_sig_btt_eq_b2mbaa_im01_carry_O_UNCONNECTED;
  wire [3:1]NLW_sig_btt_eq_b2mbaa_im01_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sig_btt_eq_b2mbaa_im01_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED;
  wire [3:3]NLW_sig_btt_lt_b2mbaa_im01_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sig_btt_lt_b2mbaa_im01_carry__0_O_UNCONNECTED;
  wire [2:2]\NLW_sig_bytes_to_mbaa_ireg1_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sig_bytes_to_mbaa_ireg1_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBAAAFFFFBAAABAAA)) 
    \FSM_onehot_sig_pcc_sm_state[1]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .I1(sig_calc_error_pushed),
        .I2(sig_parent_done),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I4(sig_push_input_reg11_out),
        .I5(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .O(\FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sig_pcc_sm_state[5]_i_1 
       (.I0(sig_pop_xfer_reg0_out),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I2(sig_sm_ld_xfer_reg_ns),
        .O(\FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C0CCC0C0E0EFE0E)) 
    \FSM_onehot_sig_pcc_sm_state[5]_i_2 
       (.I0(sig_cmd2dre_valid_reg_n_0),
        .I1(sig_wr_fifo_0),
        .I2(sig_mstr2data_cmd_valid),
        .I3(sig_inhibit_rdy_n),
        .I4(sig_cmd2data_valid_reg_0),
        .I5(sig_mstr2addr_cmd_valid),
        .O(sig_pop_xfer_reg0_out));
  LUT6 #(
    .INIT(64'hA0AA2022A0AA2020)) 
    \FSM_onehot_sig_pcc_sm_state[6]_i_1 
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .I1(sig_mstr2addr_cmd_valid),
        .I2(sig_wr_fifo),
        .I3(sig_mstr2data_cmd_valid),
        .I4(sig_wr_fifo_0),
        .I5(sig_cmd2dre_valid_reg_n_0),
        .O(\FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_sig_pcc_sm_state[7]_i_1 
       (.I0(sig_calc_error_pushed),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ),
        .O(\FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_sig_pcc_sm_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .S(sig_init_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .R(sig_init_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(sig_sm_ld_calc2_reg),
        .Q(sig_sm_ld_xfer_reg_ns),
        .R(sig_init_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[5] ),
        .R(sig_init_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .R(sig_init_reg));
  (* FSM_ENCODED_STATES = "init:00000001,calc_2:00001000,calc_3:00010000,wait_on_xfer_push:00100000,chk_if_done:01000000,error_trap:10000000,calc_1:00000100,wait_for_cmd:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sig_pcc_sm_state_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_sig_pcc_sm_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ),
        .R(sig_init_reg));
  CARRY4 \INFERRED_GEN.data_reg[3][17]_srl4_i_1 
       (.CI(\INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_0 ),
        .CO({\NLW_INFERRED_GEN.data_reg[3][17]_srl4_i_1_CO_UNCONNECTED [3:2],\INFERRED_GEN.data_reg[3][17]_srl4_i_1_n_2 ,\INFERRED_GEN.data_reg[3][17]_srl4_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\sig_adjusted_addr_incr_ireg2_reg_n_0_[10] ,\sig_adjusted_addr_incr_ireg2_reg_n_0_[9] }),
        .O({\NLW_INFERRED_GEN.data_reg[3][17]_srl4_i_1_O_UNCONNECTED [3],in[39:37]}),
        .S({1'b0,\INFERRED_GEN.data_reg[3][17]_srl4_i_2_n_0 ,\INFERRED_GEN.data_reg[3][17]_srl4_i_3_n_0 ,\INFERRED_GEN.data_reg[3][17]_srl4_i_4_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \INFERRED_GEN.data_reg[3][17]_srl4_i_2 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[11] ),
        .O(\INFERRED_GEN.data_reg[3][17]_srl4_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \INFERRED_GEN.data_reg[3][17]_srl4_i_3 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[10] ),
        .O(\INFERRED_GEN.data_reg[3][17]_srl4_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \INFERRED_GEN.data_reg[3][17]_srl4_i_4 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[9] ),
        .O(\INFERRED_GEN.data_reg[3][17]_srl4_i_4_n_0 ));
  CARRY4 \INFERRED_GEN.data_reg[3][21]_srl4_i_1 
       (.CI(\INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_0 ),
        .CO({\INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_0 ,\INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_1 ,\INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_2 ,\INFERRED_GEN.data_reg[3][21]_srl4_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ,\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ,\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ,\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] }),
        .O(in[36:33]),
        .S({\INFERRED_GEN.data_reg[3][21]_srl4_i_2_n_0 ,\INFERRED_GEN.data_reg[3][21]_srl4_i_3_n_0 ,\INFERRED_GEN.data_reg[3][21]_srl4_i_4_n_0 ,\INFERRED_GEN.data_reg[3][21]_srl4_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \INFERRED_GEN.data_reg[3][21]_srl4_i_2 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ),
        .O(\INFERRED_GEN.data_reg[3][21]_srl4_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \INFERRED_GEN.data_reg[3][21]_srl4_i_3 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .O(\INFERRED_GEN.data_reg[3][21]_srl4_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \INFERRED_GEN.data_reg[3][21]_srl4_i_4 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .O(\INFERRED_GEN.data_reg[3][21]_srl4_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \INFERRED_GEN.data_reg[3][21]_srl4_i_5 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .O(\INFERRED_GEN.data_reg[3][21]_srl4_i_5_n_0 ));
  CARRY4 \INFERRED_GEN.data_reg[3][22]_srl4_i_1 
       (.CI(1'b0),
        .CO({\INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_0 ,\INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_1 ,\INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_2 ,\INFERRED_GEN.data_reg[3][22]_srl4_i_1_n_3 }),
        .CYINIT(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .DI({\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ,\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ,\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ,\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] }),
        .O({in[32],\NLW_INFERRED_GEN.data_reg[3][22]_srl4_i_1_O_UNCONNECTED [2:0]}),
        .S({\INFERRED_GEN.data_reg[3][22]_srl4_i_2_n_0 ,\INFERRED_GEN.data_reg[3][22]_srl4_i_3_n_0 ,\INFERRED_GEN.data_reg[3][22]_srl4_i_4_n_0 ,\INFERRED_GEN.data_reg[3][22]_srl4_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \INFERRED_GEN.data_reg[3][22]_srl4_i_2 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .O(\INFERRED_GEN.data_reg[3][22]_srl4_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \INFERRED_GEN.data_reg[3][22]_srl4_i_3 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .O(\INFERRED_GEN.data_reg[3][22]_srl4_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \INFERRED_GEN.data_reg[3][22]_srl4_i_4 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .O(\INFERRED_GEN.data_reg[3][22]_srl4_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \INFERRED_GEN.data_reg[3][22]_srl4_i_5 
       (.I0(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .O(\INFERRED_GEN.data_reg[3][22]_srl4_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][23]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[15]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[31]),
        .O(in[31]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][24]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[14]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[30]),
        .O(in[30]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][25]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[13]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[29]),
        .O(in[29]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][26]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[12]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[28]),
        .O(in[28]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][27]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[11]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[27]),
        .O(in[27]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][28]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[10]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[26]),
        .O(in[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][29]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[9]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[25]),
        .O(in[25]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][30]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[8]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[24]),
        .O(in[24]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][31]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[7]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[23]),
        .O(in[23]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][32]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[6]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[22]),
        .O(in[22]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][33]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[5]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[21]),
        .O(in[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][34]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[4]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[20]),
        .O(in[20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][35]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[3]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[19]),
        .O(in[19]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][36]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[2]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[18]),
        .O(in[18]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][37]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[1]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[17]),
        .O(in[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][38]_srl4_i_1 
       (.I0(sig_addr_cntr_im0_msh_reg[0]),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[16]),
        .O(in[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][39]_srl4_i_1 
       (.I0(p_1_in_0),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[15]),
        .O(in[15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.data_reg[3][3]_srl4_i_1 
       (.I0(in[41]),
        .I1(sig_calc_error_reg_reg_0[0]),
        .O(sig_calc_error_reg_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][40]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[14] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[14]),
        .O(in[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][41]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[13] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[13]),
        .O(in[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][42]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[12]),
        .O(in[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][43]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[11]),
        .O(in[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][44]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[10]),
        .O(in[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][45]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[9]),
        .O(in[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][46]_srl4_i_1__0 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[8]),
        .O(in[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][47]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[7]),
        .O(in[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][48]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[6]),
        .O(in[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][49]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[5]),
        .O(in[5]));
  LUT6 #(
    .INIT(64'h7070707F7F7F7F7F)) 
    \INFERRED_GEN.data_reg[3][4]_srl4_i_1 
       (.I0(sig_addr_aligned_ireg1),
        .I1(sig_brst_cnt_eq_one_ireg1),
        .I2(sig_no_btt_residue_ireg1),
        .I3(sig_btt_eq_b2mbaa_ireg1),
        .I4(sig_btt_lt_b2mbaa_ireg1),
        .I5(sig_brst_cnt_eq_zero_ireg1),
        .O(sig_calc_error_reg_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][50]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[4]),
        .O(in[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][51]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[3]),
        .O(in[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][52]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[2]),
        .O(in[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][53]_srl4_i_1 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[1]),
        .O(in[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \INFERRED_GEN.data_reg[3][54]_srl4_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I1(in[40]),
        .I2(sig_addr_cntr_lsh_kh[0]),
        .O(in[0]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \USE_SINGLE_REG.sig_regfifo_empty_reg_i_2 
       (.I0(sig_cmd2mstr_cmd_valid),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(sig_calc_error_pushed),
        .O(\USE_SINGLE_REG.sig_regfifo_full_reg_reg ));
  LUT6 #(
    .INIT(64'hAAAAA0AA88888888)) 
    \USE_SINGLE_REG.sig_regfifo_full_reg_i_1 
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(E),
        .I2(sig_calc_error_pushed),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_cmd2mstr_cmd_valid),
        .O(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    sig_addr_aligned_ireg1_i_1
       (.I0(sig_addr_aligned_ireg1_i_2_n_0),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I5(sig_addr_aligned_ireg1_i_3_n_0),
        .O(sig_addr_aligned_im0));
  LUT4 #(
    .INIT(16'h0001)) 
    sig_addr_aligned_ireg1_i_2
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .O(sig_addr_aligned_ireg1_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    sig_addr_aligned_ireg1_i_3
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I2(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I3(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .O(sig_addr_aligned_ireg1_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_addr_aligned_ireg1_reg
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_addr_aligned_im0),
        .Q(sig_addr_aligned_ireg1),
        .R(sig_init_reg));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sig_addr_cntr_im0_msh[0]_i_1 
       (.I0(sig_pop_xfer_reg0_out),
        .I1(p_1_in_0),
        .I2(sig_predict_addr_lsh_ireg3),
        .I3(sig_push_input_reg11_out),
        .O(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[0]_i_3 
       (.I0(Q[28]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[0]),
        .O(\sig_addr_cntr_im0_msh[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[0]_i_4 
       (.I0(Q[31]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[3]),
        .O(\sig_addr_cntr_im0_msh[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[0]_i_5 
       (.I0(Q[30]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[2]),
        .O(\sig_addr_cntr_im0_msh[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[0]_i_6 
       (.I0(Q[29]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[1]),
        .O(\sig_addr_cntr_im0_msh[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h55555C5555555555)) 
    \sig_addr_cntr_im0_msh[0]_i_7 
       (.I0(sig_addr_cntr_im0_msh_reg[0]),
        .I1(Q[28]),
        .I2(in[41]),
        .I3(sig_input_reg_empty),
        .I4(sig_sm_halt_reg),
        .I5(sig_cmd2mstr_cmd_valid),
        .O(\sig_addr_cntr_im0_msh[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[12]_i_2 
       (.I0(Q[43]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[15]),
        .O(\sig_addr_cntr_im0_msh[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[12]_i_3 
       (.I0(Q[42]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[14]),
        .O(\sig_addr_cntr_im0_msh[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[12]_i_4 
       (.I0(Q[41]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[13]),
        .O(\sig_addr_cntr_im0_msh[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[12]_i_5 
       (.I0(Q[40]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[12]),
        .O(\sig_addr_cntr_im0_msh[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[4]_i_2 
       (.I0(Q[35]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[7]),
        .O(\sig_addr_cntr_im0_msh[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[4]_i_3 
       (.I0(Q[34]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[6]),
        .O(\sig_addr_cntr_im0_msh[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[4]_i_4 
       (.I0(Q[33]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[5]),
        .O(\sig_addr_cntr_im0_msh[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[4]_i_5 
       (.I0(Q[32]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[4]),
        .O(\sig_addr_cntr_im0_msh[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[8]_i_2 
       (.I0(Q[39]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[11]),
        .O(\sig_addr_cntr_im0_msh[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[8]_i_3 
       (.I0(Q[38]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[10]),
        .O(\sig_addr_cntr_im0_msh[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[8]_i_4 
       (.I0(Q[37]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[9]),
        .O(\sig_addr_cntr_im0_msh[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_im0_msh[8]_i_5 
       (.I0(Q[36]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_addr_cntr_im0_msh_reg[8]),
        .O(\sig_addr_cntr_im0_msh[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[0] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[0]_i_2_n_7 ),
        .Q(sig_addr_cntr_im0_msh_reg[0]),
        .R(sig_init_reg));
  CARRY4 \sig_addr_cntr_im0_msh_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\sig_addr_cntr_im0_msh_reg[0]_i_2_n_0 ,\sig_addr_cntr_im0_msh_reg[0]_i_2_n_1 ,\sig_addr_cntr_im0_msh_reg[0]_i_2_n_2 ,\sig_addr_cntr_im0_msh_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sig_addr_cntr_im0_msh[0]_i_3_n_0 }),
        .O({\sig_addr_cntr_im0_msh_reg[0]_i_2_n_4 ,\sig_addr_cntr_im0_msh_reg[0]_i_2_n_5 ,\sig_addr_cntr_im0_msh_reg[0]_i_2_n_6 ,\sig_addr_cntr_im0_msh_reg[0]_i_2_n_7 }),
        .S({\sig_addr_cntr_im0_msh[0]_i_4_n_0 ,\sig_addr_cntr_im0_msh[0]_i_5_n_0 ,\sig_addr_cntr_im0_msh[0]_i_6_n_0 ,\sig_addr_cntr_im0_msh[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[10] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[8]_i_1_n_5 ),
        .Q(sig_addr_cntr_im0_msh_reg[10]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[11] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[8]_i_1_n_4 ),
        .Q(sig_addr_cntr_im0_msh_reg[11]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[12] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[12]_i_1_n_7 ),
        .Q(sig_addr_cntr_im0_msh_reg[12]),
        .R(sig_init_reg));
  CARRY4 \sig_addr_cntr_im0_msh_reg[12]_i_1 
       (.CI(\sig_addr_cntr_im0_msh_reg[8]_i_1_n_0 ),
        .CO({\NLW_sig_addr_cntr_im0_msh_reg[12]_i_1_CO_UNCONNECTED [3],\sig_addr_cntr_im0_msh_reg[12]_i_1_n_1 ,\sig_addr_cntr_im0_msh_reg[12]_i_1_n_2 ,\sig_addr_cntr_im0_msh_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_addr_cntr_im0_msh_reg[12]_i_1_n_4 ,\sig_addr_cntr_im0_msh_reg[12]_i_1_n_5 ,\sig_addr_cntr_im0_msh_reg[12]_i_1_n_6 ,\sig_addr_cntr_im0_msh_reg[12]_i_1_n_7 }),
        .S({\sig_addr_cntr_im0_msh[12]_i_2_n_0 ,\sig_addr_cntr_im0_msh[12]_i_3_n_0 ,\sig_addr_cntr_im0_msh[12]_i_4_n_0 ,\sig_addr_cntr_im0_msh[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[13] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[12]_i_1_n_6 ),
        .Q(sig_addr_cntr_im0_msh_reg[13]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[14] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[12]_i_1_n_5 ),
        .Q(sig_addr_cntr_im0_msh_reg[14]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[15] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[12]_i_1_n_4 ),
        .Q(sig_addr_cntr_im0_msh_reg[15]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[1] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[0]_i_2_n_6 ),
        .Q(sig_addr_cntr_im0_msh_reg[1]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[2] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[0]_i_2_n_5 ),
        .Q(sig_addr_cntr_im0_msh_reg[2]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[3] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[0]_i_2_n_4 ),
        .Q(sig_addr_cntr_im0_msh_reg[3]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[4] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[4]_i_1_n_7 ),
        .Q(sig_addr_cntr_im0_msh_reg[4]),
        .R(sig_init_reg));
  CARRY4 \sig_addr_cntr_im0_msh_reg[4]_i_1 
       (.CI(\sig_addr_cntr_im0_msh_reg[0]_i_2_n_0 ),
        .CO({\sig_addr_cntr_im0_msh_reg[4]_i_1_n_0 ,\sig_addr_cntr_im0_msh_reg[4]_i_1_n_1 ,\sig_addr_cntr_im0_msh_reg[4]_i_1_n_2 ,\sig_addr_cntr_im0_msh_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_addr_cntr_im0_msh_reg[4]_i_1_n_4 ,\sig_addr_cntr_im0_msh_reg[4]_i_1_n_5 ,\sig_addr_cntr_im0_msh_reg[4]_i_1_n_6 ,\sig_addr_cntr_im0_msh_reg[4]_i_1_n_7 }),
        .S({\sig_addr_cntr_im0_msh[4]_i_2_n_0 ,\sig_addr_cntr_im0_msh[4]_i_3_n_0 ,\sig_addr_cntr_im0_msh[4]_i_4_n_0 ,\sig_addr_cntr_im0_msh[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[5] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[4]_i_1_n_6 ),
        .Q(sig_addr_cntr_im0_msh_reg[5]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[6] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[4]_i_1_n_5 ),
        .Q(sig_addr_cntr_im0_msh_reg[6]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[7] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[4]_i_1_n_4 ),
        .Q(sig_addr_cntr_im0_msh_reg[7]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[8] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[8]_i_1_n_7 ),
        .Q(sig_addr_cntr_im0_msh_reg[8]),
        .R(sig_init_reg));
  CARRY4 \sig_addr_cntr_im0_msh_reg[8]_i_1 
       (.CI(\sig_addr_cntr_im0_msh_reg[4]_i_1_n_0 ),
        .CO({\sig_addr_cntr_im0_msh_reg[8]_i_1_n_0 ,\sig_addr_cntr_im0_msh_reg[8]_i_1_n_1 ,\sig_addr_cntr_im0_msh_reg[8]_i_1_n_2 ,\sig_addr_cntr_im0_msh_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sig_addr_cntr_im0_msh_reg[8]_i_1_n_4 ,\sig_addr_cntr_im0_msh_reg[8]_i_1_n_5 ,\sig_addr_cntr_im0_msh_reg[8]_i_1_n_6 ,\sig_addr_cntr_im0_msh_reg[8]_i_1_n_7 }),
        .S({\sig_addr_cntr_im0_msh[8]_i_2_n_0 ,\sig_addr_cntr_im0_msh[8]_i_3_n_0 ,\sig_addr_cntr_im0_msh[8]_i_4_n_0 ,\sig_addr_cntr_im0_msh[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_im0_msh_reg[9] 
       (.C(clk),
        .CE(\sig_addr_cntr_im0_msh[0]_i_1_n_0 ),
        .D(\sig_addr_cntr_im0_msh_reg[8]_i_1_n_6 ),
        .Q(sig_addr_cntr_im0_msh_reg[9]),
        .R(sig_init_reg));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_addr_cntr_incr_ireg2[0]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[0]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_addr_cntr_incr_ireg2[10]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[10]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .O(\sig_addr_cntr_incr_ireg2[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_addr_cntr_incr_ireg2[11]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[11]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .O(\sig_addr_cntr_incr_ireg2[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h31)) 
    \sig_addr_cntr_incr_ireg2[12]_i_1 
       (.I0(sig_first_xfer_im0),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_bytes_to_mbaa_ireg1[12]),
        .O(\sig_addr_cntr_incr_ireg2[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_addr_cntr_incr_ireg2[1]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[1]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .O(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_addr_cntr_incr_ireg2[2]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[2]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .O(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_addr_cntr_incr_ireg2[3]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[3]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .O(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_addr_cntr_incr_ireg2[4]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[4]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_addr_cntr_incr_ireg2[5]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[5]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .O(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_addr_cntr_incr_ireg2[6]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[6]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .O(\sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_addr_cntr_incr_ireg2[7]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[7]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .O(\sig_addr_cntr_incr_ireg2[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_addr_cntr_incr_ireg2[8]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[8]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .O(\sig_addr_cntr_incr_ireg2[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_addr_cntr_incr_ireg2[9]_i_1 
       (.I0(sig_bytes_to_mbaa_ireg1[9]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .O(\sig_addr_cntr_incr_ireg2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[0] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[0]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[0] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[10] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[10]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[10] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[11] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[11]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[11] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[12] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[12]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[12] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[1] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[1]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[1] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[2] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[2]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[2] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[3] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[3]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[3] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[4] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[4]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[4] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[5] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[5]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[5] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[6] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[6]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[6] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[7] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[7]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[7] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[8] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[8]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[8] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_incr_ireg2_reg[9] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(\sig_addr_cntr_incr_ireg2[9]_i_1_n_0 ),
        .Q(\sig_addr_cntr_incr_ireg2_reg_n_0_[9] ),
        .R(sig_init_reg));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[0]_i_1 
       (.I0(Q[12]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[0] ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[10]_i_1 
       (.I0(Q[22]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[10] ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[11]_i_1 
       (.I0(Q[23]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[11] ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[12]_i_1 
       (.I0(Q[24]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[12] ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[13]_i_1 
       (.I0(Q[25]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[13] ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[14]_i_1 
       (.I0(Q[26]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[14] ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hFAFFBABBFAFFBABA)) 
    \sig_addr_cntr_lsh_im0[15]_i_1 
       (.I0(sig_push_input_reg11_out),
        .I1(sig_mstr2addr_cmd_valid),
        .I2(sig_wr_fifo),
        .I3(sig_mstr2data_cmd_valid),
        .I4(sig_wr_fifo_0),
        .I5(sig_cmd2dre_valid_reg_n_0),
        .O(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[15]_i_2 
       (.I0(Q[27]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(sig_predict_addr_lsh_ireg3),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[1]_i_1 
       (.I0(Q[13]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[1] ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[2]_i_1 
       (.I0(Q[14]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[2] ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[3]_i_1 
       (.I0(Q[15]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[3] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[4]_i_1 
       (.I0(Q[16]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[4] ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[5]_i_1 
       (.I0(Q[17]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[5] ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[6]_i_1 
       (.I0(Q[18]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[6] ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[7]_i_1 
       (.I0(Q[19]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[7] ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[8]_i_1 
       (.I0(Q[20]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[8] ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \sig_addr_cntr_lsh_im0[9]_i_1 
       (.I0(Q[21]),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_predict_addr_lsh_ireg3_reg_n_0_[9] ),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[0] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[10] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[11] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[12] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[13] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[13] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[14] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[14] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[15] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(p_1_in_0),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[1] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[2] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[3] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[4] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[5] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[6] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[7] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[8] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_im0_reg[9] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .R(sig_init_reg));
  LUT4 #(
    .INIT(16'h0020)) 
    \sig_addr_cntr_lsh_kh[31]_i_1 
       (.I0(sig_cmd2mstr_cmd_valid),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(in[41]),
        .O(sig_push_input_reg11_out));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[0] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[12]),
        .Q(sig_addr_cntr_lsh_kh[0]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[10] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[22]),
        .Q(sig_addr_cntr_lsh_kh[10]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[11] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[23]),
        .Q(sig_addr_cntr_lsh_kh[11]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[12] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[24]),
        .Q(sig_addr_cntr_lsh_kh[12]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[13] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[25]),
        .Q(sig_addr_cntr_lsh_kh[13]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[14] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[26]),
        .Q(sig_addr_cntr_lsh_kh[14]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[15] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[27]),
        .Q(sig_addr_cntr_lsh_kh[15]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[16] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[28]),
        .Q(sig_addr_cntr_lsh_kh[16]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[17] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[29]),
        .Q(sig_addr_cntr_lsh_kh[17]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[18] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[30]),
        .Q(sig_addr_cntr_lsh_kh[18]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[19] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[31]),
        .Q(sig_addr_cntr_lsh_kh[19]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[1] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[13]),
        .Q(sig_addr_cntr_lsh_kh[1]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[20] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[32]),
        .Q(sig_addr_cntr_lsh_kh[20]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[21] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[33]),
        .Q(sig_addr_cntr_lsh_kh[21]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[22] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[34]),
        .Q(sig_addr_cntr_lsh_kh[22]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[23] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[35]),
        .Q(sig_addr_cntr_lsh_kh[23]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[24] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[36]),
        .Q(sig_addr_cntr_lsh_kh[24]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[25] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[37]),
        .Q(sig_addr_cntr_lsh_kh[25]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[26] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[38]),
        .Q(sig_addr_cntr_lsh_kh[26]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[27] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[39]),
        .Q(sig_addr_cntr_lsh_kh[27]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[28] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[40]),
        .Q(sig_addr_cntr_lsh_kh[28]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[29] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[41]),
        .Q(sig_addr_cntr_lsh_kh[29]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[2] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[14]),
        .Q(sig_addr_cntr_lsh_kh[2]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[30] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[42]),
        .Q(sig_addr_cntr_lsh_kh[30]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[31] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[43]),
        .Q(sig_addr_cntr_lsh_kh[31]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[3] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[15]),
        .Q(sig_addr_cntr_lsh_kh[3]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[4] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[16]),
        .Q(sig_addr_cntr_lsh_kh[4]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[5] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[17]),
        .Q(sig_addr_cntr_lsh_kh[5]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[6] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[18]),
        .Q(sig_addr_cntr_lsh_kh[6]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[7] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[19]),
        .Q(sig_addr_cntr_lsh_kh[7]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[8] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[20]),
        .Q(sig_addr_cntr_lsh_kh[8]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_cntr_lsh_kh_reg[9] 
       (.C(clk),
        .CE(sig_push_input_reg11_out),
        .D(Q[21]),
        .Q(sig_addr_cntr_lsh_kh[9]),
        .R(sig_init_reg));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_adjusted_addr_incr_ireg2[11]_i_2 
       (.I0(sig_bytes_to_mbaa_ireg1[11]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .O(\sig_adjusted_addr_incr_ireg2[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_adjusted_addr_incr_ireg2[11]_i_3 
       (.I0(sig_bytes_to_mbaa_ireg1[10]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .O(\sig_adjusted_addr_incr_ireg2[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_adjusted_addr_incr_ireg2[11]_i_4 
       (.I0(sig_bytes_to_mbaa_ireg1[9]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .O(\sig_adjusted_addr_incr_ireg2[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_adjusted_addr_incr_ireg2[11]_i_5 
       (.I0(sig_bytes_to_mbaa_ireg1[8]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .O(\sig_adjusted_addr_incr_ireg2[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4777B888)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_2 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[3]),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4777B888)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_3 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[2]),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h4777B888)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_4 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[1]),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h4777B888)) 
    \sig_adjusted_addr_incr_ireg2[3]_i_5 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(sig_btt_lt_b2mbaa_ireg1),
        .I2(sig_first_xfer_im0),
        .I3(sig_bytes_to_mbaa_ireg1[0]),
        .I4(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .O(\sig_adjusted_addr_incr_ireg2[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_2 
       (.I0(sig_bytes_to_mbaa_ireg1[7]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_3 
       (.I0(sig_bytes_to_mbaa_ireg1[6]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_4 
       (.I0(sig_bytes_to_mbaa_ireg1[5]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF808)) 
    \sig_adjusted_addr_incr_ireg2[7]_i_5 
       (.I0(sig_bytes_to_mbaa_ireg1[4]),
        .I1(sig_first_xfer_im0),
        .I2(sig_btt_lt_b2mbaa_ireg1),
        .I3(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(\sig_adjusted_addr_incr_ireg2[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[0] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[0]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[0] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[10] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[10]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[10] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[11] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[11]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[11] ),
        .R(sig_init_reg));
  CARRY4 \sig_adjusted_addr_incr_ireg2_reg[11]_i_1 
       (.CI(\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0 ),
        .CO({\NLW_sig_adjusted_addr_incr_ireg2_reg[11]_i_1_CO_UNCONNECTED [3],\sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_1 ,\sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_2 ,\sig_adjusted_addr_incr_ireg2_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sig_adjusted_addr_incr_im1[11:8]),
        .S({\sig_adjusted_addr_incr_ireg2[11]_i_2_n_0 ,\sig_adjusted_addr_incr_ireg2[11]_i_3_n_0 ,\sig_adjusted_addr_incr_ireg2[11]_i_4_n_0 ,\sig_adjusted_addr_incr_ireg2[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[1] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[1]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[1] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[2] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[2]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[2] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[3] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[3]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[3] ),
        .R(sig_init_reg));
  CARRY4 \sig_adjusted_addr_incr_ireg2_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_0 ,\sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_1 ,\sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_2 ,\sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_addr_cntr_lsh_im0_reg_n_0_[3] ,\sig_addr_cntr_lsh_im0_reg_n_0_[2] ,\sig_addr_cntr_lsh_im0_reg_n_0_[1] ,\sig_addr_cntr_lsh_im0_reg_n_0_[0] }),
        .O(sig_adjusted_addr_incr_im1[3:0]),
        .S({\sig_adjusted_addr_incr_ireg2[3]_i_2_n_0 ,\sig_adjusted_addr_incr_ireg2[3]_i_3_n_0 ,\sig_adjusted_addr_incr_ireg2[3]_i_4_n_0 ,\sig_adjusted_addr_incr_ireg2[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[4] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[4]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[4] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[5] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[5]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[5] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[6] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[6]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[6] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[7] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[7]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[7] ),
        .R(sig_init_reg));
  CARRY4 \sig_adjusted_addr_incr_ireg2_reg[7]_i_1 
       (.CI(\sig_adjusted_addr_incr_ireg2_reg[3]_i_1_n_0 ),
        .CO({\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_0 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_1 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_2 ,\sig_adjusted_addr_incr_ireg2_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sig_adjusted_addr_incr_im1[7:4]),
        .S({\sig_adjusted_addr_incr_ireg2[7]_i_2_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_3_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_4_n_0 ,\sig_adjusted_addr_incr_ireg2[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[8] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[8]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[8] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_adjusted_addr_incr_ireg2_reg[9] 
       (.C(clk),
        .CE(sig_sm_ld_calc2_reg),
        .D(sig_adjusted_addr_incr_im1[9]),
        .Q(\sig_adjusted_addr_incr_ireg2_reg_n_0_[9] ),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sig_brst_cnt_eq_one_ireg1_i_1
       (.I0(sig_btt_lt_b2mbaa_ireg1_i_2_n_0),
        .I1(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .O(sig_brst_cnt_eq_one_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_brst_cnt_eq_one_ireg1_reg
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_brst_cnt_eq_one_im0),
        .Q(sig_brst_cnt_eq_one_ireg1),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sig_brst_cnt_eq_zero_ireg1_i_1
       (.I0(sig_btt_lt_b2mbaa_ireg1_i_2_n_0),
        .I1(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .O(sig_brst_cnt_eq_zero_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_brst_cnt_eq_zero_ireg1_reg
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_brst_cnt_eq_zero_im0),
        .Q(sig_brst_cnt_eq_zero_ireg1),
        .R(sig_init_reg));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[11]_i_2 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[11] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[11]_i_3 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[10] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[11]_i_4 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[9] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[11]_i_5 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[8] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[11]_i_6 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[11] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[7]),
        .O(\sig_btt_cntr_im0[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[11]_i_7 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[10] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[6]),
        .O(\sig_btt_cntr_im0[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[11]_i_8 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[9] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[5]),
        .O(\sig_btt_cntr_im0[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[11]_i_9 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[8] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[4]),
        .O(\sig_btt_cntr_im0[11]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \sig_btt_cntr_im0[15]_i_2 
       (.I0(in[41]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \sig_btt_cntr_im0[15]_i_3 
       (.I0(in[41]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[15]_i_4 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[12] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFDF)) 
    \sig_btt_cntr_im0[15]_i_5 
       (.I0(sig_cmd2mstr_cmd_valid),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(in[41]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .O(\sig_btt_cntr_im0[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5575555555455555)) 
    \sig_btt_cntr_im0[15]_i_6 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .I5(Q[10]),
        .O(\sig_btt_cntr_im0[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5575555555455555)) 
    \sig_btt_cntr_im0[15]_i_7 
       (.I0(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .I5(Q[9]),
        .O(\sig_btt_cntr_im0[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[15]_i_8 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[12] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[8]),
        .O(\sig_btt_cntr_im0[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \sig_btt_cntr_im0[19]_i_2 
       (.I0(in[41]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \sig_btt_cntr_im0[19]_i_3 
       (.I0(in[41]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \sig_btt_cntr_im0[19]_i_4 
       (.I0(in[41]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \sig_btt_cntr_im0[19]_i_5 
       (.I0(in[41]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFDF)) 
    \sig_btt_cntr_im0[19]_i_6 
       (.I0(sig_cmd2mstr_cmd_valid),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(in[41]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[19] ),
        .O(\sig_btt_cntr_im0[19]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFDF)) 
    \sig_btt_cntr_im0[19]_i_7 
       (.I0(sig_cmd2mstr_cmd_valid),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(in[41]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[18] ),
        .O(\sig_btt_cntr_im0[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFDF)) 
    \sig_btt_cntr_im0[19]_i_8 
       (.I0(sig_cmd2mstr_cmd_valid),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(in[41]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[17] ),
        .O(\sig_btt_cntr_im0[19]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFDF)) 
    \sig_btt_cntr_im0[19]_i_9 
       (.I0(sig_cmd2mstr_cmd_valid),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(in[41]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[16] ),
        .O(\sig_btt_cntr_im0[19]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \sig_btt_cntr_im0[22]_i_2 
       (.I0(in[41]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \sig_btt_cntr_im0[22]_i_3 
       (.I0(in[41]),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFDF)) 
    \sig_btt_cntr_im0[22]_i_4 
       (.I0(sig_cmd2mstr_cmd_valid),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(in[41]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[22] ),
        .O(\sig_btt_cntr_im0[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFDF)) 
    \sig_btt_cntr_im0[22]_i_5 
       (.I0(sig_cmd2mstr_cmd_valid),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(in[41]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[21] ),
        .O(\sig_btt_cntr_im0[22]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFDF)) 
    \sig_btt_cntr_im0[22]_i_6 
       (.I0(sig_cmd2mstr_cmd_valid),
        .I1(sig_sm_halt_reg),
        .I2(sig_input_reg_empty),
        .I3(in[41]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[20] ),
        .O(\sig_btt_cntr_im0[22]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[3]_i_2 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[3] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[3]_i_3 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[2] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[3]_i_4 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[1] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[3]_i_5 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[0] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA2AA55555155)) 
    \sig_btt_cntr_im0[3]_i_6 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[3] ),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .O(\sig_btt_cntr_im0[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA2AA55555155)) 
    \sig_btt_cntr_im0[3]_i_7 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[2] ),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .O(\sig_btt_cntr_im0[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA2AA55555155)) 
    \sig_btt_cntr_im0[3]_i_8 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[1] ),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .O(\sig_btt_cntr_im0[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA2AA55555155)) 
    \sig_btt_cntr_im0[3]_i_9 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[0] ),
        .I1(sig_cmd2mstr_cmd_valid),
        .I2(sig_sm_halt_reg),
        .I3(sig_input_reg_empty),
        .I4(in[41]),
        .I5(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .O(\sig_btt_cntr_im0[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[7]_i_2 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[7] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[7]_i_3 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[6] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[7]_i_4 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[5] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \sig_btt_cntr_im0[7]_i_5 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[4] ),
        .I1(in[41]),
        .I2(sig_input_reg_empty),
        .I3(sig_sm_halt_reg),
        .I4(sig_cmd2mstr_cmd_valid),
        .O(\sig_btt_cntr_im0[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_6 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[7] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[3]),
        .O(\sig_btt_cntr_im0[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_7 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[6] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[2]),
        .O(\sig_btt_cntr_im0[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_8 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[5] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[1]),
        .O(\sig_btt_cntr_im0[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_btt_cntr_im0[7]_i_9 
       (.I0(\sig_addr_cntr_incr_ireg2_reg_n_0_[4] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(sig_push_input_reg11_out),
        .I3(Q[0]),
        .O(\sig_btt_cntr_im0[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[0] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[3]_i_1_n_7 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[10] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[11]_i_1_n_5 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[11] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[11]_i_1_n_4 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .R(sig_init_reg));
  CARRY4 \sig_btt_cntr_im0_reg[11]_i_1 
       (.CI(\sig_btt_cntr_im0_reg[7]_i_1_n_0 ),
        .CO({\sig_btt_cntr_im0_reg[11]_i_1_n_0 ,\sig_btt_cntr_im0_reg[11]_i_1_n_1 ,\sig_btt_cntr_im0_reg[11]_i_1_n_2 ,\sig_btt_cntr_im0_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_btt_cntr_im0[11]_i_2_n_0 ,\sig_btt_cntr_im0[11]_i_3_n_0 ,\sig_btt_cntr_im0[11]_i_4_n_0 ,\sig_btt_cntr_im0[11]_i_5_n_0 }),
        .O({\sig_btt_cntr_im0_reg[11]_i_1_n_4 ,\sig_btt_cntr_im0_reg[11]_i_1_n_5 ,\sig_btt_cntr_im0_reg[11]_i_1_n_6 ,\sig_btt_cntr_im0_reg[11]_i_1_n_7 }),
        .S({\sig_btt_cntr_im0[11]_i_6_n_0 ,\sig_btt_cntr_im0[11]_i_7_n_0 ,\sig_btt_cntr_im0[11]_i_8_n_0 ,\sig_btt_cntr_im0[11]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[12] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_7 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[13] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_6 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[14] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_5 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[15] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[15]_i_1_n_4 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .R(sig_init_reg));
  CARRY4 \sig_btt_cntr_im0_reg[15]_i_1 
       (.CI(\sig_btt_cntr_im0_reg[11]_i_1_n_0 ),
        .CO({\sig_btt_cntr_im0_reg[15]_i_1_n_0 ,\sig_btt_cntr_im0_reg[15]_i_1_n_1 ,\sig_btt_cntr_im0_reg[15]_i_1_n_2 ,\sig_btt_cntr_im0_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_btt_cntr_im0[15]_i_2_n_0 ,\sig_btt_cntr_im0[15]_i_3_n_0 ,\sig_btt_cntr_im0[15]_i_3_n_0 ,\sig_btt_cntr_im0[15]_i_4_n_0 }),
        .O({\sig_btt_cntr_im0_reg[15]_i_1_n_4 ,\sig_btt_cntr_im0_reg[15]_i_1_n_5 ,\sig_btt_cntr_im0_reg[15]_i_1_n_6 ,\sig_btt_cntr_im0_reg[15]_i_1_n_7 }),
        .S({\sig_btt_cntr_im0[15]_i_5_n_0 ,\sig_btt_cntr_im0[15]_i_6_n_0 ,\sig_btt_cntr_im0[15]_i_7_n_0 ,\sig_btt_cntr_im0[15]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[16] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[19]_i_1_n_7 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[16] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[17] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[19]_i_1_n_6 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[17] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[18] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[19]_i_1_n_5 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[18] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[19] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[19]_i_1_n_4 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[19] ),
        .R(sig_init_reg));
  CARRY4 \sig_btt_cntr_im0_reg[19]_i_1 
       (.CI(\sig_btt_cntr_im0_reg[15]_i_1_n_0 ),
        .CO({\sig_btt_cntr_im0_reg[19]_i_1_n_0 ,\sig_btt_cntr_im0_reg[19]_i_1_n_1 ,\sig_btt_cntr_im0_reg[19]_i_1_n_2 ,\sig_btt_cntr_im0_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_btt_cntr_im0[19]_i_2_n_0 ,\sig_btt_cntr_im0[19]_i_3_n_0 ,\sig_btt_cntr_im0[19]_i_4_n_0 ,\sig_btt_cntr_im0[19]_i_5_n_0 }),
        .O({\sig_btt_cntr_im0_reg[19]_i_1_n_4 ,\sig_btt_cntr_im0_reg[19]_i_1_n_5 ,\sig_btt_cntr_im0_reg[19]_i_1_n_6 ,\sig_btt_cntr_im0_reg[19]_i_1_n_7 }),
        .S({\sig_btt_cntr_im0[19]_i_6_n_0 ,\sig_btt_cntr_im0[19]_i_7_n_0 ,\sig_btt_cntr_im0[19]_i_8_n_0 ,\sig_btt_cntr_im0[19]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[1] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[3]_i_1_n_6 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[20] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[22]_i_1_n_7 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[20] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[21] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[22]_i_1_n_6 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[21] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[22] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[22]_i_1_n_5 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[22] ),
        .R(sig_init_reg));
  CARRY4 \sig_btt_cntr_im0_reg[22]_i_1 
       (.CI(\sig_btt_cntr_im0_reg[19]_i_1_n_0 ),
        .CO({\NLW_sig_btt_cntr_im0_reg[22]_i_1_CO_UNCONNECTED [3:2],\sig_btt_cntr_im0_reg[22]_i_1_n_2 ,\sig_btt_cntr_im0_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\sig_btt_cntr_im0[22]_i_2_n_0 ,\sig_btt_cntr_im0[22]_i_3_n_0 }),
        .O({\NLW_sig_btt_cntr_im0_reg[22]_i_1_O_UNCONNECTED [3],\sig_btt_cntr_im0_reg[22]_i_1_n_5 ,\sig_btt_cntr_im0_reg[22]_i_1_n_6 ,\sig_btt_cntr_im0_reg[22]_i_1_n_7 }),
        .S({1'b0,\sig_btt_cntr_im0[22]_i_4_n_0 ,\sig_btt_cntr_im0[22]_i_5_n_0 ,\sig_btt_cntr_im0[22]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[2] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[3]_i_1_n_5 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[3] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[3]_i_1_n_4 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .R(sig_init_reg));
  CARRY4 \sig_btt_cntr_im0_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sig_btt_cntr_im0_reg[3]_i_1_n_0 ,\sig_btt_cntr_im0_reg[3]_i_1_n_1 ,\sig_btt_cntr_im0_reg[3]_i_1_n_2 ,\sig_btt_cntr_im0_reg[3]_i_1_n_3 }),
        .CYINIT(\sig_btt_cntr_im0[15]_i_3_n_0 ),
        .DI({\sig_btt_cntr_im0[3]_i_2_n_0 ,\sig_btt_cntr_im0[3]_i_3_n_0 ,\sig_btt_cntr_im0[3]_i_4_n_0 ,\sig_btt_cntr_im0[3]_i_5_n_0 }),
        .O({\sig_btt_cntr_im0_reg[3]_i_1_n_4 ,\sig_btt_cntr_im0_reg[3]_i_1_n_5 ,\sig_btt_cntr_im0_reg[3]_i_1_n_6 ,\sig_btt_cntr_im0_reg[3]_i_1_n_7 }),
        .S({\sig_btt_cntr_im0[3]_i_6_n_0 ,\sig_btt_cntr_im0[3]_i_7_n_0 ,\sig_btt_cntr_im0[3]_i_8_n_0 ,\sig_btt_cntr_im0[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[4] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_7 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[5] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_6 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[6] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_5 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[7] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[7]_i_1_n_4 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .R(sig_init_reg));
  CARRY4 \sig_btt_cntr_im0_reg[7]_i_1 
       (.CI(\sig_btt_cntr_im0_reg[3]_i_1_n_0 ),
        .CO({\sig_btt_cntr_im0_reg[7]_i_1_n_0 ,\sig_btt_cntr_im0_reg[7]_i_1_n_1 ,\sig_btt_cntr_im0_reg[7]_i_1_n_2 ,\sig_btt_cntr_im0_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_btt_cntr_im0[7]_i_2_n_0 ,\sig_btt_cntr_im0[7]_i_3_n_0 ,\sig_btt_cntr_im0[7]_i_4_n_0 ,\sig_btt_cntr_im0[7]_i_5_n_0 }),
        .O({\sig_btt_cntr_im0_reg[7]_i_1_n_4 ,\sig_btt_cntr_im0_reg[7]_i_1_n_5 ,\sig_btt_cntr_im0_reg[7]_i_1_n_6 ,\sig_btt_cntr_im0_reg[7]_i_1_n_7 }),
        .S({\sig_btt_cntr_im0[7]_i_6_n_0 ,\sig_btt_cntr_im0[7]_i_7_n_0 ,\sig_btt_cntr_im0[7]_i_8_n_0 ,\sig_btt_cntr_im0[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[8] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[11]_i_1_n_7 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_btt_cntr_im0_reg[9] 
       (.C(clk),
        .CE(\sig_addr_cntr_lsh_im0[15]_i_1_n_0 ),
        .D(\sig_btt_cntr_im0_reg[11]_i_1_n_6 ),
        .Q(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .R(sig_init_reg));
  CARRY4 sig_btt_eq_b2mbaa_im01_carry
       (.CI(1'b0),
        .CO({sig_btt_eq_b2mbaa_im01_carry_n_0,sig_btt_eq_b2mbaa_im01_carry_n_1,sig_btt_eq_b2mbaa_im01_carry_n_2,sig_btt_eq_b2mbaa_im01_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sig_btt_eq_b2mbaa_im01_carry_O_UNCONNECTED[3:0]),
        .S({sig_btt_eq_b2mbaa_im01_carry_i_1_n_0,sig_btt_eq_b2mbaa_im01_carry_i_2_n_0,sig_btt_eq_b2mbaa_im01_carry_i_3_n_0,sig_btt_eq_b2mbaa_im01_carry_i_4_n_0}));
  CARRY4 sig_btt_eq_b2mbaa_im01_carry__0
       (.CI(sig_btt_eq_b2mbaa_im01_carry_n_0),
        .CO({NLW_sig_btt_eq_b2mbaa_im01_carry__0_CO_UNCONNECTED[3:1],sig_btt_eq_b2mbaa_im01}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sig_btt_eq_b2mbaa_im01_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,sig_btt_eq_b2mbaa_im01_carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_eq_b2mbaa_im01_carry__0_i_1
       (.I0(sig_bytes_to_mbaa_im0[12]),
        .O(sig_btt_eq_b2mbaa_im01_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_btt_eq_b2mbaa_im01_carry_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I1(sig_bytes_to_mbaa_im0[11]),
        .I2(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I3(sig_bytes_to_mbaa_im0[10]),
        .I4(sig_bytes_to_mbaa_im0[9]),
        .I5(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .O(sig_btt_eq_b2mbaa_im01_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_btt_eq_b2mbaa_im01_carry_i_2
       (.I0(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I1(sig_bytes_to_mbaa_im0[7]),
        .I2(sig_bytes_to_mbaa_im0[6]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I5(sig_bytes_to_mbaa_im0[8]),
        .O(sig_btt_eq_b2mbaa_im01_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_btt_eq_b2mbaa_im01_carry_i_3
       (.I0(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I1(sig_bytes_to_mbaa_im0[5]),
        .I2(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I3(sig_bytes_to_mbaa_im0[4]),
        .I4(sig_bytes_to_mbaa_im0[3]),
        .I5(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .O(sig_btt_eq_b2mbaa_im01_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_btt_eq_b2mbaa_im01_carry_i_4
       (.I0(sig_bytes_to_mbaa_im0[2]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I3(sig_bytes_to_mbaa_im0[1]),
        .I4(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I5(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .O(sig_btt_eq_b2mbaa_im01_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sig_btt_eq_b2mbaa_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .I1(sig_btt_eq_b2mbaa_im01),
        .I2(sig_btt_lt_b2mbaa_ireg1_i_2_n_0),
        .O(sig_btt_eq_b2mbaa_im0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_eq_b2mbaa_ireg1_reg
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_btt_eq_b2mbaa_im0),
        .Q(sig_btt_eq_b2mbaa_ireg1),
        .R(sig_init_reg));
  CARRY4 sig_btt_lt_b2mbaa_im01_carry
       (.CI(1'b0),
        .CO({sig_btt_lt_b2mbaa_im01_carry_n_0,sig_btt_lt_b2mbaa_im01_carry_n_1,sig_btt_lt_b2mbaa_im01_carry_n_2,sig_btt_lt_b2mbaa_im01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sig_btt_lt_b2mbaa_im01_carry_i_1_n_0,sig_btt_lt_b2mbaa_im01_carry_i_2_n_0,sig_btt_lt_b2mbaa_im01_carry_i_3_n_0,sig_btt_lt_b2mbaa_im01_carry_i_4_n_0}),
        .O(NLW_sig_btt_lt_b2mbaa_im01_carry_O_UNCONNECTED[3:0]),
        .S({sig_btt_lt_b2mbaa_im01_carry_i_5_n_0,sig_btt_lt_b2mbaa_im01_carry_i_6_n_0,sig_btt_lt_b2mbaa_im01_carry_i_7_n_0,sig_btt_lt_b2mbaa_im01_carry_i_8_n_0}));
  CARRY4 sig_btt_lt_b2mbaa_im01_carry__0
       (.CI(sig_btt_lt_b2mbaa_im01_carry_n_0),
        .CO({NLW_sig_btt_lt_b2mbaa_im01_carry__0_CO_UNCONNECTED[3],sig_btt_lt_b2mbaa_im01,sig_btt_lt_b2mbaa_im01_carry__0_n_2,sig_btt_lt_b2mbaa_im01_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,sig_bytes_to_mbaa_im0[12],sig_btt_lt_b2mbaa_im01_carry__0_i_1_n_0,sig_btt_lt_b2mbaa_im01_carry__0_i_2_n_0}),
        .O(NLW_sig_btt_lt_b2mbaa_im01_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,sig_btt_lt_b2mbaa_im01_carry__0_i_3_n_0,sig_btt_lt_b2mbaa_im01_carry__0_i_4_n_0,sig_btt_lt_b2mbaa_im01_carry__0_i_5_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    sig_btt_lt_b2mbaa_im01_carry__0_i_1
       (.I0(sig_bytes_to_mbaa_im0[10]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I3(sig_bytes_to_mbaa_im0[11]),
        .O(sig_btt_lt_b2mbaa_im01_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sig_btt_lt_b2mbaa_im01_carry__0_i_2
       (.I0(sig_bytes_to_mbaa_im0[8]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I3(sig_bytes_to_mbaa_im0[9]),
        .O(sig_btt_lt_b2mbaa_im01_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_btt_lt_b2mbaa_im01_carry__0_i_3
       (.I0(sig_bytes_to_mbaa_im0[12]),
        .O(sig_btt_lt_b2mbaa_im01_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sig_btt_lt_b2mbaa_im01_carry__0_i_4
       (.I0(sig_bytes_to_mbaa_im0[10]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I2(sig_bytes_to_mbaa_im0[11]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .O(sig_btt_lt_b2mbaa_im01_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sig_btt_lt_b2mbaa_im01_carry__0_i_5
       (.I0(sig_bytes_to_mbaa_im0[9]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I3(sig_bytes_to_mbaa_im0[8]),
        .O(sig_btt_lt_b2mbaa_im01_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sig_btt_lt_b2mbaa_im01_carry_i_1
       (.I0(sig_bytes_to_mbaa_im0[6]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I3(sig_bytes_to_mbaa_im0[7]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sig_btt_lt_b2mbaa_im01_carry_i_2
       (.I0(sig_bytes_to_mbaa_im0[4]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I3(sig_bytes_to_mbaa_im0[5]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sig_btt_lt_b2mbaa_im01_carry_i_3
       (.I0(sig_bytes_to_mbaa_im0[2]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I3(sig_bytes_to_mbaa_im0[3]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    sig_btt_lt_b2mbaa_im01_carry_i_4
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I3(sig_bytes_to_mbaa_im0[1]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sig_btt_lt_b2mbaa_im01_carry_i_5
       (.I0(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I1(sig_bytes_to_mbaa_im0[6]),
        .I2(sig_bytes_to_mbaa_im0[7]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sig_btt_lt_b2mbaa_im01_carry_i_6
       (.I0(sig_bytes_to_mbaa_im0[4]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .I2(sig_bytes_to_mbaa_im0[5]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sig_btt_lt_b2mbaa_im01_carry_i_7
       (.I0(sig_bytes_to_mbaa_im0[3]),
        .I1(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .I3(sig_bytes_to_mbaa_im0[2]),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sig_btt_lt_b2mbaa_im01_carry_i_8
       (.I0(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I1(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I2(sig_bytes_to_mbaa_im0[1]),
        .I3(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .O(sig_btt_lt_b2mbaa_im01_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sig_btt_lt_b2mbaa_ireg1_i_1
       (.I0(\sig_btt_cntr_im0_reg_n_0_[12] ),
        .I1(sig_btt_lt_b2mbaa_im01),
        .I2(sig_btt_lt_b2mbaa_ireg1_i_2_n_0),
        .O(sig_btt_lt_b2mbaa_im0));
  LUT5 #(
    .INIT(32'h00000002)) 
    sig_btt_lt_b2mbaa_ireg1_i_2
       (.I0(sig_btt_lt_b2mbaa_ireg1_i_3_n_0),
        .I1(\sig_btt_cntr_im0_reg_n_0_[15] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[16] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[13] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[14] ),
        .O(sig_btt_lt_b2mbaa_ireg1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_btt_lt_b2mbaa_ireg1_i_3
       (.I0(\sig_btt_cntr_im0_reg_n_0_[17] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[18] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[19] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[20] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[22] ),
        .I5(\sig_btt_cntr_im0_reg_n_0_[21] ),
        .O(sig_btt_lt_b2mbaa_ireg1_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_btt_lt_b2mbaa_ireg1_reg
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_btt_lt_b2mbaa_im0),
        .Q(sig_btt_lt_b2mbaa_ireg1),
        .R(sig_init_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_bytes_to_mbaa_ireg1[12]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .O(\sig_bytes_to_mbaa_ireg1[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_bytes_to_mbaa_ireg1[12]_i_3 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .O(\sig_bytes_to_mbaa_ireg1[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_bytes_to_mbaa_ireg1[12]_i_4 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .O(\sig_bytes_to_mbaa_ireg1[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_bytes_to_mbaa_ireg1[4]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .O(\sig_bytes_to_mbaa_ireg1[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_bytes_to_mbaa_ireg1[4]_i_3 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .O(\sig_bytes_to_mbaa_ireg1[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_bytes_to_mbaa_ireg1[4]_i_4 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .O(\sig_bytes_to_mbaa_ireg1[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_bytes_to_mbaa_ireg1[4]_i_5 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .O(\sig_bytes_to_mbaa_ireg1[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_bytes_to_mbaa_ireg1[4]_i_6 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .O(\sig_bytes_to_mbaa_ireg1[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_bytes_to_mbaa_ireg1[8]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .O(\sig_bytes_to_mbaa_ireg1[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_bytes_to_mbaa_ireg1[8]_i_3 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .O(\sig_bytes_to_mbaa_ireg1[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_bytes_to_mbaa_ireg1[8]_i_4 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .O(\sig_bytes_to_mbaa_ireg1[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sig_bytes_to_mbaa_ireg1[8]_i_5 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .O(\sig_bytes_to_mbaa_ireg1[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[0] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .Q(sig_bytes_to_mbaa_ireg1[0]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[10] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[10]),
        .Q(sig_bytes_to_mbaa_ireg1[10]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[11] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[11]),
        .Q(sig_bytes_to_mbaa_ireg1[11]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[12] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[12]),
        .Q(sig_bytes_to_mbaa_ireg1[12]),
        .R(sig_init_reg));
  CARRY4 \sig_bytes_to_mbaa_ireg1_reg[12]_i_1 
       (.CI(\sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_0 ),
        .CO({sig_bytes_to_mbaa_im0[12],\NLW_sig_bytes_to_mbaa_ireg1_reg[12]_i_1_CO_UNCONNECTED [2],\sig_bytes_to_mbaa_ireg1_reg[12]_i_1_n_2 ,\sig_bytes_to_mbaa_ireg1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sig_bytes_to_mbaa_ireg1_reg[12]_i_1_O_UNCONNECTED [3],sig_bytes_to_mbaa_im0[11:9]}),
        .S({1'b1,\sig_bytes_to_mbaa_ireg1[12]_i_2_n_0 ,\sig_bytes_to_mbaa_ireg1[12]_i_3_n_0 ,\sig_bytes_to_mbaa_ireg1[12]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[1] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[1]),
        .Q(sig_bytes_to_mbaa_ireg1[1]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[2] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[2]),
        .Q(sig_bytes_to_mbaa_ireg1[2]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[3] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[3]),
        .Q(sig_bytes_to_mbaa_ireg1[3]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[4] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[4]),
        .Q(sig_bytes_to_mbaa_ireg1[4]),
        .R(sig_init_reg));
  CARRY4 \sig_bytes_to_mbaa_ireg1_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_0 ,\sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_1 ,\sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_2 ,\sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_3 }),
        .CYINIT(\sig_bytes_to_mbaa_ireg1[4]_i_2_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sig_bytes_to_mbaa_im0[4:1]),
        .S({\sig_bytes_to_mbaa_ireg1[4]_i_3_n_0 ,\sig_bytes_to_mbaa_ireg1[4]_i_4_n_0 ,\sig_bytes_to_mbaa_ireg1[4]_i_5_n_0 ,\sig_bytes_to_mbaa_ireg1[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[5] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[5]),
        .Q(sig_bytes_to_mbaa_ireg1[5]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[6] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[6]),
        .Q(sig_bytes_to_mbaa_ireg1[6]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[7] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[7]),
        .Q(sig_bytes_to_mbaa_ireg1[7]),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[8] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[8]),
        .Q(sig_bytes_to_mbaa_ireg1[8]),
        .R(sig_init_reg));
  CARRY4 \sig_bytes_to_mbaa_ireg1_reg[8]_i_1 
       (.CI(\sig_bytes_to_mbaa_ireg1_reg[4]_i_1_n_0 ),
        .CO({\sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_0 ,\sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_1 ,\sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_2 ,\sig_bytes_to_mbaa_ireg1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sig_bytes_to_mbaa_im0[8:5]),
        .S({\sig_bytes_to_mbaa_ireg1[8]_i_2_n_0 ,\sig_bytes_to_mbaa_ireg1[8]_i_3_n_0 ,\sig_bytes_to_mbaa_ireg1[8]_i_4_n_0 ,\sig_bytes_to_mbaa_ireg1[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_bytes_to_mbaa_ireg1_reg[9] 
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_bytes_to_mbaa_im0[9]),
        .Q(sig_bytes_to_mbaa_ireg1[9]),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_calc_error_pushed_i_1
       (.I0(in[41]),
        .I1(sig_xfer_reg_empty),
        .I2(sig_ld_xfer_reg),
        .I3(sig_calc_error_pushed),
        .O(sig_calc_error_pushed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_pushed_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_calc_error_pushed_i_1_n_0),
        .Q(sig_calc_error_pushed),
        .R(sig_init_reg));
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    sig_calc_error_reg_i_1
       (.I0(sig_btt_is_zero__0),
        .I1(sig_input_reg_empty),
        .I2(sig_sm_halt_reg),
        .I3(sig_cmd2mstr_cmd_valid),
        .I4(in[41]),
        .O(sig_calc_error_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    sig_calc_error_reg_i_2
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(sig_calc_error_reg_i_3_n_0),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[10]),
        .O(sig_btt_is_zero__0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sig_calc_error_reg_i_3
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(sig_calc_error_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_calc_error_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_calc_error_reg_i_1_n_0),
        .Q(in[41]),
        .R(sig_init_reg));
  LUT5 #(
    .INIT(32'h55440544)) 
    sig_cmd2addr_valid_i_1
       (.I0(sig_init_reg),
        .I1(sig_sm_ld_xfer_reg_ns),
        .I2(sig_inhibit_rdy_n_1),
        .I3(sig_mstr2addr_cmd_valid),
        .I4(sig_cmd2addr_valid_reg_0),
        .O(sig_cmd2addr_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2addr_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_cmd2addr_valid_i_1_n_0),
        .Q(sig_mstr2addr_cmd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h54540454)) 
    sig_cmd2data_valid_i_1
       (.I0(sig_init_reg),
        .I1(sig_sm_ld_xfer_reg_ns),
        .I2(sig_mstr2data_cmd_valid),
        .I3(sig_inhibit_rdy_n),
        .I4(sig_cmd2data_valid_reg_0),
        .O(sig_cmd2data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2data_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_cmd2data_valid_i_1_n_0),
        .Q(sig_mstr2data_cmd_valid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    sig_cmd2dre_valid_i_1
       (.I0(sig_init_reg),
        .I1(sig_cmd2dre_valid_reg_n_0),
        .I2(sig_sm_ld_xfer_reg_ns),
        .I3(sig_first_xfer_im0),
        .O(sig_cmd2dre_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_cmd2dre_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_cmd2dre_valid_i_1_n_0),
        .Q(sig_cmd2dre_valid_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0054)) 
    sig_first_xfer_im0_i_1
       (.I0(sig_init_reg),
        .I1(sig_push_input_reg11_out),
        .I2(sig_first_xfer_im0),
        .I3(sig_pop_xfer_reg0_out),
        .O(sig_first_xfer_im0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_first_xfer_im0_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_first_xfer_im0_i_1_n_0),
        .Q(sig_first_xfer_im0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    sig_input_burst_type_reg_i_1
       (.I0(in[40]),
        .I1(sig_push_input_reg11_out),
        .I2(Q[11]),
        .I3(sig_init_reg),
        .I4(sig_calc_error_pushed),
        .I5(sig_sm_pop_input_reg),
        .O(sig_input_burst_type_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_burst_type_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_input_burst_type_reg_i_1_n_0),
        .Q(in[40]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    sig_input_reg_empty_i_1
       (.I0(sig_input_reg_empty),
        .I1(sig_push_input_reg11_out),
        .I2(sig_init_reg),
        .I3(sig_calc_error_pushed),
        .I4(sig_sm_pop_input_reg),
        .O(sig_input_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_input_reg_empty_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_input_reg_empty_i_1_n_0),
        .Q(sig_input_reg_empty),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0544)) 
    sig_ld_xfer_reg_i_1
       (.I0(sig_init_reg),
        .I1(sig_sm_ld_xfer_reg_ns),
        .I2(sig_xfer_reg_empty),
        .I3(sig_ld_xfer_reg),
        .O(sig_ld_xfer_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_i_1_n_0),
        .Q(sig_ld_xfer_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0054)) 
    sig_ld_xfer_reg_tmp_i_1
       (.I0(sig_init_reg),
        .I1(sig_sm_ld_xfer_reg_ns),
        .I2(sig_ld_xfer_reg_tmp),
        .I3(sig_pop_xfer_reg0_out),
        .O(sig_ld_xfer_reg_tmp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_xfer_reg_tmp_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_ld_xfer_reg_tmp_i_1_n_0),
        .Q(sig_ld_xfer_reg_tmp),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_mmap_reset_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(SR),
        .Q(sig_init_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    sig_no_btt_residue_ireg1_i_1
       (.I0(sig_no_btt_residue_ireg1_i_2_n_0),
        .I1(\sig_btt_cntr_im0_reg_n_0_[11] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[10] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[9] ),
        .I4(\sig_btt_cntr_im0_reg_n_0_[8] ),
        .I5(sig_no_btt_residue_ireg1_i_3_n_0),
        .O(sig_no_btt_residue_im0));
  LUT4 #(
    .INIT(16'h0001)) 
    sig_no_btt_residue_ireg1_i_2
       (.I0(\sig_btt_cntr_im0_reg_n_0_[7] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[6] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[5] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[4] ),
        .O(sig_no_btt_residue_ireg1_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    sig_no_btt_residue_ireg1_i_3
       (.I0(\sig_btt_cntr_im0_reg_n_0_[1] ),
        .I1(\sig_btt_cntr_im0_reg_n_0_[0] ),
        .I2(\sig_btt_cntr_im0_reg_n_0_[3] ),
        .I3(\sig_btt_cntr_im0_reg_n_0_[2] ),
        .O(sig_no_btt_residue_ireg1_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_no_btt_residue_ireg1_reg
       (.C(clk),
        .CE(sig_sm_ld_calc1_reg),
        .D(sig_no_btt_residue_im0),
        .Q(sig_no_btt_residue_ireg1),
        .R(sig_init_reg));
  LUT5 #(
    .INIT(32'h00001510)) 
    sig_parent_done_i_1
       (.I0(sig_init_reg),
        .I1(sig_calc_error_reg_reg_0[0]),
        .I2(sig_ld_xfer_reg_tmp),
        .I3(sig_parent_done),
        .I4(sig_push_input_reg11_out),
        .O(sig_parent_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_parent_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_parent_done_i_1_n_0),
        .Q(sig_parent_done),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[11]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[11] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[11] ),
        .O(\sig_predict_addr_lsh_ireg3[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[11]_i_3 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[10] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[10] ),
        .O(\sig_predict_addr_lsh_ireg3[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[11]_i_4 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[9] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[9] ),
        .O(\sig_predict_addr_lsh_ireg3[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[11]_i_5 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[8] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[8] ),
        .O(\sig_predict_addr_lsh_ireg3[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[15]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[12] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[12] ),
        .O(\sig_predict_addr_lsh_ireg3[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[3] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[3] ),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_3 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[2] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[2] ),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_4 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[1] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[1] ),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[3]_i_5 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[0] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[0] ),
        .O(\sig_predict_addr_lsh_ireg3[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_2 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[7] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[7] ),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_3 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[6] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[6] ),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_4 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[5] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[5] ),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_predict_addr_lsh_ireg3[7]_i_5 
       (.I0(\sig_addr_cntr_lsh_im0_reg_n_0_[4] ),
        .I1(\sig_addr_cntr_incr_ireg2_reg_n_0_[4] ),
        .O(\sig_predict_addr_lsh_ireg3[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[0] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[0]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[0] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[10] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[10]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[10] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[11] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[11]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[11] ),
        .R(sig_init_reg));
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[11]_i_1 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0 ),
        .CO({\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0 ,\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_addr_cntr_lsh_im0_reg_n_0_[11] ,\sig_addr_cntr_lsh_im0_reg_n_0_[10] ,\sig_addr_cntr_lsh_im0_reg_n_0_[9] ,\sig_addr_cntr_lsh_im0_reg_n_0_[8] }),
        .O(sig_predict_addr_lsh_im2[11:8]),
        .S({\sig_predict_addr_lsh_ireg3[11]_i_2_n_0 ,\sig_predict_addr_lsh_ireg3[11]_i_3_n_0 ,\sig_predict_addr_lsh_ireg3[11]_i_4_n_0 ,\sig_predict_addr_lsh_ireg3[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[12] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[12]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[12] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[13] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[13]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[13] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[14] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[14]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[14] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[15] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[15]),
        .Q(sig_predict_addr_lsh_ireg3),
        .R(sig_init_reg));
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[15]_i_1 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[11]_i_1_n_0 ),
        .CO({\NLW_sig_predict_addr_lsh_ireg3_reg[15]_i_1_CO_UNCONNECTED [3],\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\sig_addr_cntr_lsh_im0_reg_n_0_[14] ,\sig_addr_cntr_lsh_im0_reg_n_0_[13] ,\sig_addr_cntr_lsh_im0_reg_n_0_[12] }),
        .O(sig_predict_addr_lsh_im2[15:12]),
        .S({p_1_in_0,\sig_addr_cntr_lsh_im0_reg_n_0_[14] ,\sig_addr_cntr_lsh_im0_reg_n_0_[13] ,\sig_predict_addr_lsh_ireg3[15]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[1] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[1]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[1] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[2] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[2]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[2] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[3] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[3]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[3] ),
        .R(sig_init_reg));
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0 ,\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_addr_cntr_lsh_im0_reg_n_0_[3] ,\sig_addr_cntr_lsh_im0_reg_n_0_[2] ,\sig_addr_cntr_lsh_im0_reg_n_0_[1] ,\sig_addr_cntr_lsh_im0_reg_n_0_[0] }),
        .O(sig_predict_addr_lsh_im2[3:0]),
        .S({\sig_predict_addr_lsh_ireg3[3]_i_2_n_0 ,\sig_predict_addr_lsh_ireg3[3]_i_3_n_0 ,\sig_predict_addr_lsh_ireg3[3]_i_4_n_0 ,\sig_predict_addr_lsh_ireg3[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[4] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[4]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[4] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[5] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[5]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[5] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[6] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[6]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[6] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[7] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[7]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[7] ),
        .R(sig_init_reg));
  CARRY4 \sig_predict_addr_lsh_ireg3_reg[7]_i_1 
       (.CI(\sig_predict_addr_lsh_ireg3_reg[3]_i_1_n_0 ),
        .CO({\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_0 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_1 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_2 ,\sig_predict_addr_lsh_ireg3_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sig_addr_cntr_lsh_im0_reg_n_0_[7] ,\sig_addr_cntr_lsh_im0_reg_n_0_[6] ,\sig_addr_cntr_lsh_im0_reg_n_0_[5] ,\sig_addr_cntr_lsh_im0_reg_n_0_[4] }),
        .O(sig_predict_addr_lsh_im2[7:4]),
        .S({\sig_predict_addr_lsh_ireg3[7]_i_2_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_3_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_4_n_0 ,\sig_predict_addr_lsh_ireg3[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[8] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[8]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[8] ),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    \sig_predict_addr_lsh_ireg3_reg[9] 
       (.C(clk),
        .CE(sig_sm_ld_xfer_reg_ns),
        .D(sig_predict_addr_lsh_im2[9]),
        .Q(\sig_predict_addr_lsh_ireg3_reg_n_0_[9] ),
        .R(sig_init_reg));
  LUT4 #(
    .INIT(16'hFFEA)) 
    sig_sm_halt_reg_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I2(sig_calc_error_pushed),
        .I3(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[0] ),
        .O(sig_sm_halt_ns));
  FDSE #(
    .INIT(1'b0)) 
    sig_sm_halt_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_sm_halt_ns),
        .Q(sig_sm_halt_reg),
        .S(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF020202)) 
    sig_sm_ld_calc1_reg_i_1
       (.I0(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .I1(sig_parent_done),
        .I2(sig_calc_error_pushed),
        .I3(sig_push_input_reg11_out),
        .I4(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[1] ),
        .O(sig_sm_ld_calc1_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc1_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_sm_ld_calc1_reg_ns),
        .Q(sig_sm_ld_calc1_reg),
        .R(sig_init_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_ld_calc2_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_sm_ld_calc1_reg),
        .Q(sig_sm_ld_calc2_reg),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sig_sm_pop_input_reg_i_1
       (.I0(sig_calc_error_pushed),
        .I1(sig_parent_done),
        .I2(\FSM_onehot_sig_pcc_sm_state_reg_n_0_[6] ),
        .O(sig_sm_pop_input_reg_ns));
  FDRE #(
    .INIT(1'b0)) 
    sig_sm_pop_input_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_sm_pop_input_reg_ns),
        .Q(sig_sm_pop_input_reg),
        .R(sig_init_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAFEE)) 
    sig_xfer_reg_empty_i_1
       (.I0(sig_init_reg),
        .I1(sig_pop_xfer_reg0_out),
        .I2(sig_ld_xfer_reg),
        .I3(sig_xfer_reg_empty),
        .O(sig_xfer_reg_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_xfer_reg_empty_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_xfer_reg_empty_i_1_n_0),
        .Q(sig_xfer_reg_empty),
        .R(1'b0));
endmodule

module amm_bridge_axi_datamover_rd_status_cntl
   (sig_rsc2stat_status,
    sig_rsc2stat_status_valid,
    sig_rsc2data_ready,
    sig_rd_sts_tag_reg0,
    sig_push_rd_sts_reg,
    clk,
    sig_rd_sts_decerr_reg0,
    sig_data2rsc_calc_err,
    sig_data2rsc_slverr);
  output [2:0]sig_rsc2stat_status;
  output sig_rsc2stat_status_valid;
  output sig_rsc2data_ready;
  input sig_rd_sts_tag_reg0;
  input sig_push_rd_sts_reg;
  input clk;
  input sig_rd_sts_decerr_reg0;
  input sig_data2rsc_calc_err;
  input sig_data2rsc_slverr;

  wire clk;
  wire sig_data2rsc_calc_err;
  wire sig_data2rsc_slverr;
  wire sig_push_rd_sts_reg;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rd_sts_interr_reg0;
  wire sig_rd_sts_slverr_reg0;
  wire sig_rd_sts_tag_reg0;
  wire sig_rsc2data_ready;
  wire [2:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;

  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_decerr_reg_reg
       (.C(clk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_decerr_reg0),
        .Q(sig_rsc2stat_status[1]),
        .R(sig_rd_sts_tag_reg0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_interr_reg_i_3
       (.I0(sig_rsc2stat_status[0]),
        .I1(sig_data2rsc_calc_err),
        .O(sig_rd_sts_interr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_interr_reg_reg
       (.C(clk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_interr_reg0),
        .Q(sig_rsc2stat_status[0]),
        .R(sig_rd_sts_tag_reg0));
  FDSE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_empty_reg
       (.C(clk),
        .CE(sig_push_rd_sts_reg),
        .D(1'b0),
        .Q(sig_rsc2data_ready),
        .S(sig_rd_sts_tag_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_reg_full_reg
       (.C(clk),
        .CE(sig_push_rd_sts_reg),
        .D(1'b1),
        .Q(sig_rsc2stat_status_valid),
        .R(sig_rd_sts_tag_reg0));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_slverr_reg_i_1
       (.I0(sig_rsc2stat_status[2]),
        .I1(sig_data2rsc_slverr),
        .O(sig_rd_sts_slverr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_sts_slverr_reg_reg
       (.C(clk),
        .CE(sig_push_rd_sts_reg),
        .D(sig_rd_sts_slverr_reg0),
        .Q(sig_rsc2stat_status[2]),
        .R(sig_rd_sts_tag_reg0));
endmodule

module amm_bridge_axi_datamover_rddata_cntl
   (FIFO_Full_reg,
    sig_data2rsc_calc_err,
    sig_data2rsc_slverr,
    sig_init_done,
    sig_inhibit_rdy_n,
    sig_rd_sts_decerr_reg0,
    sig_wr_fifo,
    m_axi_rready,
    sig_dqual_reg_full_reg_0,
    sig_push_rd_sts_reg,
    SR,
    clk,
    sig_init_done_reg,
    sig_rsc2stat_status,
    sig_mstr2data_cmd_valid,
    m_axi_rlast,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    m_axi_rvalid,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    m_axi_rresp,
    sig_rsc2data_ready,
    in,
    out);
  output FIFO_Full_reg;
  output sig_data2rsc_calc_err;
  output sig_data2rsc_slverr;
  output sig_init_done;
  output sig_inhibit_rdy_n;
  output sig_rd_sts_decerr_reg0;
  output sig_wr_fifo;
  output m_axi_rready;
  output sig_dqual_reg_full_reg_0;
  output sig_push_rd_sts_reg;
  input [0:0]SR;
  input clk;
  input sig_init_done_reg;
  input [0:0]sig_rsc2stat_status;
  input sig_mstr2data_cmd_valid;
  input m_axi_rlast;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input m_axi_rvalid;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input [1:0]m_axi_rresp;
  input sig_rsc2data_ready;
  input [10:0]in;
  input out;

  wire FIFO_Full_reg;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_10 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_11 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_12 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_13 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_14 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_15 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_19 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_8 ;
  wire \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_9 ;
  wire [0:0]SR;
  wire clk;
  wire [10:0]in;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire out;
  wire [2:0]sig_addr_posted_cntr;
  wire \sig_addr_posted_cntr[0]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[1]_i_1_n_0 ;
  wire \sig_addr_posted_cntr[2]_i_1_n_0 ;
  wire sig_addr_posted_cntr_eq_0__1;
  wire sig_clr_dqual_reg;
  wire sig_cmd_cmplt_last_dbeat;
  wire [52:50]sig_cmd_fifo_data_out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_coelsc_decerr_reg0;
  wire sig_coelsc_interr_reg0;
  wire sig_coelsc_slverr_reg0;
  wire sig_coelsc_tag_reg0;
  wire sig_data2rsc_calc_err;
  wire sig_data2rsc_decerr;
  wire sig_data2rsc_slverr;
  wire sig_data2rsc_valid;
  wire [7:0]sig_dbeat_cntr;
  wire \sig_dbeat_cntr[4]_i_2_n_0 ;
  wire \sig_dbeat_cntr[7]_i_3_n_0 ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_full;
  wire sig_dqual_reg_full_reg_0;
  wire sig_inhibit_rdy_n;
  wire sig_init_done;
  wire sig_init_done_reg;
  wire sig_last_dbeat;
  wire sig_last_dbeat_i_3_n_0;
  wire sig_last_dbeat_i_5_n_0;
  wire sig_last_mmap_dbeat;
  wire sig_last_mmap_dbeat_reg;
  wire sig_ld_new_cmd_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg;
  wire sig_next_sequential_reg;
  wire sig_push_coelsc_reg;
  wire sig_push_dqual_reg;
  wire sig_push_rd_sts_reg;
  wire sig_rd_sts_decerr_reg0;
  wire sig_rsc2data_ready;
  wire [0:0]sig_rsc2stat_status;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;
  wire sig_wr_fifo;

  amm_bridge_axi_datamover_fifo__parameterized2 \GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO 
       (.D({\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_8 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_9 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_10 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_11 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_12 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_13 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_14 ,\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_15 }),
        .E(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .FIFO_Full_reg(FIFO_Full_reg),
        .Q(sig_dbeat_cntr),
        .SR(SR),
        .clk(clk),
        .in(in),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .out(sig_cmd_fifo_data_out),
        .sel(sig_wr_fifo),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_addr_posted_cntr_eq_0__1(sig_addr_posted_cntr_eq_0__1),
        .sig_clr_dqual_reg(sig_clr_dqual_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_19 ),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr[4]_i_2_n_0 ),
        .\sig_dbeat_cntr_reg[7] (\sig_dbeat_cntr[7]_i_3_n_0 ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_inhibit_rdy_n_reg_0(sig_inhibit_rdy_n),
        .sig_init_done(sig_init_done),
        .sig_init_done_reg_0(sig_init_done_reg),
        .sig_last_dbeat(sig_last_dbeat),
        .sig_last_dbeat_reg(sig_last_dbeat_i_3_n_0),
        .sig_last_dbeat_reg_0(sig_dqual_reg_full_reg_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_push_dqual_reg(sig_push_dqual_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  LUT5 #(
    .INIT(32'h00000020)) 
    avs_readdatavalid_s0_INST_0
       (.I0(sig_dqual_reg_full),
        .I1(sig_next_calc_error_reg),
        .I2(m_axi_rvalid),
        .I3(sig_data2rsc_valid),
        .I4(sig_addr_posted_cntr_eq_0__1),
        .O(sig_dqual_reg_full_reg_0));
  LUT6 #(
    .INIT(64'h0404040404040400)) 
    m_axi_rready_INST_0
       (.I0(sig_data2rsc_valid),
        .I1(sig_dqual_reg_full),
        .I2(sig_next_calc_error_reg),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[1]),
        .I5(sig_addr_posted_cntr[0]),
        .O(m_axi_rready));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hD9996664)) 
    \sig_addr_posted_cntr[0]_i_1 
       (.I0(sig_last_mmap_dbeat_reg),
        .I1(out),
        .I2(sig_addr_posted_cntr[1]),
        .I3(sig_addr_posted_cntr[2]),
        .I4(sig_addr_posted_cntr[0]),
        .O(\sig_addr_posted_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCCC2BCCC)) 
    \sig_addr_posted_cntr[1]_i_1 
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(out),
        .I4(sig_last_mmap_dbeat_reg),
        .O(\sig_addr_posted_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hAAA8EAAA)) 
    \sig_addr_posted_cntr[2]_i_1 
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .I3(out),
        .I4(sig_last_mmap_dbeat_reg),
        .O(\sig_addr_posted_cntr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[0]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[1]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_addr_posted_cntr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sig_addr_posted_cntr[2]_i_1_n_0 ),
        .Q(sig_addr_posted_cntr[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    sig_coelsc_decerr_reg_i_1
       (.I0(m_axi_rresp[0]),
        .I1(m_axi_rresp[1]),
        .I2(m_axi_rvalid),
        .I3(sig_data2rsc_decerr),
        .O(sig_coelsc_decerr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_decerr_reg_reg
       (.C(clk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_decerr_reg0),
        .Q(sig_data2rsc_decerr),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sig_coelsc_interr_reg_i_1
       (.I0(sig_next_calc_error_reg),
        .I1(sig_data2rsc_calc_err),
        .O(sig_coelsc_interr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_interr_reg_reg
       (.C(clk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_interr_reg0),
        .Q(sig_data2rsc_calc_err),
        .R(sig_coelsc_tag_reg0));
  LUT5 #(
    .INIT(32'h7000FFFF)) 
    sig_coelsc_reg_full_i_1
       (.I0(sig_ld_new_cmd_reg),
        .I1(sig_next_calc_error_reg),
        .I2(sig_rsc2data_ready),
        .I3(sig_data2rsc_valid),
        .I4(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_coelsc_tag_reg0));
  LUT4 #(
    .INIT(16'hF444)) 
    sig_coelsc_reg_full_i_2
       (.I0(sig_data2rsc_valid),
        .I1(sig_dqual_reg_full_reg_0),
        .I2(sig_next_calc_error_reg),
        .I3(sig_ld_new_cmd_reg),
        .O(sig_push_coelsc_reg));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    sig_coelsc_reg_full_i_3
       (.I0(sig_next_cmd_cmplt_reg),
        .I1(m_axi_rlast),
        .I2(sig_next_calc_error_reg),
        .O(sig_cmd_cmplt_last_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_reg_full_reg
       (.C(clk),
        .CE(sig_push_coelsc_reg),
        .D(sig_cmd_cmplt_last_dbeat),
        .Q(sig_data2rsc_valid),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    sig_coelsc_slverr_reg_i_1
       (.I0(m_axi_rresp[0]),
        .I1(m_axi_rresp[1]),
        .I2(m_axi_rvalid),
        .I3(sig_data2rsc_slverr),
        .O(sig_coelsc_slverr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    sig_coelsc_slverr_reg_reg
       (.C(clk),
        .CE(sig_push_coelsc_reg),
        .D(sig_coelsc_slverr_reg0),
        .Q(sig_data2rsc_slverr),
        .R(sig_coelsc_tag_reg0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sig_dbeat_cntr[4]_i_2 
       (.I0(sig_dbeat_cntr[2]),
        .I1(sig_dbeat_cntr[1]),
        .I2(sig_dbeat_cntr[0]),
        .I3(sig_dbeat_cntr[3]),
        .O(\sig_dbeat_cntr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_dbeat_cntr[7]_i_3 
       (.I0(sig_dbeat_cntr[3]),
        .I1(sig_dbeat_cntr[0]),
        .I2(sig_dbeat_cntr[1]),
        .I3(sig_dbeat_cntr[2]),
        .I4(sig_dbeat_cntr[4]),
        .O(\sig_dbeat_cntr[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[0] 
       (.C(clk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_15 ),
        .Q(sig_dbeat_cntr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[1] 
       (.C(clk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_14 ),
        .Q(sig_dbeat_cntr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[2] 
       (.C(clk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_13 ),
        .Q(sig_dbeat_cntr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[3] 
       (.C(clk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_12 ),
        .Q(sig_dbeat_cntr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[4] 
       (.C(clk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_11 ),
        .Q(sig_dbeat_cntr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[5] 
       (.C(clk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_10 ),
        .Q(sig_dbeat_cntr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[6] 
       (.C(clk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_9 ),
        .Q(sig_dbeat_cntr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sig_dbeat_cntr_reg[7] 
       (.C(clk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_8 ),
        .Q(sig_dbeat_cntr[7]),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    sig_dqual_reg_empty_reg
       (.C(clk),
        .CE(sig_push_dqual_reg),
        .D(1'b0),
        .Q(sig_dqual_reg_empty),
        .S(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_dqual_reg_full_reg
       (.C(clk),
        .CE(sig_push_dqual_reg),
        .D(sig_push_dqual_reg),
        .Q(sig_dqual_reg_full),
        .R(sig_clr_dqual_reg));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    sig_last_dbeat_i_3
       (.I0(sig_dbeat_cntr[3]),
        .I1(sig_dbeat_cntr[4]),
        .I2(sig_dbeat_cntr[2]),
        .I3(sig_dbeat_cntr[1]),
        .I4(sig_dbeat_cntr[0]),
        .I5(sig_last_dbeat_i_5_n_0),
        .O(sig_last_dbeat_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    sig_last_dbeat_i_5
       (.I0(sig_dbeat_cntr[6]),
        .I1(sig_dbeat_cntr[5]),
        .I2(sig_dbeat_cntr[7]),
        .O(sig_last_dbeat_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_dbeat_reg
       (.C(clk),
        .CE(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_6 ),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_5 ),
        .Q(sig_last_dbeat),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    sig_last_mmap_dbeat_reg_i_1
       (.I0(m_axi_rlast),
        .I1(sig_dqual_reg_full_reg_0),
        .O(sig_last_mmap_dbeat));
  FDRE #(
    .INIT(1'b0)) 
    sig_last_mmap_dbeat_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sig_last_mmap_dbeat),
        .Q(sig_last_mmap_dbeat_reg),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_ld_new_cmd_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(\GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO_n_19 ),
        .Q(sig_ld_new_cmd_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_calc_error_reg_reg
       (.C(clk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[52]),
        .Q(sig_next_calc_error_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_cmd_cmplt_reg_reg
       (.C(clk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[51]),
        .Q(sig_next_cmd_cmplt_reg),
        .R(sig_clr_dqual_reg));
  FDRE #(
    .INIT(1'b0)) 
    sig_next_sequential_reg_reg
       (.C(clk),
        .CE(sig_push_dqual_reg),
        .D(sig_cmd_fifo_data_out[50]),
        .Q(sig_next_sequential_reg),
        .R(sig_clr_dqual_reg));
  LUT2 #(
    .INIT(4'hE)) 
    sig_rd_sts_decerr_reg_i_1
       (.I0(sig_data2rsc_decerr),
        .I1(sig_rsc2stat_status),
        .O(sig_rd_sts_decerr_reg0));
  LUT2 #(
    .INIT(4'h8)) 
    sig_rd_sts_interr_reg_i_2
       (.I0(sig_data2rsc_valid),
        .I1(sig_rsc2data_ready),
        .O(sig_push_rd_sts_reg));
endmodule

module amm_bridge_axi_datamover_reset
   (sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_0,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_1,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_2,
    SR,
    aresetn,
    clk,
    sig_init_done,
    sig_init_reg,
    sig_init_reg2,
    sig_init_done_0,
    sig_init_done_1);
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_0;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_1;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_2;
  output [0:0]SR;
  input aresetn;
  input clk;
  input sig_init_done;
  input sig_init_reg;
  input sig_init_reg2;
  input sig_init_done_0;
  input sig_init_done_1;

  wire [0:0]SR;
  wire aresetn;
  wire clk;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_0;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_1;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_2;
  wire sig_init_done;
  wire sig_init_done_0;
  wire sig_init_done_1;
  wire sig_init_reg;
  wire sig_init_reg2;

  FDRE #(
    .INIT(1'b0)) 
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0
       (.C(clk),
        .CE(1'b1),
        .D(aresetn),
        .Q(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    sig_init_done_i_1
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_init_done),
        .I2(sig_init_reg),
        .I3(sig_init_reg2),
        .O(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    sig_init_done_i_1__0
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_init_done_0),
        .I2(sig_init_reg),
        .I3(sig_init_reg2),
        .O(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_1));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    sig_init_done_i_1__1
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_init_done_1),
        .I2(sig_init_reg),
        .I3(sig_init_reg2),
        .O(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0_2));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    sig_mmap_reset_reg_i_1
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(SR));
endmodule

module amm_bridge_cntr_incr_decr_addn_f
   (fifo_full_p1,
    Q,
    sig_dqual_reg_empty_reg,
    E,
    sig_clr_dqual_reg,
    D,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0,
    sig_addr_posted_cntr_eq_0__1,
    FIFO_Full_reg,
    \INFERRED_GEN.cnt_i_reg[0]_0 ,
    \INFERRED_GEN.cnt_i_reg[0]_1 ,
    sig_mstr2data_cmd_valid,
    sig_last_dbeat_reg,
    \sig_dbeat_cntr_reg[5] ,
    sig_last_dbeat_reg_0,
    m_axi_rlast,
    sig_dqual_reg_full,
    sig_next_calc_error_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    out,
    \sig_dbeat_cntr_reg[4] ,
    sig_ld_new_cmd_reg,
    sig_dqual_reg_empty,
    sig_addr_posted_cntr,
    sig_data2rsc_valid,
    m_axi_rvalid,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_last_dbeat,
    sig_next_sequential_reg,
    SR,
    clk);
  output fifo_full_p1;
  output [1:0]Q;
  output sig_dqual_reg_empty_reg;
  output [0:0]E;
  output sig_clr_dqual_reg;
  output [5:0]D;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  output sig_addr_posted_cntr_eq_0__1;
  input FIFO_Full_reg;
  input \INFERRED_GEN.cnt_i_reg[0]_0 ;
  input \INFERRED_GEN.cnt_i_reg[0]_1 ;
  input sig_mstr2data_cmd_valid;
  input sig_last_dbeat_reg;
  input \sig_dbeat_cntr_reg[5] ;
  input [7:0]sig_last_dbeat_reg_0;
  input m_axi_rlast;
  input sig_dqual_reg_full;
  input sig_next_calc_error_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input [5:0]out;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_ld_new_cmd_reg;
  input sig_dqual_reg_empty;
  input [2:0]sig_addr_posted_cntr;
  input sig_data2rsc_valid;
  input m_axi_rvalid;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_last_dbeat;
  input sig_next_sequential_reg;
  input [0:0]SR;
  input clk;

  wire [5:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i_reg[0]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0]_1 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [2:0]addr_i_p1;
  wire clk;
  wire fifo_full_p1;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire [5:0]out;
  wire [2:0]sig_addr_posted_cntr;
  wire sig_addr_posted_cntr_eq_0__1;
  wire sig_addr_posted_cntr_max__1;
  wire sig_clr_dqual_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  wire sig_data2rsc_valid;
  wire \sig_dbeat_cntr_reg[4] ;
  wire \sig_dbeat_cntr_reg[5] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_full;
  wire sig_last_dbeat;
  wire sig_last_dbeat_reg;
  wire [7:0]sig_last_dbeat_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_cmd_cmplt_reg_i_3_n_0;
  wire sig_next_cmd_cmplt_reg_i_4_n_0;
  wire sig_next_cmd_cmplt_reg_i_5_n_0;
  wire sig_next_sequential_reg;
  wire sig_rd_empty;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h21020000)) 
    FIFO_Full_i_1__0
       (.I0(Q[0]),
        .I1(sig_rd_empty),
        .I2(sig_dqual_reg_empty_reg),
        .I3(FIFO_Full_reg),
        .I4(Q[1]),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'h9AAA65559AAA9AAA)) 
    \INFERRED_GEN.cnt_i[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_1 ),
        .I3(sig_mstr2data_cmd_valid),
        .I4(sig_rd_empty),
        .I5(sig_dqual_reg_empty_reg),
        .O(addr_i_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h66A6AA9A)) 
    \INFERRED_GEN.cnt_i[1]_i_1__0 
       (.I0(Q[1]),
        .I1(FIFO_Full_reg),
        .I2(sig_dqual_reg_empty_reg),
        .I3(sig_rd_empty),
        .I4(Q[0]),
        .O(addr_i_p1[1]));
  LUT5 #(
    .INIT(32'h7F017F80)) 
    \INFERRED_GEN.cnt_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(FIFO_Full_reg),
        .I2(Q[1]),
        .I3(sig_rd_empty),
        .I4(sig_dqual_reg_empty_reg),
        .O(addr_i_p1[2]));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(SR));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(SR));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(sig_rd_empty),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h01)) 
    avs_readdatavalid_s0_INST_0_i_1
       (.I0(sig_addr_posted_cntr[0]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[2]),
        .O(sig_addr_posted_cntr_eq_0__1));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_dbeat_cntr[1]_i_1 
       (.I0(sig_last_dbeat_reg_0[0]),
        .I1(sig_last_dbeat_reg_0[1]),
        .I2(sig_dqual_reg_empty_reg),
        .I3(out[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \sig_dbeat_cntr[2]_i_1 
       (.I0(sig_last_dbeat_reg_0[2]),
        .I1(sig_last_dbeat_reg_0[1]),
        .I2(sig_last_dbeat_reg_0[0]),
        .I3(sig_dqual_reg_empty_reg),
        .I4(out[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \sig_dbeat_cntr[3]_i_1 
       (.I0(sig_last_dbeat_reg_0[3]),
        .I1(sig_last_dbeat_reg_0[0]),
        .I2(sig_last_dbeat_reg_0[1]),
        .I3(sig_last_dbeat_reg_0[2]),
        .I4(sig_dqual_reg_empty_reg),
        .I5(out[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_dbeat_cntr[4]_i_1 
       (.I0(sig_last_dbeat_reg_0[4]),
        .I1(\sig_dbeat_cntr_reg[4] ),
        .I2(sig_dqual_reg_empty_reg),
        .I3(out[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hF909)) 
    \sig_dbeat_cntr[5]_i_1 
       (.I0(\sig_dbeat_cntr_reg[5] ),
        .I1(sig_last_dbeat_reg_0[5]),
        .I2(sig_dqual_reg_empty_reg),
        .I3(out[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFC900C9)) 
    \sig_dbeat_cntr[6]_i_1 
       (.I0(sig_last_dbeat_reg_0[5]),
        .I1(sig_last_dbeat_reg_0[6]),
        .I2(\sig_dbeat_cntr_reg[5] ),
        .I3(sig_dqual_reg_empty_reg),
        .I4(out[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \sig_dbeat_cntr[7]_i_1 
       (.I0(sig_last_dbeat_reg),
        .I1(\sig_dbeat_cntr_reg[5] ),
        .I2(sig_last_dbeat_reg_0[7]),
        .I3(sig_last_dbeat_reg_0[5]),
        .I4(sig_last_dbeat_reg_0[6]),
        .I5(sig_dqual_reg_empty_reg),
        .O(E));
  LUT3 #(
    .INIT(8'h20)) 
    sig_ld_new_cmd_reg_i_1
       (.I0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I1(sig_ld_new_cmd_reg),
        .I2(sig_dqual_reg_empty_reg),
        .O(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0));
  LUT6 #(
    .INIT(64'h00400000FFFFFFFF)) 
    sig_next_cmd_cmplt_reg_i_1
       (.I0(sig_dqual_reg_empty_reg),
        .I1(m_axi_rlast),
        .I2(sig_dqual_reg_full),
        .I3(sig_next_calc_error_reg),
        .I4(sig_last_dbeat_reg),
        .I5(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .O(sig_clr_dqual_reg));
  LUT6 #(
    .INIT(64'h00000000FF200000)) 
    sig_next_cmd_cmplt_reg_i_2
       (.I0(sig_next_cmd_cmplt_reg_i_3_n_0),
        .I1(sig_addr_posted_cntr_eq_0__1),
        .I2(sig_next_cmd_cmplt_reg_i_4_n_0),
        .I3(sig_dqual_reg_empty),
        .I4(sig_next_cmd_cmplt_reg_i_5_n_0),
        .I5(sig_addr_posted_cntr_max__1),
        .O(sig_dqual_reg_empty_reg));
  LUT2 #(
    .INIT(4'h8)) 
    sig_next_cmd_cmplt_reg_i_3
       (.I0(sig_last_dbeat),
        .I1(sig_next_sequential_reg),
        .O(sig_next_cmd_cmplt_reg_i_3_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    sig_next_cmd_cmplt_reg_i_4
       (.I0(sig_data2rsc_valid),
        .I1(m_axi_rvalid),
        .I2(sig_next_calc_error_reg),
        .I3(sig_dqual_reg_full),
        .O(sig_next_cmd_cmplt_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'h1101)) 
    sig_next_cmd_cmplt_reg_i_5
       (.I0(sig_next_calc_error_reg),
        .I1(sig_rd_empty),
        .I2(sig_rsc2stat_status_valid),
        .I3(sig_stat2rsc_status_ready),
        .O(sig_next_cmd_cmplt_reg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    sig_next_cmd_cmplt_reg_i_6
       (.I0(sig_addr_posted_cntr[2]),
        .I1(sig_addr_posted_cntr[1]),
        .I2(sig_addr_posted_cntr[0]),
        .O(sig_addr_posted_cntr_max__1));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module amm_bridge_cntr_incr_decr_addn_f_0
   (fifo_full_p1,
    Q,
    sig_push_addr_reg1_out,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    sig_addr_reg_empty,
    FIFO_Full_reg,
    \INFERRED_GEN.cnt_i_reg[0]_0 ,
    sig_mstr2addr_cmd_valid,
    \INFERRED_GEN.cnt_i_reg[0]_1 ,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    SR,
    clk);
  output fifo_full_p1;
  output [1:0]Q;
  output sig_push_addr_reg1_out;
  output \INFERRED_GEN.cnt_i_reg[2]_0 ;
  input sig_addr_reg_empty;
  input FIFO_Full_reg;
  input \INFERRED_GEN.cnt_i_reg[0]_0 ;
  input sig_mstr2addr_cmd_valid;
  input \INFERRED_GEN.cnt_i_reg[0]_1 ;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input [0:0]SR;
  input clk;

  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i_reg[0]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0]_1 ;
  wire \INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [2:0]addr_i_p1;
  wire clk;
  wire fifo_full_p1;
  wire sig_addr_reg_empty;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_mstr2addr_cmd_valid;
  wire sig_push_addr_reg1_out;
  wire sig_rd_empty;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h21020000)) 
    FIFO_Full_i_1
       (.I0(Q[0]),
        .I1(sig_rd_empty),
        .I2(sig_addr_reg_empty),
        .I3(FIFO_Full_reg),
        .I4(Q[1]),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'hA6A6A6A659A6A6A6)) 
    \INFERRED_GEN.cnt_i[0]_i_1 
       (.I0(Q[0]),
        .I1(sig_addr_reg_empty),
        .I2(sig_rd_empty),
        .I3(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I4(sig_mstr2addr_cmd_valid),
        .I5(\INFERRED_GEN.cnt_i_reg[0]_1 ),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hAAAA9AAA6555AAAA)) 
    \INFERRED_GEN.cnt_i[1]_i_1 
       (.I0(Q[1]),
        .I1(\INFERRED_GEN.cnt_i_reg[0]_1 ),
        .I2(sig_mstr2addr_cmd_valid),
        .I3(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I4(sig_push_addr_reg1_out),
        .I5(Q[0]),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F017F80)) 
    \INFERRED_GEN.cnt_i[2]_i_1 
       (.I0(Q[0]),
        .I1(FIFO_Full_reg),
        .I2(Q[1]),
        .I3(sig_rd_empty),
        .I4(sig_addr_reg_empty),
        .O(addr_i_p1[2]));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(SR));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(SR));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(sig_rd_empty),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sig_next_addr_reg[31]_i_2 
       (.I0(sig_addr_reg_empty),
        .I1(sig_rd_empty),
        .O(sig_push_addr_reg1_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    sig_posted_to_axi_2_i_1
       (.I0(sig_rd_empty),
        .I1(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .I2(sig_addr_reg_empty),
        .O(\INFERRED_GEN.cnt_i_reg[2]_0 ));
endmodule

module amm_bridge_dynshreg_f
   (FIFO_Full_reg,
    sig_calc_error_reg_reg,
    out,
    sig_calc_error_reg_reg_0,
    sig_mstr2addr_cmd_valid,
    sig_calc_error_reg_reg_1,
    in,
    Q,
    clk);
  output FIFO_Full_reg;
  output sig_calc_error_reg_reg;
  output [42:0]out;
  input sig_calc_error_reg_reg_0;
  input sig_mstr2addr_cmd_valid;
  input sig_calc_error_reg_reg_1;
  input [41:0]in;
  input [1:0]Q;
  input clk;

  wire FIFO_Full_reg;
  wire [1:0]Q;
  wire clk;
  wire [41:0]in;
  wire [42:0]out;
  wire sig_calc_error_reg_reg;
  wire sig_calc_error_reg_reg_0;
  wire sig_calc_error_reg_reg_1;
  wire sig_mstr2addr_cmd_valid;

  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][11]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][11]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[40]),
        .Q(out[41]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][12]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][12]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(1'b1),
        .Q(out[40]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][15]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][15]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[39]),
        .Q(out[39]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][16]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][16]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[38]),
        .Q(out[38]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][17]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][17]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[37]),
        .Q(out[37]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][18]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][18]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[36]),
        .Q(out[36]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][19]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][19]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[35]),
        .Q(out[35]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][20]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][20]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[34]),
        .Q(out[34]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][21]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][21]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[33]),
        .Q(out[33]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][22]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][22]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[32]),
        .Q(out[32]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][23]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][23]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[31]),
        .Q(out[31]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][24]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][24]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[30]),
        .Q(out[30]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][25]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][25]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[29]),
        .Q(out[29]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][26]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][26]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[28]),
        .Q(out[28]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][27]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][27]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[27]),
        .Q(out[27]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][28]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][28]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[26]),
        .Q(out[26]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][29]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][29]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[25]),
        .Q(out[25]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][30]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][30]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[24]),
        .Q(out[24]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][31]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][31]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[23]),
        .Q(out[23]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][32]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][32]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[22]),
        .Q(out[22]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][33]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][33]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[21]),
        .Q(out[21]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][34]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][34]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[20]),
        .Q(out[20]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][35]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][35]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[19]),
        .Q(out[19]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][36]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][36]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[18]),
        .Q(out[18]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][37]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][37]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[17]),
        .Q(out[17]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][38]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][38]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[16]),
        .Q(out[16]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][39]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][39]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[15]),
        .Q(out[15]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][40]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][40]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[14]),
        .Q(out[14]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][41]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][41]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[13]),
        .Q(out[13]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][42]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][42]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[12]),
        .Q(out[12]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][43]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][43]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[11]),
        .Q(out[11]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][44]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][44]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[10]),
        .Q(out[10]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][45]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][45]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[9]),
        .Q(out[9]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][46]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][46]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[8]),
        .Q(out[8]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][47]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][47]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[7]),
        .Q(out[7]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][48]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][48]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[6]),
        .Q(out[6]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][49]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][49]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[5]),
        .Q(out[5]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][50]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][50]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[4]),
        .Q(out[4]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][51]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][51]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[3]),
        .Q(out[3]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][52]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][52]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][53]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][53]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][54]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][54]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[0]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \INFERRED_GEN.data_reg[3][54]_srl4_i_1 
       (.I0(sig_calc_error_reg_reg_0),
        .I1(sig_mstr2addr_cmd_valid),
        .I2(sig_calc_error_reg_reg_1),
        .O(FIFO_Full_reg));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_ADDR_CNTL/GEN_ADDR_FIFO.I_ADDR_QUAL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][8]_srl4 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[41]),
        .Q(out[42]));
  LUT1 #(
    .INIT(2'h1)) 
    sig_addr_valid_reg_i_1
       (.I0(out[42]),
        .O(sig_calc_error_reg_reg));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module amm_bridge_dynshreg_f__parameterized0
   (FIFO_Full_reg,
    sig_dqual_reg_empty_reg,
    D,
    out,
    sig_next_calc_error_reg_reg,
    sig_next_calc_error_reg_reg_0,
    sig_mstr2data_cmd_valid,
    \sig_dbeat_cntr_reg[0] ,
    sig_last_dbeat_reg,
    sig_last_dbeat_reg_0,
    Q,
    \sig_dbeat_cntr_reg[7] ,
    in,
    sig_next_calc_error_reg_reg_1,
    clk);
  output FIFO_Full_reg;
  output sig_dqual_reg_empty_reg;
  output [1:0]D;
  output [8:0]out;
  input sig_next_calc_error_reg_reg;
  input sig_next_calc_error_reg_reg_0;
  input sig_mstr2data_cmd_valid;
  input \sig_dbeat_cntr_reg[0] ;
  input sig_last_dbeat_reg;
  input sig_last_dbeat_reg_0;
  input [3:0]Q;
  input \sig_dbeat_cntr_reg[7] ;
  input [10:0]in;
  input [1:0]sig_next_calc_error_reg_reg_1;
  input clk;

  wire [1:0]D;
  wire FIFO_Full_reg;
  wire [3:0]Q;
  wire clk;
  wire [10:0]in;
  wire [8:0]out;
  wire [15:8]sig_cmd_fifo_data_out;
  wire \sig_dbeat_cntr_reg[0] ;
  wire \sig_dbeat_cntr_reg[7] ;
  wire sig_dqual_reg_empty_reg;
  wire sig_last_dbeat_i_2_n_0;
  wire sig_last_dbeat_i_4_n_0;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg_reg;
  wire sig_next_calc_error_reg_reg_0;
  wire [1:0]sig_next_calc_error_reg_reg_1;

  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][2]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[10]),
        .Q(out[8]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][39]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][39]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[7]),
        .Q(sig_cmd_fifo_data_out[15]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][3]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[9]),
        .Q(out[7]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][40]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][40]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[6]),
        .Q(out[5]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][41]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][41]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[5]),
        .Q(out[4]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][42]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][42]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[4]),
        .Q(out[3]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][43]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][43]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[3]),
        .Q(out[2]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][44]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][44]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[2]),
        .Q(out[1]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][45]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][45]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[1]),
        .Q(out[0]));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][46]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][46]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[0]),
        .Q(sig_cmd_fifo_data_out[8]));
  LUT3 #(
    .INIT(8'h40)) 
    \INFERRED_GEN.data_reg[3][46]_srl4_i_1 
       (.I0(sig_next_calc_error_reg_reg),
        .I1(sig_next_calc_error_reg_reg_0),
        .I2(sig_mstr2data_cmd_valid),
        .O(FIFO_Full_reg));
  (* srl_bus_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3] " *) 
  (* srl_name = "inst/\I_DATAMOVER/GEN_MM2S_FULL.I_MM2S_FULL_WRAPPER/I_RD_DATA_CNTL/GEN_DATA_CNTL_FIFO.I_DATA_CNTL_FIFO/USE_SRL_FIFO.I_SYNC_FIFO/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[3][4]_srl4 
       (.A0(sig_next_calc_error_reg_reg_1[0]),
        .A1(sig_next_calc_error_reg_reg_1[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(FIFO_Full_reg),
        .CLK(clk),
        .D(in[8]),
        .Q(out[6]));
  LUT3 #(
    .INIT(8'h8B)) 
    \sig_dbeat_cntr[0]_i_1 
       (.I0(sig_cmd_fifo_data_out[8]),
        .I1(\sig_dbeat_cntr_reg[0] ),
        .I2(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \sig_dbeat_cntr[7]_i_2 
       (.I0(sig_cmd_fifo_data_out[15]),
        .I1(\sig_dbeat_cntr_reg[0] ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\sig_dbeat_cntr_reg[7] ),
        .I5(Q[3]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    sig_last_dbeat_i_1
       (.I0(sig_last_dbeat_i_2_n_0),
        .I1(\sig_dbeat_cntr_reg[0] ),
        .I2(sig_last_dbeat_reg),
        .I3(sig_last_dbeat_reg_0),
        .O(sig_dqual_reg_empty_reg));
  LUT5 #(
    .INIT(32'h00010000)) 
    sig_last_dbeat_i_2
       (.I0(out[3]),
        .I1(out[4]),
        .I2(out[5]),
        .I3(sig_cmd_fifo_data_out[15]),
        .I4(sig_last_dbeat_i_4_n_0),
        .O(sig_last_dbeat_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    sig_last_dbeat_i_4
       (.I0(out[0]),
        .I1(sig_cmd_fifo_data_out[8]),
        .I2(out[2]),
        .I3(out[1]),
        .O(sig_last_dbeat_i_4_n_0));
endmodule

module amm_bridge_srl_fifo_f
   (FIFO_Full_reg,
    FIFO_Full_reg_0,
    sig_push_addr_reg1_out,
    \INFERRED_GEN.cnt_i_reg[2] ,
    sig_calc_error_reg_reg,
    out,
    SR,
    clk,
    sig_addr_reg_empty,
    \INFERRED_GEN.cnt_i_reg[0] ,
    sig_mstr2addr_cmd_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    in);
  output FIFO_Full_reg;
  output FIFO_Full_reg_0;
  output sig_push_addr_reg1_out;
  output \INFERRED_GEN.cnt_i_reg[2] ;
  output sig_calc_error_reg_reg;
  output [42:0]out;
  input [0:0]SR;
  input clk;
  input sig_addr_reg_empty;
  input \INFERRED_GEN.cnt_i_reg[0] ;
  input sig_mstr2addr_cmd_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input [41:0]in;

  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]SR;
  wire clk;
  wire [41:0]in;
  wire [42:0]out;
  wire sig_addr_reg_empty;
  wire sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_mstr2addr_cmd_valid;
  wire sig_push_addr_reg1_out;

  amm_bridge_srl_fifo_rbu_f I_SRL_FIFO_RBU_F
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .SR(SR),
        .clk(clk),
        .in(in),
        .out(out),
        .sel(FIFO_Full_reg_0),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module amm_bridge_srl_fifo_f__parameterized0
   (FIFO_Full_reg,
    sig_dqual_reg_empty_reg,
    FIFO_Full_reg_0,
    sig_dqual_reg_empty_reg_0,
    E,
    sig_clr_dqual_reg,
    D,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0,
    sig_addr_posted_cntr_eq_0__1,
    out,
    SR,
    clk,
    \INFERRED_GEN.cnt_i_reg[0] ,
    sig_mstr2data_cmd_valid,
    sig_last_dbeat_reg,
    sig_last_dbeat_reg_0,
    \sig_dbeat_cntr_reg[7] ,
    Q,
    m_axi_rlast,
    sig_dqual_reg_full,
    sig_next_calc_error_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \sig_dbeat_cntr_reg[4] ,
    sig_ld_new_cmd_reg,
    sig_dqual_reg_empty,
    sig_addr_posted_cntr,
    sig_data2rsc_valid,
    m_axi_rvalid,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_last_dbeat,
    sig_next_sequential_reg,
    in);
  output FIFO_Full_reg;
  output sig_dqual_reg_empty_reg;
  output FIFO_Full_reg_0;
  output sig_dqual_reg_empty_reg_0;
  output [0:0]E;
  output sig_clr_dqual_reg;
  output [7:0]D;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  output sig_addr_posted_cntr_eq_0__1;
  output [2:0]out;
  input [0:0]SR;
  input clk;
  input \INFERRED_GEN.cnt_i_reg[0] ;
  input sig_mstr2data_cmd_valid;
  input sig_last_dbeat_reg;
  input sig_last_dbeat_reg_0;
  input \sig_dbeat_cntr_reg[7] ;
  input [7:0]Q;
  input m_axi_rlast;
  input sig_dqual_reg_full;
  input sig_next_calc_error_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_ld_new_cmd_reg;
  input sig_dqual_reg_empty;
  input [2:0]sig_addr_posted_cntr;
  input sig_data2rsc_valid;
  input m_axi_rvalid;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_last_dbeat;
  input sig_next_sequential_reg;
  input [10:0]in;

  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [10:0]in;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire [2:0]out;
  wire [2:0]sig_addr_posted_cntr;
  wire sig_addr_posted_cntr_eq_0__1;
  wire sig_clr_dqual_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  wire sig_data2rsc_valid;
  wire \sig_dbeat_cntr_reg[4] ;
  wire \sig_dbeat_cntr_reg[7] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_full;
  wire sig_last_dbeat;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_sequential_reg;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  amm_bridge_srl_fifo_rbu_f__parameterized0 I_SRL_FIFO_RBU_F
       (.D(D),
        .E(E),
        .FIFO_Full_reg_0(FIFO_Full_reg),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .Q(Q),
        .SR(SR),
        .clk(clk),
        .in(in),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .sel(FIFO_Full_reg_0),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_addr_posted_cntr_eq_0__1(sig_addr_posted_cntr_eq_0__1),
        .sig_clr_dqual_reg(sig_clr_dqual_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .\sig_dbeat_cntr_reg[7] (\sig_dbeat_cntr_reg[7] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_empty_reg_0(sig_dqual_reg_empty_reg_0),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_last_dbeat(sig_last_dbeat),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_0),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
endmodule

module amm_bridge_srl_fifo_rbu_f
   (FIFO_Full_reg_0,
    sel,
    sig_push_addr_reg1_out,
    \INFERRED_GEN.cnt_i_reg[2] ,
    sig_calc_error_reg_reg,
    out,
    SR,
    clk,
    sig_addr_reg_empty,
    \INFERRED_GEN.cnt_i_reg[0] ,
    sig_mstr2addr_cmd_valid,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    in);
  output FIFO_Full_reg_0;
  output sel;
  output sig_push_addr_reg1_out;
  output \INFERRED_GEN.cnt_i_reg[2] ;
  output sig_calc_error_reg_reg;
  output [42:0]out;
  input [0:0]SR;
  input clk;
  input sig_addr_reg_empty;
  input \INFERRED_GEN.cnt_i_reg[0] ;
  input sig_mstr2addr_cmd_valid;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input [41:0]in;

  wire CNTR_INCR_DECR_ADDN_F_I_n_1;
  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]SR;
  wire clk;
  wire fifo_full_p1;
  wire [41:0]in;
  wire [42:0]out;
  wire sel;
  wire sig_addr_reg_empty;
  wire sig_calc_error_reg_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_mstr2addr_cmd_valid;
  wire sig_push_addr_reg1_out;

  amm_bridge_cntr_incr_decr_addn_f_0 CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(sel),
        .\INFERRED_GEN.cnt_i_reg[0]_0 (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[0]_1 (FIFO_Full_reg_0),
        .\INFERRED_GEN.cnt_i_reg[2]_0 (\INFERRED_GEN.cnt_i_reg[2] ),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2}),
        .SR(SR),
        .clk(clk),
        .fifo_full_p1(fifo_full_p1),
        .sig_addr_reg_empty(sig_addr_reg_empty),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid),
        .sig_push_addr_reg1_out(sig_push_addr_reg1_out));
  amm_bridge_dynshreg_f DYNSHREG_F_I
       (.FIFO_Full_reg(sel),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2}),
        .clk(clk),
        .in(in),
        .out(out),
        .sig_calc_error_reg_reg(sig_calc_error_reg_reg),
        .sig_calc_error_reg_reg_0(FIFO_Full_reg_0),
        .sig_calc_error_reg_reg_1(\INFERRED_GEN.cnt_i_reg[0] ),
        .sig_mstr2addr_cmd_valid(sig_mstr2addr_cmd_valid));
  FDRE FIFO_Full_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module amm_bridge_srl_fifo_rbu_f__parameterized0
   (FIFO_Full_reg_0,
    sig_dqual_reg_empty_reg,
    sel,
    sig_dqual_reg_empty_reg_0,
    E,
    sig_clr_dqual_reg,
    D,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0,
    sig_addr_posted_cntr_eq_0__1,
    out,
    SR,
    clk,
    \INFERRED_GEN.cnt_i_reg[0] ,
    sig_mstr2data_cmd_valid,
    sig_last_dbeat_reg,
    sig_last_dbeat_reg_0,
    \sig_dbeat_cntr_reg[7] ,
    Q,
    m_axi_rlast,
    sig_dqual_reg_full,
    sig_next_calc_error_reg,
    sig_cmd_stat_rst_user_reg_n_cdc_from_reg,
    \sig_dbeat_cntr_reg[4] ,
    sig_ld_new_cmd_reg,
    sig_dqual_reg_empty,
    sig_addr_posted_cntr,
    sig_data2rsc_valid,
    m_axi_rvalid,
    sig_rsc2stat_status_valid,
    sig_stat2rsc_status_ready,
    sig_last_dbeat,
    sig_next_sequential_reg,
    in);
  output FIFO_Full_reg_0;
  output sig_dqual_reg_empty_reg;
  output sel;
  output sig_dqual_reg_empty_reg_0;
  output [0:0]E;
  output sig_clr_dqual_reg;
  output [7:0]D;
  output sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  output sig_addr_posted_cntr_eq_0__1;
  output [2:0]out;
  input [0:0]SR;
  input clk;
  input \INFERRED_GEN.cnt_i_reg[0] ;
  input sig_mstr2data_cmd_valid;
  input sig_last_dbeat_reg;
  input sig_last_dbeat_reg_0;
  input \sig_dbeat_cntr_reg[7] ;
  input [7:0]Q;
  input m_axi_rlast;
  input sig_dqual_reg_full;
  input sig_next_calc_error_reg;
  input sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  input \sig_dbeat_cntr_reg[4] ;
  input sig_ld_new_cmd_reg;
  input sig_dqual_reg_empty;
  input [2:0]sig_addr_posted_cntr;
  input sig_data2rsc_valid;
  input m_axi_rvalid;
  input sig_rsc2stat_status_valid;
  input sig_stat2rsc_status_ready;
  input sig_last_dbeat;
  input sig_next_sequential_reg;
  input [10:0]in;

  wire CNTR_INCR_DECR_ADDN_F_I_n_1;
  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire [7:0]D;
  wire [0:0]E;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire clk;
  wire fifo_full_p1;
  wire [10:0]in;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire [2:0]out;
  wire sel;
  wire [2:0]sig_addr_posted_cntr;
  wire sig_addr_posted_cntr_eq_0__1;
  wire sig_clr_dqual_reg;
  wire [14:9]sig_cmd_fifo_data_out;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg;
  wire sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0;
  wire sig_data2rsc_valid;
  wire \sig_dbeat_cntr_reg[4] ;
  wire \sig_dbeat_cntr_reg[7] ;
  wire sig_dqual_reg_empty;
  wire sig_dqual_reg_empty_reg;
  wire sig_dqual_reg_empty_reg_0;
  wire sig_dqual_reg_full;
  wire sig_last_dbeat;
  wire sig_last_dbeat_reg;
  wire sig_last_dbeat_reg_0;
  wire sig_ld_new_cmd_reg;
  wire sig_mstr2data_cmd_valid;
  wire sig_next_calc_error_reg;
  wire sig_next_sequential_reg;
  wire sig_rsc2stat_status_valid;
  wire sig_stat2rsc_status_ready;

  amm_bridge_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.D(D[6:1]),
        .E(E),
        .FIFO_Full_reg(sel),
        .\INFERRED_GEN.cnt_i_reg[0]_0 (FIFO_Full_reg_0),
        .\INFERRED_GEN.cnt_i_reg[0]_1 (\INFERRED_GEN.cnt_i_reg[0] ),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2}),
        .SR(SR),
        .clk(clk),
        .fifo_full_p1(fifo_full_p1),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .out(sig_cmd_fifo_data_out),
        .sig_addr_posted_cntr(sig_addr_posted_cntr),
        .sig_addr_posted_cntr_eq_0__1(sig_addr_posted_cntr_eq_0__1),
        .sig_clr_dqual_reg(sig_clr_dqual_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg(sig_cmd_stat_rst_user_reg_n_cdc_from_reg),
        .sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0(sig_cmd_stat_rst_user_reg_n_cdc_from_reg__0),
        .sig_data2rsc_valid(sig_data2rsc_valid),
        .\sig_dbeat_cntr_reg[4] (\sig_dbeat_cntr_reg[4] ),
        .\sig_dbeat_cntr_reg[5] (\sig_dbeat_cntr_reg[7] ),
        .sig_dqual_reg_empty(sig_dqual_reg_empty),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg),
        .sig_dqual_reg_full(sig_dqual_reg_full),
        .sig_last_dbeat(sig_last_dbeat),
        .sig_last_dbeat_reg(sig_last_dbeat_reg_0),
        .sig_last_dbeat_reg_0(Q),
        .sig_ld_new_cmd_reg(sig_ld_new_cmd_reg),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg(sig_next_calc_error_reg),
        .sig_next_sequential_reg(sig_next_sequential_reg),
        .sig_rsc2stat_status_valid(sig_rsc2stat_status_valid),
        .sig_stat2rsc_status_ready(sig_stat2rsc_status_ready));
  amm_bridge_dynshreg_f__parameterized0 DYNSHREG_F_I
       (.D({D[7],D[0]}),
        .FIFO_Full_reg(sel),
        .Q({Q[7:5],Q[0]}),
        .clk(clk),
        .in(in),
        .out({out,sig_cmd_fifo_data_out}),
        .\sig_dbeat_cntr_reg[0] (sig_dqual_reg_empty_reg),
        .\sig_dbeat_cntr_reg[7] (\sig_dbeat_cntr_reg[7] ),
        .sig_dqual_reg_empty_reg(sig_dqual_reg_empty_reg_0),
        .sig_last_dbeat_reg(sig_last_dbeat_reg),
        .sig_last_dbeat_reg_0(sig_last_dbeat_reg_0),
        .sig_mstr2data_cmd_valid(sig_mstr2data_cmd_valid),
        .sig_next_calc_error_reg_reg(FIFO_Full_reg_0),
        .sig_next_calc_error_reg_reg_0(\INFERRED_GEN.cnt_i_reg[0] ),
        .sig_next_calc_error_reg_reg_1({CNTR_INCR_DECR_ADDN_F_I_n_1,CNTR_INCR_DECR_ADDN_F_I_n_2}));
  FDRE FIFO_Full_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(FIFO_Full_reg_0),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
