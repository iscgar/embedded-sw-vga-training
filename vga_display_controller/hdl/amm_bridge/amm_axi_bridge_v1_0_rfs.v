
`timescale 1ps / 1ps
module amm_axi_bridge_v1_0_6_read_top 
	#(	parameter integer C_AVA_ADDR_WIDTH = 32, //1-64
		parameter integer C_M_AXI_ADDR_WIDTH = 32, // 32-64
	  	parameter integer C_NUM_MASTERS = 1, // 1 to 8
		parameter integer C_DATA_WIDTH = 1024, //32,64,128,256,512,1024
		parameter integer C_BURSTCOUNTWIDTH = 11,
//		parameter integer C_MODE = 2, // 0 - read, 1- write, 2-read_write
                parameter integer C_ENABLE_PIPELINE = 1 // 0, 1
	//	parameter integer C_BYTEENABLES = 0  // 0, 1
)
(
    input clk, //Clock
    input aresetn, //Reset signal
    input [2:0] master_id,
 
    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s0,
    input avs_read_s0,
    output [C_DATA_WIDTH-1:0] avs_readdata_s0,
    output avs_readdatavalid_s0,
    output avs_waitrequest_s0,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s0,

	output mm2s_cmd_valid,
	output [(40+ C_M_AXI_ADDR_WIDTH)-1 :0] mm2s_cmd_data,
	input mm2s_cmd_ready,

	output s_axis_mm2s_tready,
	input s_axis_mm2s_tvalid,
	input [C_DATA_WIDTH -1:0] s_axis_mm2s_tdata,
	input [(C_DATA_WIDTH/8)-1:0] s_axis_mm2s_tkeep,
	input s_axis_mm2s_tlast	
);

localparam IDLE = 1'b0;
localparam ARBITRATE = 1'b1;
localparam [C_NUM_MASTERS -1: 0] all_ones = {C_NUM_MASTERS{1'b1}};
localparam [C_NUM_MASTERS -1: 0] all_zeros = {C_NUM_MASTERS{1'b0}};

wire [C_NUM_MASTERS -1: 0] read_request;
reg [C_NUM_MASTERS -1: 0] mask_vector;
wire [C_NUM_MASTERS -1: 0] nxt_grant_vector;
reg [C_NUM_MASTERS -1: 0] grant_vector;
wire [C_NUM_MASTERS -1: 0] mask_request_vector;
reg [C_AVA_ADDR_WIDTH-1 :0] address_reg;
reg [C_BURSTCOUNTWIDTH -1 :0] burstcount_reg;
reg cmd_valid;
reg state;
wire nxt_mask_vector;
wire [C_M_AXI_ADDR_WIDTH-1:0] address;
wire [22:0] bytes; //BTT
wire cmd_ready;
reg [2:0] master_reg;

assign cmd_ready = mm2s_cmd_ready;
assign read_request = avs_read_s0; //TO change
assign mask_request_vector = read_request;
assign nxt_grant_vector = mask_request_vector;	//TO change
assign nxt_mask_vector = 1'b1; //TO change

assign bytes =  (C_DATA_WIDTH == 1024) ? (burstcount_reg << 3'd7): 
	        (C_DATA_WIDTH == 512) ? (burstcount_reg << 3'd6): 
	        (C_DATA_WIDTH == 256) ? (burstcount_reg << 3'd5): 
	        (C_DATA_WIDTH == 128) ? (burstcount_reg << 3'd4): 
	        (C_DATA_WIDTH == 64) ? (burstcount_reg << 3'd3) : (burstcount_reg << 3'd2);
assign address = {{C_M_AXI_ADDR_WIDTH-C_AVA_ADDR_WIDTH{1'b0}},address_reg};

assign mm2s_cmd_valid = cmd_valid;
assign avs_waitrequest_s0 = !(grant_vector[0] & cmd_ready);
assign mm2s_cmd_data = {4'd0,1'd0,master_reg,address,1'b0,1'b1,6'd0,1'b1,bytes}; //NO user and cache

assign s_axis_mm2s_tready = 1'b1;
assign avs_readdata_s0 = s_axis_mm2s_tdata;
assign avs_readdatavalid_s0 = s_axis_mm2s_tvalid;

always@(posedge clk or negedge aresetn)
begin
	if(!aresetn)
	begin
		mask_vector <= all_ones;
		grant_vector <= all_zeros;
		state <= IDLE;	
		cmd_valid <= 1'b0;
		address_reg <= {C_AVA_ADDR_WIDTH{1'b0}};
		burstcount_reg <= {C_BURSTCOUNTWIDTH{1'b0}} ;
		master_reg <= 3'd0;
	end
	else
	begin
	case(state)
	IDLE:
	begin
		cmd_valid <= cmd_valid;
		address_reg <= address_reg;
		master_reg <= master_reg;
		burstcount_reg <= burstcount_reg;
		if(mask_request_vector != all_zeros)
		begin
			state <= ARBITRATE;
			mask_vector <= nxt_mask_vector;
			grant_vector <= nxt_grant_vector;
		end
		else
		begin
			state <= IDLE;
			mask_vector <= all_ones;
			grant_vector <= all_zeros;
		end
	end
	ARBITRATE:
	begin
		if(read_request && (!avs_waitrequest_s0))
		begin
			address_reg <= avs_address_s0;
			burstcount_reg <= avs_burstcount_s0;
			master_reg <= master_id;
			cmd_valid <= 1'b1;
			mask_vector <= nxt_mask_vector;
			grant_vector <= nxt_grant_vector;
		end
		else if(cmd_ready == 1'b1)
		begin
			cmd_valid <= 1'b0;
			address_reg <= address_reg;
			master_reg <= master_reg;
			burstcount_reg <= burstcount_reg;
			mask_vector <= nxt_mask_vector;
			grant_vector <= nxt_grant_vector;
	//		if(nxt_grant_vector == all_zeros)
	//		begin
				state <= IDLE;
	//		end
	//		else
	//		begin
	//			state <= ARBITRATE;
	//		end
		end
		else
		begin
			cmd_valid <= cmd_valid;
			address_reg <= address_reg;
			master_reg <= master_reg;
			burstcount_reg <= burstcount_reg;
			mask_vector <= mask_vector;
			grant_vector <= grant_vector;
		end
	end
	endcase
	end
end

endmodule


`timescale 1ps / 1ps
module amm_axi_bridge_v1_0_6_read_multi
	#(	parameter integer C_AVA_ADDR_WIDTH = 32, //1-64
		parameter integer C_M_AXI_ADDR_WIDTH = 32, // 32-64
	  	parameter integer C_NUM_MASTERS = 1, // 1 to 8
		parameter integer C_DATA_WIDTH = 1024, //32,64,128,256,512,1024
		parameter integer C_BURSTCOUNTWIDTH = 11,
                parameter integer C_ENABLE_PIPELINE = 1 // 0, 1
)
(
    input clk, //Clock
    input aresetn, //Reset signal

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s0,
    input avs_read_s0,
    output [C_DATA_WIDTH-1:0] avs_readdata_s0,
    output avs_readdatavalid_s0,
    output avs_waitrequest_s0,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s0,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s1,
    input avs_read_s1,
    output [C_DATA_WIDTH-1:0] avs_readdata_s1,
    output avs_readdatavalid_s1,
    output avs_waitrequest_s1,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s1,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s2,
    input avs_read_s2,
    output [C_DATA_WIDTH-1:0] avs_readdata_s2,
    output avs_readdatavalid_s2,
    output avs_waitrequest_s2,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s2,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s3,
    input avs_read_s3,
    output [C_DATA_WIDTH-1:0] avs_readdata_s3,
    output avs_readdatavalid_s3,
    output avs_waitrequest_s3,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s3,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s4,
    input avs_read_s4,
    output [C_DATA_WIDTH-1:0] avs_readdata_s4,
    output avs_readdatavalid_s4,
    output avs_waitrequest_s4,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s4,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s5,
    input avs_read_s5,
    output [C_DATA_WIDTH-1:0] avs_readdata_s5,
    output avs_readdatavalid_s5,
    output avs_waitrequest_s5,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s5,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s6,
    input avs_read_s6,
    output [C_DATA_WIDTH-1:0] avs_readdata_s6,
    output avs_readdatavalid_s6,
    output avs_waitrequest_s6,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s6,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s7,
    input avs_read_s7,
    output [C_DATA_WIDTH-1:0] avs_readdata_s7,
    output avs_readdatavalid_s7,
    output avs_waitrequest_s7,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s7,

	output mm2s_cmd_valid,
	output [(40+ C_M_AXI_ADDR_WIDTH)-1 :0] mm2s_cmd_data,
	input mm2s_cmd_ready,

	output s_axis_mm2s_tready,
	input s_axis_mm2s_tvalid,
	input [C_DATA_WIDTH -1:0] s_axis_mm2s_tdata,
	input [(C_DATA_WIDTH/8)-1:0] s_axis_mm2s_tkeep,
	input s_axis_mm2s_tlast	
);

wire [C_AVA_ADDR_WIDTH-1:0] avs_address;
wire avs_read;
wire [C_DATA_WIDTH-1:0] avs_readdata;
wire avs_readdatavalid;
wire avs_waitrequest;
wire [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount;
wire [2:0] master_id;


generate if(C_NUM_MASTERS > 1)
begin: MULTI_MASTER

wire [7:0] request_vector;
assign request_vector = {avs_read_s7, avs_read_s6, avs_read_s5, avs_read_s4, avs_read_s3, avs_read_s2, avs_read_s1, avs_read_s0};	

wire [C_NUM_MASTERS-1:0] grant;
wire [7:0] grant_vector;
wire [7:0] read_demux_select;
wire [7:0] read_demux_select_final;
assign grant_vector = {{(8-C_NUM_MASTERS){1'b0}},grant};
assign read_demux_select_final = (C_NUM_MASTERS == 1) ? 8'd1 : read_demux_select;

localparam integer FIFO_DEPTH = (C_ENABLE_PIPELINE == 1) ? 32 : 16;
wire push_rd_id;
wire pop_rd_id;

assign push_rd_id = avs_read & (!avs_waitrequest);
assign pop_rd_id = s_axis_mm2s_tlast && s_axis_mm2s_tvalid;
wire [7:0] wait_request;

assign wait_request = {avs_waitrequest_s7,
			avs_waitrequest_s6,
			avs_waitrequest_s5,
			avs_waitrequest_s4,
			avs_waitrequest_s3,
			avs_waitrequest_s2,
			avs_waitrequest_s1,
			avs_waitrequest_s0 };


amm_axi_bridge_v1_0_6_arbitration #(
	.C_NUM_MASTERS(C_NUM_MASTERS),
	.C_SELECT(3)) arbitration_read_1
(
 .clk(clk),
 .aresetn(aresetn),
 .request(request_vector[C_NUM_MASTERS-1:0]),
 //.done(mm2s_cmd_valid && mm2s_cmd_ready),
 .done(push_rd_id),
.wait_request(wait_request[C_NUM_MASTERS-1:0]),
 .mux_select(master_id),
 .grant(grant)
);

amm_axi_bridge_v1_0_6_read_demux
#( 	.C_AVA_ADDR_WIDTH	(C_AVA_ADDR_WIDTH	),
	.C_DATA_WIDTH		(C_DATA_WIDTH		),
	.C_BURSTCOUNTWIDTH	(C_BURSTCOUNTWIDTH	)
) demux_logic_1

(
	.grant(grant_vector),
	.read_demux_select(read_demux_select_final),

	.avs_address		(avs_address		),
	.avs_read		(avs_read		),
	.avs_readdata		(avs_readdata		),
	.avs_readdatavalid	(avs_readdatavalid	),
	.avs_waitrequest	(avs_waitrequest	),
	.avs_burstcount		(avs_burstcount		),

	.avs_address_s0		(avs_address_s0		),
	.avs_read_s0		(avs_read_s0		),
	.avs_readdata_s0	(avs_readdata_s0	),
	.avs_readdatavalid_s0	(avs_readdatavalid_s0	),
	.avs_waitrequest_s0	(avs_waitrequest_s0	),
	.avs_burstcount_s0	(avs_burstcount_s0	),

	.avs_address_s1		(avs_address_s1		),
	.avs_read_s1		(avs_read_s1		),
	.avs_readdata_s1	(avs_readdata_s1	),
	.avs_readdatavalid_s1	(avs_readdatavalid_s1	),
	.avs_waitrequest_s1	(avs_waitrequest_s1	),
	.avs_burstcount_s1	(avs_burstcount_s1	),

	.avs_address_s2		(avs_address_s2		),
	.avs_read_s2		(avs_read_s2		),
	.avs_readdata_s2	(avs_readdata_s2	),
	.avs_readdatavalid_s2	(avs_readdatavalid_s2	),
	.avs_waitrequest_s2	(avs_waitrequest_s2	),
	.avs_burstcount_s2	(avs_burstcount_s2	),

	.avs_address_s3		(avs_address_s3		),
	.avs_read_s3		(avs_read_s3		),
	.avs_readdata_s3	(avs_readdata_s3	),
	.avs_readdatavalid_s3	(avs_readdatavalid_s3	),
	.avs_waitrequest_s3	(avs_waitrequest_s3	),
	.avs_burstcount_s3	(avs_burstcount_s3	),

	.avs_address_s4		(avs_address_s4		),
	.avs_read_s4		(avs_read_s4		),
	.avs_readdata_s4	(avs_readdata_s4	),
	.avs_readdatavalid_s4	(avs_readdatavalid_s4	),
	.avs_waitrequest_s4	(avs_waitrequest_s4	),
	.avs_burstcount_s4	(avs_burstcount_s4	),

	.avs_address_s5		(avs_address_s5		),
	.avs_read_s5		(avs_read_s5		),
	.avs_readdata_s5	(avs_readdata_s5	),
	.avs_readdatavalid_s5	(avs_readdatavalid_s5	),
	.avs_waitrequest_s5	(avs_waitrequest_s5	),
	.avs_burstcount_s5	(avs_burstcount_s5	),

	.avs_address_s6		(avs_address_s6		),
	.avs_read_s6		(avs_read_s6		),
	.avs_readdata_s6	(avs_readdata_s6	),
	.avs_readdatavalid_s6	(avs_readdatavalid_s6	),
	.avs_waitrequest_s6	(avs_waitrequest_s6	),
	.avs_burstcount_s6	(avs_burstcount_s6	),

	.avs_address_s7		(avs_address_s7		),
	.avs_read_s7		(avs_read_s7		),
	.avs_readdata_s7	(avs_readdata_s7	),
	.avs_readdatavalid_s7	(avs_readdatavalid_s7	),
	.avs_waitrequest_s7	(avs_waitrequest_s7	),
	.avs_burstcount_s7	(avs_burstcount_s7	)
);

amm_axi_bridge_v1_0_6_fifo #(.C_WRITE_DATA_WIDTH(8),
.C_FIFO_WRITE_DEPTH(FIFO_DEPTH)
) ava_sync_rid_fifo
(
       .rstn     (aresetn),
       .wr_clk   (clk),
       .wr_en    (push_rd_id),
       .rd_en    (pop_rd_id),
       .din      (grant_vector),
       .dout     (read_demux_select),
       .full     (),
       .empty    ()
);

end
else
begin: SINGLE_MASTER

assign master_id = 3'd0;
assign avs_address = avs_address_s0;
assign avs_read = avs_read_s0;
assign avs_burstcount = avs_burstcount_s0;
assign avs_waitrequest_s0 = avs_waitrequest;
assign avs_readdata_s0 = avs_readdata;
assign avs_readdatavalid_s0 = avs_readdatavalid;
assign avs_waitrequest_s1 = 1'b1;
assign avs_waitrequest_s2 = 1'b1;
assign avs_waitrequest_s3 = 1'b1;
assign avs_waitrequest_s4 = 1'b1;
assign avs_waitrequest_s5 = 1'b1;
assign avs_waitrequest_s6 = 1'b1;
assign avs_waitrequest_s7 = 1'b1;

end
endgenerate

amm_axi_bridge_v1_0_6_read_top
#( 	.C_AVA_ADDR_WIDTH	(C_AVA_ADDR_WIDTH	),
	.C_M_AXI_ADDR_WIDTH	(C_M_AXI_ADDR_WIDTH	),
	.C_DATA_WIDTH		(C_DATA_WIDTH		),
	.C_BURSTCOUNTWIDTH	(C_BURSTCOUNTWIDTH	)
) read_single_top_1
(
 	.clk(clk),
 	.aresetn(aresetn),
	.master_id(master_id),

	.avs_address_s0		(avs_address	),
	.avs_read_s0		(avs_read	),
	.avs_readdata_s0	(avs_readdata	),
	.avs_readdatavalid_s0	(avs_readdatavalid	),
	.avs_waitrequest_s0	(avs_waitrequest),
	.avs_burstcount_s0	(avs_burstcount	),

	.mm2s_cmd_valid	(mm2s_cmd_valid),
	.mm2s_cmd_data	(mm2s_cmd_data ),
	.mm2s_cmd_ready	(mm2s_cmd_ready),

	.s_axis_mm2s_tready(s_axis_mm2s_tready),
	.s_axis_mm2s_tvalid(s_axis_mm2s_tvalid),
	.s_axis_mm2s_tdata (s_axis_mm2s_tdata ),
	.s_axis_mm2s_tkeep (s_axis_mm2s_tkeep ),
	.s_axis_mm2s_tlast (s_axis_mm2s_tlast )
);


endmodule



`timescale 1ps / 1ps
module amm_axi_bridge_v1_0_6_read_demux 
#(
	parameter integer C_AVA_ADDR_WIDTH = 32, //1-64
	parameter integer C_DATA_WIDTH = 1024, //32,64,128,256,512,1024
	parameter integer C_BURSTCOUNTWIDTH = 11
)
(	input [7:0] grant,
	input [7:0] read_demux_select,
	
    output [C_AVA_ADDR_WIDTH-1:0] avs_address,
    output avs_read,
    input [C_DATA_WIDTH-1:0] avs_readdata,
    input avs_readdatavalid,
    input avs_waitrequest,
    output [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s0,
    input avs_read_s0,
    output [C_DATA_WIDTH-1:0] avs_readdata_s0,
    output avs_readdatavalid_s0,
    output avs_waitrequest_s0,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s0,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s1,
    input avs_read_s1,
    output [C_DATA_WIDTH-1:0] avs_readdata_s1,
    output avs_readdatavalid_s1,
    output avs_waitrequest_s1,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s1,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s2,
    input avs_read_s2,
    output [C_DATA_WIDTH-1:0] avs_readdata_s2,
    output avs_readdatavalid_s2,
    output avs_waitrequest_s2,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s2,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s3,
    input avs_read_s3,
    output [C_DATA_WIDTH-1:0] avs_readdata_s3,
    output avs_readdatavalid_s3,
    output avs_waitrequest_s3,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s3,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s4,
    input avs_read_s4,
    output [C_DATA_WIDTH-1:0] avs_readdata_s4,
    output avs_readdatavalid_s4,
    output avs_waitrequest_s4,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s4,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s5,
    input avs_read_s5,
    output [C_DATA_WIDTH-1:0] avs_readdata_s5,
    output avs_readdatavalid_s5,
    output avs_waitrequest_s5,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s5,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s6,
    input avs_read_s6,
    output [C_DATA_WIDTH-1:0] avs_readdata_s6,
    output avs_readdatavalid_s6,
    output avs_waitrequest_s6,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s6,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s7,
    input avs_read_s7,
    output [C_DATA_WIDTH-1:0] avs_readdata_s7,
    output avs_readdatavalid_s7,
    output avs_waitrequest_s7,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s7

);

assign avs_address = 	grant[0] ? avs_address_s0 :
			grant[1] ? avs_address_s1 :
			grant[2] ? avs_address_s2 :
			grant[3] ? avs_address_s3 :
			grant[4] ? avs_address_s4 :
			grant[5] ? avs_address_s5 :
			grant[6] ? avs_address_s6 :
			grant[7] ? avs_address_s7 : 'd0;

assign avs_read = 	grant[0] ? avs_read_s0 :
			grant[1] ? avs_read_s1 :
			grant[2] ? avs_read_s2 :
			grant[3] ? avs_read_s3 :
			grant[4] ? avs_read_s4 :
			grant[5] ? avs_read_s5 :
			grant[6] ? avs_read_s6 :
			grant[7] ? avs_read_s7 : 1'd0;


assign avs_burstcount = grant[0] ? avs_burstcount_s0 :
			grant[1] ? avs_burstcount_s1 :
			grant[2] ? avs_burstcount_s2 :
			grant[3] ? avs_burstcount_s3 :
			grant[4] ? avs_burstcount_s4 :
			grant[5] ? avs_burstcount_s5 :
			grant[6] ? avs_burstcount_s6 :
			grant[7] ? avs_burstcount_s7 : 'd0;

assign avs_waitrequest_s0 = (grant == 8'h01) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s1 = (grant == 8'h02) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s2 = (grant == 8'h04) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s3 = (grant == 8'h08) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s4 = (grant == 8'h10) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s5 = (grant == 8'h20) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s6 = (grant == 8'h40) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s7 = (grant == 8'h80) ? avs_waitrequest : 1'b1;

assign avs_readdata_s0 = (read_demux_select == 8'h01) ? avs_readdata : 'd0;
assign avs_readdata_s1 = (read_demux_select == 8'h02) ? avs_readdata : 'd0;
assign avs_readdata_s2 = (read_demux_select == 8'h04) ? avs_readdata : 'd0;
assign avs_readdata_s3 = (read_demux_select == 8'h08) ? avs_readdata : 'd0;
assign avs_readdata_s4 = (read_demux_select == 8'h10) ? avs_readdata : 'd0;
assign avs_readdata_s5 = (read_demux_select == 8'h20) ? avs_readdata : 'd0;
assign avs_readdata_s6 = (read_demux_select == 8'h40) ? avs_readdata : 'd0;
assign avs_readdata_s7 = (read_demux_select == 8'h80) ? avs_readdata : 'd0;

assign avs_readdatavalid_s0 = (read_demux_select == 8'h01) ? avs_readdatavalid : 1'd0;
assign avs_readdatavalid_s1 = (read_demux_select == 8'h02) ? avs_readdatavalid : 1'd0;
assign avs_readdatavalid_s2 = (read_demux_select == 8'h04) ? avs_readdatavalid : 1'd0;
assign avs_readdatavalid_s3 = (read_demux_select == 8'h08) ? avs_readdatavalid : 1'd0;
assign avs_readdatavalid_s4 = (read_demux_select == 8'h10) ? avs_readdatavalid : 1'd0;
assign avs_readdatavalid_s5 = (read_demux_select == 8'h20) ? avs_readdatavalid : 1'd0;
assign avs_readdatavalid_s6 = (read_demux_select == 8'h40) ? avs_readdatavalid : 1'd0;
assign avs_readdatavalid_s7 = (read_demux_select == 8'h80) ? avs_readdatavalid : 1'd0;

endmodule



`timescale 1ps / 1ps
module amm_axi_bridge_v1_0_6_write_top
	#(	parameter integer C_AVA_ADDR_WIDTH = 32, //1-64
		parameter integer C_M_AXI_ADDR_WIDTH = 32, // 32-64
	  	parameter integer C_NUM_MASTERS = 1, // 1 to 8
		parameter integer C_DATA_WIDTH = 1024, //32,64,128,256,512,1024
		parameter integer C_BURSTCOUNTWIDTH = 11,
//		parameter integer C_MODE = 2, // 0 - read, 1- write, 2-read_write
		parameter integer C_BYTEENABLES = 0  // 0, 1
)
(
    input clk, //Clock
    input aresetn, //Reset signal
    input [2:0] master_id,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s0,
    input avs_write_s0,
    input [C_DATA_WIDTH-1:0] avs_writedata_s0,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s0,
    output avs_waitrequest_s0,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s0,

	output s2mm_cmd_valid,
	output [(40+ C_M_AXI_ADDR_WIDTH)-1 :0] s2mm_cmd_data,
	input s2mm_cmd_ready,
	
	output last_beat,

	input m_axis_s2mm_tready,
	output m_axis_s2mm_tvalid,
	output [C_DATA_WIDTH -1:0] m_axis_s2mm_tdata,
	output [(C_DATA_WIDTH/8)-1:0] m_axis_s2mm_tkeep,
	output m_axis_s2mm_tlast	
);


wire [22:0] bytes;
wire [C_M_AXI_ADDR_WIDTH -1 :0] address;
assign address = {{C_M_AXI_ADDR_WIDTH-C_AVA_ADDR_WIDTH{1'b0}},avs_address_s0};

generate if (C_DATA_WIDTH == 1024) 
begin: BYTES_1024
assign bytes = avs_burstcount_s0 << 3'd7;
end
endgenerate
generate if (C_DATA_WIDTH == 512) 
begin: BYTES_512
assign bytes = avs_burstcount_s0 << 3'd6;
end
endgenerate
generate if (C_DATA_WIDTH == 256) 
begin: BYTES_256
assign bytes = avs_burstcount_s0 << 3'd5;
end
endgenerate
generate if (C_DATA_WIDTH == 128) 
begin: BYTES_128
assign bytes = avs_burstcount_s0 << 3'd4;
end
endgenerate
generate if (C_DATA_WIDTH == 64) 
begin: BYTES_64
assign bytes = avs_burstcount_s0 << 3'd3;
end
endgenerate
generate if (C_DATA_WIDTH == 32) 
begin: BYTES_32
assign bytes = avs_burstcount_s0 << 3'd2;
end
endgenerate

reg [10:0] count;
wire cmd_ready, cmd_valid, cmd_done;
wire tlast, tready, tvalid, grant;
reg first_transaction, first_data_accepted, cmd_accepted;
reg done;
//wire avs_write = avs_write_s0 && (!done);
wire avs_write = avs_write_s0;
always@(posedge clk or negedge aresetn)
begin
	if(!aresetn)
	begin
		done <= 1'b0;
	end
	else
	begin
		done <= cmd_done;
	end
end

assign last_beat = cmd_done;
assign avs_waitrequest_s0 = !(grant);

assign tlast = tvalid && ((first_transaction && (avs_burstcount_s0 == 11'd1)) | (count == 1'b1));
assign tvalid = avs_write  && ((first_transaction && (!first_data_accepted)) || (!first_transaction));
assign grant = first_transaction ? (((cmd_valid && cmd_ready) || cmd_accepted) && ((tvalid && tready) || first_data_accepted)) : (tvalid && tready);
assign cmd_done = first_transaction ? (avs_write && grant && (avs_burstcount_s0 == 11'd1)) : (tlast && tready);
assign cmd_valid = avs_write && first_transaction && (!cmd_accepted);

assign s2mm_cmd_valid = cmd_valid;
assign cmd_ready = s2mm_cmd_ready;
assign s2mm_cmd_data = {4'd0,1'd0,master_id,address,1'b0,1'b1,6'd0,1'b1,bytes};

assign m_axis_s2mm_tkeep = (C_BYTEENABLES[0] & tlast) ? avs_byteenable_s0 : {(C_DATA_WIDTH/8){1'b1}};
assign m_axis_s2mm_tlast = tlast;
assign m_axis_s2mm_tvalid = tvalid;
assign tready = m_axis_s2mm_tready;
assign m_axis_s2mm_tdata = avs_writedata_s0;

always@(posedge clk or negedge aresetn)
begin
	if(!aresetn)
	begin
		first_transaction <= 1'b1;
	end
	else
	begin
		if(first_transaction && avs_write && grant && (!cmd_done))
		begin
			first_transaction <= 1'b0;
		end
		else if(cmd_done)
		begin
			first_transaction <= 1'b1;
		end
		else
		begin
			first_transaction <= first_transaction;
		end
	end
end

always@(posedge clk or negedge aresetn)
begin
	if(!aresetn)
	begin
		count <= 11'd0;	
	end
	else
	begin
		if(first_transaction && avs_write && grant && (!cmd_done))
		begin
			count <= avs_burstcount_s0 - 1'b1;
		end
		else if(tlast && tready)
		begin
			count <= 11'd0;
		end
		else if(tvalid && tready)
		begin
			count <= count - 1'b1;
		end
		else
		begin
			count <= count;
		end
	end
end

always@(posedge clk or negedge aresetn)
begin
	if(!aresetn)
	begin
		cmd_accepted <= 1'b0;
	end
	else
	begin
		if(cmd_done)
		begin
			cmd_accepted <= 1'b0;
		end
		else if(cmd_valid && cmd_ready)
		begin
			cmd_accepted <= 1'b1;
		end
		else
		begin
			cmd_accepted <= cmd_accepted;
		end
	end
end
always@(posedge clk or negedge aresetn)
begin
	if(!aresetn)
	begin
		first_data_accepted <= 1'b0;
	end
	else
	begin
		if(cmd_done)
		begin
			first_data_accepted <= 1'b0;
		end
		else if(tvalid && tready)
		begin
			first_data_accepted <= 1'b1;
		end
		else
		begin
			first_data_accepted <= first_data_accepted;
		end
	end
end

//always@(posedge clk or negedge aresetn)
//begin
//	if(!aresetn)
//	begin
//		data_state <= DATA_IDLE;
//		count <= 11'd0;	
//		tvalid <= 1'b0;	
//	end
//	else
//	begin
//		case(data_state)
//		DATA_IDLE:
//		begin		
//			if(avs_write)
//			begin
//				tvalid <= 1'b1;
//				count  <= avs_burstcount_s0;
//				data_state <= (avs_burstcount_s0 == 11'd1) ? DATA_LAST : DATA_PROCESS;
//			end
//			else
//			begin
//				tvalid <= 1'b0;
//				count <= count;
//				data_state <= DATA_IDLE;
//			end
//		end
//		DATA_PROCESS:
//		begin
//			if(tvalid && tready)
//			begin
//				count <= count - 1'd1;
//				tvalid <= 1'b1;
//				if(count == 11'd2)
//				begin
//					data_state <= DATA_LAST;
//				end
//				else
//				begin
//					data_state <= DATA_PROCESS;
//				end
//			end
//		end
//		DATA_LAST:
//		begin
//			if(tvalid && tready)
//			begin
//				count <= count - 1'd1;
//				tvalid <= 1'b0;
//			end
//			if(cmd_done)			
//			begin
//				data_state <= DATA_IDLE;
//			end
//		end
//		endcase
//	end
//end
endmodule



`timescale 1ps / 1ps
module amm_axi_bridge_v1_0_6_write_multi
	#(	parameter integer C_AVA_ADDR_WIDTH = 32, //1-64
		parameter integer C_M_AXI_ADDR_WIDTH = 32, // 32-64
	  	parameter integer C_NUM_MASTERS = 1, // 1 to 8
		parameter integer C_DATA_WIDTH = 1024, //32,64,128,256,512,1024
		parameter integer C_BURSTCOUNTWIDTH = 11,
//		parameter integer C_MODE = 2, // 0 - read, 1- write, 2-read_write
		parameter integer C_BYTEENABLES = 0  // 0, 1
)
(
    input clk, //Clock
    input aresetn, //Reset signal

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s0,
    input avs_write_s0,
    input [C_DATA_WIDTH-1:0] avs_writedata_s0,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s0,
    output avs_waitrequest_s0,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s0,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s1,
    input avs_write_s1,
    input [C_DATA_WIDTH-1:0] avs_writedata_s1,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s1,
    output avs_waitrequest_s1,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s1,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s2,
    input avs_write_s2,
    input [C_DATA_WIDTH-1:0] avs_writedata_s2,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s2,
    output avs_waitrequest_s2,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s2,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s3,
    input avs_write_s3,
    input [C_DATA_WIDTH-1:0] avs_writedata_s3,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s3,
    output avs_waitrequest_s3,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s3,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s4,
    input avs_write_s4,
    input [C_DATA_WIDTH-1:0] avs_writedata_s4,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s4,
    output avs_waitrequest_s4,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s4,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s5,
    input avs_write_s5,
    input [C_DATA_WIDTH-1:0] avs_writedata_s5,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s5,
    output avs_waitrequest_s5,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s5,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s6,
    input avs_write_s6,
    input [C_DATA_WIDTH-1:0] avs_writedata_s6,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s6,
    output avs_waitrequest_s6,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s6,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s7,
    input avs_write_s7,
    input [C_DATA_WIDTH-1:0] avs_writedata_s7,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s7,
    output avs_waitrequest_s7,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s7,

	output s2mm_cmd_valid,
	output [(40+ C_M_AXI_ADDR_WIDTH)-1 :0] s2mm_cmd_data,
	input s2mm_cmd_ready,

	input m_axis_s2mm_tready,
	output m_axis_s2mm_tvalid,
	output [C_DATA_WIDTH -1:0] m_axis_s2mm_tdata,
	output [(C_DATA_WIDTH/8)-1:0] m_axis_s2mm_tkeep,
	output m_axis_s2mm_tlast	
);

wire [C_AVA_ADDR_WIDTH-1:0] avs_address;
wire avs_write;
wire [C_DATA_WIDTH-1:0] avs_writedata;
wire [(C_DATA_WIDTH/8)-1:0] avs_byteenable;
wire avs_waitrequest;
wire [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount;
wire [2:0] master_id;
reg tlast_reg;
wire last_beat;

generate if (C_NUM_MASTERS > 1)
begin: MULTI_MASTER

wire [7:0] request_vector;
assign request_vector = {avs_write_s7, avs_write_s6, avs_write_s5, avs_write_s4, avs_write_s3, avs_write_s2, avs_write_s1, avs_write_s0};	

wire [C_NUM_MASTERS-1:0] grant;
wire [7:0] grant_vector;
assign grant_vector = {{(8-C_NUM_MASTERS){1'b0}},grant};
wire [7:0] wait_request;

assign wait_request = {avs_waitrequest_s7,
			avs_waitrequest_s6,
			avs_waitrequest_s5,
			avs_waitrequest_s4,
			avs_waitrequest_s3,
			avs_waitrequest_s2,
			avs_waitrequest_s1,
			avs_waitrequest_s0 };
				
amm_axi_bridge_v1_0_6_arbitration #(
	.C_NUM_MASTERS(C_NUM_MASTERS),
	.C_SELECT(3)) arbitration_write_1
(
 .clk(clk),
 .aresetn(aresetn),
 .request(request_vector[C_NUM_MASTERS-1:0]),
 //.done(last_beat & (!tlast_reg)),
 //.done(tlast_reg),
 .done(last_beat),
.wait_request(wait_request[C_NUM_MASTERS-1:0]),

 .mux_select(master_id),
 .grant(grant)
);

always@(posedge clk or negedge aresetn)
begin
	if(!aresetn)
	begin
		tlast_reg <= 1'b0;
	end
	else
	begin
		tlast_reg <= last_beat;
	end
end

amm_axi_bridge_v1_0_6_write_mux 
#( 	.C_AVA_ADDR_WIDTH	(C_AVA_ADDR_WIDTH	),
	.C_DATA_WIDTH		(C_DATA_WIDTH		),
	.C_BURSTCOUNTWIDTH	(C_BURSTCOUNTWIDTH	)
) write_mux_logic_1
(
	.grant(grant_vector),

	.avs_address		(avs_address	),
	.avs_write		(avs_write	),
	.avs_writedata		(avs_writedata	),
	.avs_byteenable		(avs_byteenable	),
	.avs_waitrequest	(avs_waitrequest),
	.avs_burstcount		(avs_burstcount	),

	.avs_address_s0		(avs_address_s0		),
	.avs_write_s0		(avs_write_s0		),
	.avs_writedata_s0	(avs_writedata_s0	),
	.avs_byteenable_s0	(avs_byteenable_s0	),
	.avs_waitrequest_s0	(avs_waitrequest_s0	),
	.avs_burstcount_s0	(avs_burstcount_s0	),

	.avs_address_s1		(avs_address_s1		),
	.avs_write_s1		(avs_write_s1		),
	.avs_writedata_s1	(avs_writedata_s1	),
	.avs_byteenable_s1	(avs_byteenable_s1	),
	.avs_waitrequest_s1	(avs_waitrequest_s1	),
	.avs_burstcount_s1	(avs_burstcount_s1	),

	.avs_address_s2		(avs_address_s2		),
	.avs_write_s2		(avs_write_s2		),
	.avs_writedata_s2	(avs_writedata_s2	),
	.avs_byteenable_s2	(avs_byteenable_s2	),
	.avs_waitrequest_s2	(avs_waitrequest_s2	),
	.avs_burstcount_s2	(avs_burstcount_s2	),

	.avs_address_s3		(avs_address_s3		),
	.avs_write_s3		(avs_write_s3		),
	.avs_writedata_s3	(avs_writedata_s3	),
	.avs_byteenable_s3	(avs_byteenable_s3	),
	.avs_waitrequest_s3	(avs_waitrequest_s3	),
	.avs_burstcount_s3	(avs_burstcount_s3	),

	.avs_address_s4		(avs_address_s4		),
	.avs_write_s4		(avs_write_s4		),
	.avs_writedata_s4	(avs_writedata_s4	),
	.avs_byteenable_s4	(avs_byteenable_s4	),
	.avs_waitrequest_s4	(avs_waitrequest_s4	),
	.avs_burstcount_s4	(avs_burstcount_s4	),

	.avs_address_s5		(avs_address_s5		),
	.avs_write_s5		(avs_write_s5		),
	.avs_writedata_s5	(avs_writedata_s5	),
	.avs_byteenable_s5	(avs_byteenable_s5	),
	.avs_waitrequest_s5	(avs_waitrequest_s5	),
	.avs_burstcount_s5	(avs_burstcount_s5	),

	.avs_address_s6		(avs_address_s6		),
	.avs_write_s6		(avs_write_s6		),
	.avs_writedata_s6	(avs_writedata_s6	),
	.avs_byteenable_s6	(avs_byteenable_s6	),
	.avs_waitrequest_s6	(avs_waitrequest_s6	),
	.avs_burstcount_s6	(avs_burstcount_s6	),

	.avs_address_s7		(avs_address_s7		),
	.avs_write_s7		(avs_write_s7		),
	.avs_writedata_s7	(avs_writedata_s7	),
	.avs_byteenable_s7	(avs_byteenable_s7	),
	.avs_waitrequest_s7	(avs_waitrequest_s7	),
	.avs_burstcount_s7	(avs_burstcount_s7	)
);
end
else
begin: SINGLE_MASTER
assign master_id = 3'd0;
assign avs_address = avs_address_s0;
assign avs_write = avs_write_s0;
assign avs_writedata = avs_writedata_s0;
assign avs_byteenable = avs_byteenable_s0;
assign avs_burstcount = avs_burstcount_s0;
assign avs_waitrequest_s0 = avs_waitrequest;
assign avs_waitrequest_s1 = 1'b1;
assign avs_waitrequest_s2 = 1'b1;
assign avs_waitrequest_s3 = 1'b1;
assign avs_waitrequest_s4 = 1'b1;
assign avs_waitrequest_s5 = 1'b1;
assign avs_waitrequest_s6 = 1'b1;
assign avs_waitrequest_s7 = 1'b1;

end
endgenerate

amm_axi_bridge_v1_0_6_write_top
#( 	.C_AVA_ADDR_WIDTH	(C_AVA_ADDR_WIDTH	),
	.C_M_AXI_ADDR_WIDTH	(C_M_AXI_ADDR_WIDTH	),
	.C_DATA_WIDTH		(C_DATA_WIDTH		),
	.C_BURSTCOUNTWIDTH	(C_BURSTCOUNTWIDTH	),
	.C_BYTEENABLES		(C_BYTEENABLES		)
) write_single_top_1
(
 	.clk(clk),
 	.aresetn(aresetn),
	.master_id(master_id),
	
	.avs_address_s0		(avs_address	),
	.avs_write_s0		(avs_write	),
	.avs_writedata_s0	(avs_writedata	),
	.avs_byteenable_s0	(avs_byteenable	),
	.avs_waitrequest_s0	(avs_waitrequest),
	.avs_burstcount_s0	(avs_burstcount	),

	.s2mm_cmd_valid	(s2mm_cmd_valid),
	.s2mm_cmd_data	(s2mm_cmd_data ),
	.s2mm_cmd_ready	(s2mm_cmd_ready),

	.last_beat(last_beat),

	.m_axis_s2mm_tready(m_axis_s2mm_tready),
	.m_axis_s2mm_tvalid(m_axis_s2mm_tvalid),
	.m_axis_s2mm_tdata (m_axis_s2mm_tdata ),
	.m_axis_s2mm_tkeep (m_axis_s2mm_tkeep ),
	.m_axis_s2mm_tlast (m_axis_s2mm_tlast )
);

endmodule



`timescale 1ps / 1ps
module amm_axi_bridge_v1_0_6_write_mux #(
	parameter integer C_AVA_ADDR_WIDTH = 32, //1-64
	parameter integer C_DATA_WIDTH = 1024, //32,64,128,256,512,1024
	parameter integer C_BURSTCOUNTWIDTH = 11
)
(	input [7:0] grant,
	
    output [C_AVA_ADDR_WIDTH-1:0] avs_address,
    output avs_write,
    output [C_DATA_WIDTH-1:0] avs_writedata,
    output [(C_DATA_WIDTH/8)-1:0] avs_byteenable,
    input avs_waitrequest,
    output [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s0,
    input avs_write_s0,
    input [C_DATA_WIDTH-1:0] avs_writedata_s0,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s0,
    output avs_waitrequest_s0,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s0,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s1,
    input avs_write_s1,
    input [C_DATA_WIDTH-1:0] avs_writedata_s1,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s1,
    output avs_waitrequest_s1,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s1,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s2,
    input avs_write_s2,
    input [C_DATA_WIDTH-1:0] avs_writedata_s2,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s2,
    output avs_waitrequest_s2,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s2,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s3,
    input avs_write_s3,
    input [C_DATA_WIDTH-1:0] avs_writedata_s3,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s3,
    output avs_waitrequest_s3,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s3,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s4,
    input avs_write_s4,
    input [C_DATA_WIDTH-1:0] avs_writedata_s4,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s4,
    output avs_waitrequest_s4,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s4,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s5,
    input avs_write_s5,
    input [C_DATA_WIDTH-1:0] avs_writedata_s5,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s5,
    output avs_waitrequest_s5,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s5,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s6,
    input avs_write_s6,
    input [C_DATA_WIDTH-1:0] avs_writedata_s6,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s6,
    output avs_waitrequest_s6,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s6,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s7,
    input avs_write_s7,
    input [C_DATA_WIDTH-1:0] avs_writedata_s7,
    input [(C_DATA_WIDTH/8)-1:0] avs_byteenable_s7,
    output avs_waitrequest_s7,
    input [(C_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s7

);

assign avs_address = 	grant[0] ? avs_address_s0 :
			grant[1] ? avs_address_s1 :
			grant[2] ? avs_address_s2 :
			grant[3] ? avs_address_s3 :
			grant[4] ? avs_address_s4 :
			grant[5] ? avs_address_s5 :
			grant[6] ? avs_address_s6 :
			grant[7] ? avs_address_s7 : 'd0;

assign avs_write = 	grant[0] ? avs_write_s0 :
			grant[1] ? avs_write_s1 :
			grant[2] ? avs_write_s2 :
			grant[3] ? avs_write_s3 :
			grant[4] ? avs_write_s4 :
			grant[5] ? avs_write_s5 :
			grant[6] ? avs_write_s6 :
			grant[7] ? avs_write_s7 : 1'b0;

assign avs_writedata = 	grant[0] ? avs_writedata_s0 :
			grant[1] ? avs_writedata_s1 :
			grant[2] ? avs_writedata_s2 :
			grant[3] ? avs_writedata_s3 :
			grant[4] ? avs_writedata_s4 :
			grant[5] ? avs_writedata_s5 :
			grant[6] ? avs_writedata_s6 :
			grant[7] ? avs_writedata_s7 : 'd0;

assign avs_byteenable = grant[0] ? avs_byteenable_s0 :
			grant[1] ? avs_byteenable_s1 :
			grant[2] ? avs_byteenable_s2 :
			grant[3] ? avs_byteenable_s3 :
			grant[4] ? avs_byteenable_s4 :
			grant[5] ? avs_byteenable_s5 :
			grant[6] ? avs_byteenable_s6 :
			grant[7] ? avs_byteenable_s7 : 'd0;


assign avs_burstcount = grant[0] ? avs_burstcount_s0 :
			grant[1] ? avs_burstcount_s1 :
			grant[2] ? avs_burstcount_s2 :
			grant[3] ? avs_burstcount_s3 :
			grant[4] ? avs_burstcount_s4 :
			grant[5] ? avs_burstcount_s5 :
			grant[6] ? avs_burstcount_s6 :
			grant[7] ? avs_burstcount_s7 : 'd0;

assign avs_waitrequest_s0 = (grant == 8'h01) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s1 = (grant == 8'h02) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s2 = (grant == 8'h04) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s3 = (grant == 8'h08) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s4 = (grant == 8'h10) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s5 = (grant == 8'h20) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s6 = (grant == 8'h40) ? avs_waitrequest : 1'b1;
assign avs_waitrequest_s7 = (grant == 8'h80) ? avs_waitrequest : 1'b1;

endmodule


`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2017 11:06:20 AM
// Design Name: 
// Module Name: amm_axi_bridge
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module amm_axi_bridge_v1_0_6_top 
	#(	parameter C_FAMILY = "virtex7",
		parameter integer C_AVA_ADDR_WIDTH = 32, //1-64
		parameter integer C_M_AXI_ADDR_WIDTH = 32, // 32-64
	  	parameter integer C_NUM_MASTERS = 1, // 1 to 8
		parameter integer C_AVA_DATA_WIDTH = 32, //32,64,128,256,512,1024
		parameter integer C_AVA_BURSTCOUNTWIDTH = 11,
		parameter integer C_MODE = 2, // 0 - read, 1- write, 2-read_write
                parameter integer C_ENABLE_PIPELINE = 1, // 0, 1
		parameter integer C_AVA_BYTEENABLES = 0  // 0, 1
         ) (
 
    input clk, //Clock
    input aresetn, //Reset signal
//	output error,
 
    output write_error,
    output write_error_valid,
    output [2:0] write_error_master_ID,
    output read_error,
    output read_error_valid,
    output [2:0] read_error_master_ID,


////// Signals for Avalon masters//////	
////Avalon response is not supported//////
    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s0,
    input avs_read_s0,
    input avs_write_s0,
    input [C_AVA_DATA_WIDTH-1:0] avs_writedata_s0,
    output [C_AVA_DATA_WIDTH-1:0] avs_readdata_s0,
    output avs_readdatavalid_s0,
    output avs_waitrequest_s0,
    input [(C_AVA_DATA_WIDTH/8)-1:0] avs_byteenable_s0,
    input [(C_AVA_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s0,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s1,
    input avs_read_s1,
    input avs_write_s1,
    input [C_AVA_DATA_WIDTH-1:0] avs_writedata_s1,
    output [C_AVA_DATA_WIDTH-1:0] avs_readdata_s1,
    output avs_readdatavalid_s1,
    output avs_waitrequest_s1,
    input [(C_AVA_DATA_WIDTH/8)-1:0] avs_byteenable_s1,
    input [(C_AVA_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s1,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s2,
    input avs_read_s2,
    input avs_write_s2,
    input [C_AVA_DATA_WIDTH-1:0] avs_writedata_s2,
    output [C_AVA_DATA_WIDTH-1:0] avs_readdata_s2,
    output avs_readdatavalid_s2,
    output avs_waitrequest_s2,
    input [(C_AVA_DATA_WIDTH/8)-1:0] avs_byteenable_s2,
    input [(C_AVA_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s2,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s3,
    input avs_read_s3,
    input avs_write_s3,
    input [C_AVA_DATA_WIDTH-1:0] avs_writedata_s3,
    output [C_AVA_DATA_WIDTH-1:0] avs_readdata_s3,
    output avs_readdatavalid_s3,
    output avs_waitrequest_s3,
    input [(C_AVA_DATA_WIDTH/8)-1:0] avs_byteenable_s3,
    input [(C_AVA_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s3,


    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s4,
    input avs_read_s4,
    input avs_write_s4,
    input [C_AVA_DATA_WIDTH-1:0] avs_writedata_s4,
    output [C_AVA_DATA_WIDTH-1:0] avs_readdata_s4,
    output avs_readdatavalid_s4,
    output avs_waitrequest_s4,
    input [(C_AVA_DATA_WIDTH/8)-1:0] avs_byteenable_s4,
    input [(C_AVA_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s4,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s5,
    input avs_read_s5,
    input avs_write_s5,
    input [C_AVA_DATA_WIDTH-1:0] avs_writedata_s5,
    output [C_AVA_DATA_WIDTH-1:0] avs_readdata_s5,
    output avs_readdatavalid_s5,
    output avs_waitrequest_s5,
    input [(C_AVA_DATA_WIDTH/8)-1:0] avs_byteenable_s5,
    input [(C_AVA_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s5,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s6,
    input avs_read_s6,
    input avs_write_s6,
    input [C_AVA_DATA_WIDTH-1:0] avs_writedata_s6,
    output [C_AVA_DATA_WIDTH-1:0] avs_readdata_s6,
    output avs_readdatavalid_s6,
    output avs_waitrequest_s6,
    input [(C_AVA_DATA_WIDTH/8)-1:0] avs_byteenable_s6,
    input [(C_AVA_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s6,

    input [C_AVA_ADDR_WIDTH-1:0] avs_address_s7,
    input avs_read_s7,
    input avs_write_s7,
    input [C_AVA_DATA_WIDTH-1:0] avs_writedata_s7,
    output [C_AVA_DATA_WIDTH-1:0] avs_readdata_s7,
    output avs_readdatavalid_s7,
    output avs_waitrequest_s7,
    input [(C_AVA_DATA_WIDTH/8)-1:0] avs_byteenable_s7,
    input [(C_AVA_BURSTCOUNTWIDTH)- 1:0] avs_burstcount_s7,
////// Signals for AXI read Address and command//////	
	output [C_M_AXI_ADDR_WIDTH - 1 : 0] m_axi_araddr,
	output [7:0] m_axi_arlen,
	output [2:0] m_axi_arsize,
	output [1:0] m_axi_arburst,
	output [2:0] m_axi_arprot,
	output [3:0] m_axi_arcache,
	output [3:0] m_axi_aruser,
	output m_axi_arvalid,
	input m_axi_arready,
	
////// Signals for AXI read data//////	
	input [C_AVA_DATA_WIDTH-1:0] m_axi_rdata,
	input [1:0] m_axi_rresp,
	input m_axi_rlast,
	input m_axi_rvalid,
	output m_axi_rready,
	
////// Signals for AXI write Address and command//////	
	output [C_M_AXI_ADDR_WIDTH - 1 : 0] m_axi_awaddr,
	output [7:0] m_axi_awlen,
	output [2:0] m_axi_awsize,
	output [1:0] m_axi_awburst,
	output [2:0] m_axi_awprot,
	output [3:0] m_axi_awcache,
	output [3:0] m_axi_awuser,
	output m_axi_awvalid,
	input m_axi_awready,

////// Signals for AXI write data//////	
	output [C_AVA_DATA_WIDTH-1 : 0] m_axi_wdata,
	output [(C_AVA_DATA_WIDTH/8)-1:0] m_axi_wstrb,
	output m_axi_wlast,
	output m_axi_wvalid,
	input m_axi_wready,	

////// Signals for AXI write response//////	
	input [1:0] m_axi_bresp,
	input m_axi_bvalid,
	output m_axi_bready

    );
   
   /* wire write_error;
    wire write_error_valid;
    wire [2:0] write_error_master_ID;
    wire read_error;
    wire read_error_valid;
    wire [2:0] read_error_master_ID;*/

localparam C_AXI_ADDR_WIDTH = (C_AVA_ADDR_WIDTH <= 32) ? 32 : 64;
localparam integer C_INCLUDE_MM2S = (C_MODE == 1) ? 0 : 1;
localparam integer C_INCLUDE_S2MM = (C_MODE == 0) ? 0 : 1;
localparam integer C_PIPELINE_DEPTH = (C_ENABLE_PIPELINE == 1) ? 16 : 1;
localparam integer C_STATUSWIDTH = (C_AVA_BYTEENABLES == 1) ? 32 : 8;


wire [C_AXI_ADDR_WIDTH-1:0] m_axi_awaddr_temp;
wire [C_AXI_ADDR_WIDTH-1:0] m_axi_araddr_temp;

wire avs_wait_request_s0_read;
wire avs_wait_request_s0_write;
wire avs_wait_request_s1_read;
wire avs_wait_request_s1_write;
wire avs_wait_request_s2_read;
wire avs_wait_request_s2_write;
wire avs_wait_request_s3_read;
wire avs_wait_request_s3_write;
wire avs_wait_request_s4_read;
wire avs_wait_request_s4_write;
wire avs_wait_request_s5_read;
wire avs_wait_request_s5_write;
wire avs_wait_request_s6_read;
wire avs_wait_request_s6_write;
wire avs_wait_request_s7_read;
wire avs_wait_request_s7_write;

assign avs_waitrequest_s0 = (!avs_read_s0 | avs_wait_request_s0_read) & (!avs_write_s0 | avs_wait_request_s0_write);
assign avs_waitrequest_s1 = (!avs_read_s1 | avs_wait_request_s1_read) & (!avs_write_s1 | avs_wait_request_s1_write);
assign avs_waitrequest_s2 = (!avs_read_s2 | avs_wait_request_s2_read) & (!avs_write_s2 | avs_wait_request_s2_write);
assign avs_waitrequest_s3 = (!avs_read_s3 | avs_wait_request_s3_read) & (!avs_write_s3 | avs_wait_request_s3_write);
assign avs_waitrequest_s4 = (!avs_read_s4 | avs_wait_request_s4_read) & (!avs_write_s4 | avs_wait_request_s4_write);
assign avs_waitrequest_s5 = (!avs_read_s5 | avs_wait_request_s5_read) & (!avs_write_s5 | avs_wait_request_s5_write);
assign avs_waitrequest_s6 = (!avs_read_s6 | avs_wait_request_s6_read) & (!avs_write_s6 | avs_wait_request_s6_write);
assign avs_waitrequest_s7 = (!avs_read_s7 | avs_wait_request_s7_read) & (!avs_write_s7 | avs_wait_request_s7_write);

wire [40+C_AXI_ADDR_WIDTH-1:0] mm2s_cmd_data;
wire mm2s_cmd_valid;
wire mm2s_cmd_ready;
wire [40+C_AXI_ADDR_WIDTH-1:0] s2mm_cmd_data;
wire s2mm_cmd_valid;
wire s2mm_cmd_ready;

wire s_axis_mm2s_tready;
wire s_axis_mm2s_tvalid;
wire [C_AVA_DATA_WIDTH-1:0] s_axis_mm2s_tdata;
wire [(C_AVA_DATA_WIDTH/8) -1:0] s_axis_mm2s_tkeep;
wire s_axis_mm2s_tlast;

wire m_axis_s2mm_tready;
wire m_axis_s2mm_tvalid;
wire [C_AVA_DATA_WIDTH-1:0] m_axis_s2mm_tdata;
wire [(C_AVA_DATA_WIDTH/8) -1:0] m_axis_s2mm_tkeep;
wire m_axis_s2mm_tlast;

wire s2mm_status_valid;
wire mm2s_status_valid;
wire [C_STATUSWIDTH-1:0] s2mm_status;
wire [7:0] mm2s_status;

generate if ((C_MODE == 0) || (C_MODE == 2)) 
begin: READ_TOP

amm_axi_bridge_v1_0_6_read_multi 
#(	.C_AVA_ADDR_WIDTH(C_AVA_ADDR_WIDTH),
	.C_M_AXI_ADDR_WIDTH(C_AXI_ADDR_WIDTH),
	.C_NUM_MASTERS(C_NUM_MASTERS),
	.C_DATA_WIDTH(C_AVA_DATA_WIDTH),
	.C_BURSTCOUNTWIDTH(C_AVA_BURSTCOUNTWIDTH),
	.C_ENABLE_PIPELINE(C_ENABLE_PIPELINE)
)amm_axi_bridge_v1_0_6_read_multi_top_1
(
.clk(clk),
.aresetn(aresetn),

.avs_address_s0(avs_address_s0),
.avs_read_s0(avs_read_s0),
.avs_readdata_s0(avs_readdata_s0),
.avs_readdatavalid_s0(avs_readdatavalid_s0),
.avs_waitrequest_s0(avs_wait_request_s0_read),
.avs_burstcount_s0(avs_burstcount_s0),

.avs_address_s1(avs_address_s1),
.avs_read_s1(avs_read_s1),
.avs_readdata_s1(avs_readdata_s1),
.avs_readdatavalid_s1(avs_readdatavalid_s1),
.avs_waitrequest_s1(avs_wait_request_s1_read),
.avs_burstcount_s1(avs_burstcount_s1),

.avs_address_s2(avs_address_s2),
.avs_read_s2(avs_read_s2),
.avs_readdata_s2(avs_readdata_s2),
.avs_readdatavalid_s2(avs_readdatavalid_s2),
.avs_waitrequest_s2(avs_wait_request_s2_read),
.avs_burstcount_s2(avs_burstcount_s2),

.avs_address_s3(avs_address_s3),
.avs_read_s3(avs_read_s3),
.avs_readdata_s3(avs_readdata_s3),
.avs_readdatavalid_s3(avs_readdatavalid_s3),
.avs_waitrequest_s3(avs_wait_request_s3_read),
.avs_burstcount_s3(avs_burstcount_s3),

.avs_address_s4(avs_address_s4),
.avs_read_s4(avs_read_s4),
.avs_readdata_s4(avs_readdata_s4),
.avs_readdatavalid_s4(avs_readdatavalid_s4),
.avs_waitrequest_s4(avs_wait_request_s4_read),
.avs_burstcount_s4(avs_burstcount_s4),

.avs_address_s5(avs_address_s5),
.avs_read_s5(avs_read_s5),
.avs_readdata_s5(avs_readdata_s5),
.avs_readdatavalid_s5(avs_readdatavalid_s5),
.avs_waitrequest_s5(avs_wait_request_s5_read),
.avs_burstcount_s5(avs_burstcount_s5),

.avs_address_s6(avs_address_s6),
.avs_read_s6(avs_read_s6),
.avs_readdata_s6(avs_readdata_s6),
.avs_readdatavalid_s6(avs_readdatavalid_s6),
.avs_waitrequest_s6(avs_wait_request_s6_read),
.avs_burstcount_s6(avs_burstcount_s6),

.avs_address_s7(avs_address_s7),
.avs_read_s7(avs_read_s7),
.avs_readdata_s7(avs_readdata_s7),
.avs_readdatavalid_s7(avs_readdatavalid_s7),
.avs_waitrequest_s7(avs_wait_request_s7_read),
.avs_burstcount_s7(avs_burstcount_s7),

.mm2s_cmd_valid(mm2s_cmd_valid),
.mm2s_cmd_data(mm2s_cmd_data),
.mm2s_cmd_ready(mm2s_cmd_ready),
.s_axis_mm2s_tready(s_axis_mm2s_tready),
.s_axis_mm2s_tvalid(s_axis_mm2s_tvalid),
.s_axis_mm2s_tdata(s_axis_mm2s_tdata),
.s_axis_mm2s_tkeep(s_axis_mm2s_tkeep),
.s_axis_mm2s_tlast(s_axis_mm2s_tlast)	
);

assign read_error = mm2s_status[6] || mm2s_status[5] || mm2s_status[4];
assign read_error_valid = mm2s_status_valid;
assign read_error_master_ID = mm2s_status[2:0];

end
else
begin: READ_DUMMY

assign mm2s_cmd_data = 'd0;
assign mm2s_cmd_valid = 1'd0;
assign s_axis_mm2s_tready = 1'b0;

assign read_error = 1'b0;
assign read_error_valid = 1'b0;
assign read_error_master_ID = 'd0;

assign avs_wait_request_s0_read = 1'b1;
assign avs_wait_request_s1_read = 1'b1;
assign avs_wait_request_s2_read = 1'b1;
assign avs_wait_request_s3_read = 1'b1;
assign avs_wait_request_s4_read = 1'b1;
assign avs_wait_request_s5_read = 1'b1;
assign avs_wait_request_s6_read = 1'b1;
assign avs_wait_request_s7_read = 1'b1;
end
endgenerate

generate if ((C_MODE == 1) || (C_MODE == 2)) 
begin: WRITE_TOP

amm_axi_bridge_v1_0_6_write_multi
#(	.C_AVA_ADDR_WIDTH(C_AVA_ADDR_WIDTH),
	.C_M_AXI_ADDR_WIDTH(C_AXI_ADDR_WIDTH),
	.C_NUM_MASTERS(C_NUM_MASTERS),
	.C_DATA_WIDTH(C_AVA_DATA_WIDTH),
	.C_BURSTCOUNTWIDTH(C_AVA_BURSTCOUNTWIDTH),
	.C_BYTEENABLES(C_AVA_BYTEENABLES)
) amm_axi_bridge_v1_0_6_write_multi_top_1
(
.clk(clk),
.aresetn(aresetn),

.avs_address_s0(avs_address_s0),
.avs_write_s0(avs_write_s0),
.avs_writedata_s0(avs_writedata_s0),
.avs_waitrequest_s0(avs_wait_request_s0_write),
.avs_burstcount_s0(avs_burstcount_s0),
.avs_byteenable_s0(avs_byteenable_s0),

.avs_address_s1(avs_address_s1),
.avs_write_s1(avs_write_s1),
.avs_writedata_s1(avs_writedata_s1),
.avs_waitrequest_s1(avs_wait_request_s1_write),
.avs_burstcount_s1(avs_burstcount_s1),
.avs_byteenable_s1(avs_byteenable_s1),

.avs_address_s2(avs_address_s2),
.avs_write_s2(avs_write_s2),
.avs_writedata_s2(avs_writedata_s2),
.avs_waitrequest_s2(avs_wait_request_s2_write),
.avs_burstcount_s2(avs_burstcount_s2),
.avs_byteenable_s2(avs_byteenable_s2),

.avs_address_s3(avs_address_s3),
.avs_write_s3(avs_write_s3),
.avs_writedata_s3(avs_writedata_s3),
.avs_waitrequest_s3(avs_wait_request_s3_write),
.avs_burstcount_s3(avs_burstcount_s3),
.avs_byteenable_s3(avs_byteenable_s3),

.avs_address_s4(avs_address_s4),
.avs_write_s4(avs_write_s4),
.avs_writedata_s4(avs_writedata_s4),
.avs_waitrequest_s4(avs_wait_request_s4_write),
.avs_burstcount_s4(avs_burstcount_s4),
.avs_byteenable_s4(avs_byteenable_s4),

.avs_address_s5(avs_address_s5),
.avs_write_s5(avs_write_s5),
.avs_writedata_s5(avs_writedata_s5),
.avs_waitrequest_s5(avs_wait_request_s5_write),
.avs_burstcount_s5(avs_burstcount_s5),
.avs_byteenable_s5(avs_byteenable_s5),

.avs_address_s6(avs_address_s6),
.avs_write_s6(avs_write_s6),
.avs_writedata_s6(avs_writedata_s6),
.avs_waitrequest_s6(avs_wait_request_s6_write),
.avs_burstcount_s6(avs_burstcount_s6),
.avs_byteenable_s6(avs_byteenable_s6),

.avs_address_s7(avs_address_s7),
.avs_write_s7(avs_write_s7),
.avs_writedata_s7(avs_writedata_s7),
.avs_waitrequest_s7(avs_wait_request_s7_write),
.avs_burstcount_s7(avs_burstcount_s7),
.avs_byteenable_s7(avs_byteenable_s7),

.s2mm_cmd_valid(s2mm_cmd_valid),
.s2mm_cmd_data(s2mm_cmd_data),
.s2mm_cmd_ready(s2mm_cmd_ready),
.m_axis_s2mm_tready(m_axis_s2mm_tready),
.m_axis_s2mm_tvalid(m_axis_s2mm_tvalid),
.m_axis_s2mm_tdata(m_axis_s2mm_tdata),
.m_axis_s2mm_tkeep(m_axis_s2mm_tkeep),
.m_axis_s2mm_tlast(m_axis_s2mm_tlast)	
);

assign write_error = s2mm_status[6] || s2mm_status[5] || s2mm_status[4];
assign write_error_valid = s2mm_status_valid;
assign write_error_master_ID = s2mm_status[2:0];

end
else
begin: WRITE_DUMMY

assign s2mm_cmd_data = 'd0;
assign s2mm_cmd_valid = 1'd0;
assign m_axis_s2mm_tvalid = 1'b0;
assign m_axis_s2mm_tdata = 'd0;
assign m_axis_s2mm_tkeep = 'd0;
assign m_axis_s2mm_tlast = 'd0;

assign write_error = 1'b0;
assign write_error_valid = 1'b0;
assign write_error_master_ID = 'd0;

assign avs_wait_request_s0_write = 1'b1;
assign avs_wait_request_s1_write = 1'b1;
assign avs_wait_request_s2_write = 1'b1;
assign avs_wait_request_s3_write = 1'b1;
assign avs_wait_request_s4_write = 1'b1;
assign avs_wait_request_s5_write = 1'b1;
assign avs_wait_request_s6_write = 1'b1;
assign avs_wait_request_s7_write = 1'b1;
end

endgenerate

assign m_axi_awaddr = m_axi_awaddr_temp[C_M_AXI_ADDR_WIDTH -1:0];
assign m_axi_araddr = m_axi_araddr_temp[C_M_AXI_ADDR_WIDTH -1:0];

axi_datamover
   #(
      .C_INCLUDE_MM2S              ( C_INCLUDE_MM2S	   ),
      .C_M_AXI_MM2S_ADDR_WIDTH     ( C_AXI_ADDR_WIDTH      ),
      .C_M_AXI_MM2S_DATA_WIDTH     ( C_AVA_DATA_WIDTH          ),
      .C_M_AXIS_MM2S_TDATA_WIDTH   ( C_AVA_DATA_WIDTH          ),
      .C_INCLUDE_MM2S_STSFIFO      ( 1     		   ),
      .C_MM2S_STSCMD_FIFO_DEPTH    ( C_PIPELINE_DEPTH	   ),
      .C_MM2S_STSCMD_IS_ASYNC      ( 0   ),
      .C_INCLUDE_MM2S_DRE          ( 0           ),
      .C_MM2S_BURST_SIZE           ( 256   ),
      .C_MM2S_BTT_USED             ( 23            ),
      .C_MM2S_ADDR_PIPE_DEPTH      ( 4 ),
      .C_MM2S_INCLUDE_SF           ( 0                      ),
      .C_ENABLE_MM2S_TKEEP 	   (0) ,
 
      .C_ENABLE_CACHE_USER         ( 0                       ),
      .C_ENABLE_SKID_BUF           ( "11000"                 ),
      .C_CMD_WIDTH                 ( 40+C_AXI_ADDR_WIDTH     ),

      .C_INCLUDE_S2MM              ( C_INCLUDE_S2MM         ),
      .C_M_AXI_S2MM_ADDR_WIDTH     ( C_AXI_ADDR_WIDTH      ),
      .C_M_AXI_S2MM_DATA_WIDTH     ( C_AVA_DATA_WIDTH      ),
      .C_S_AXIS_S2MM_TDATA_WIDTH   ( C_AVA_DATA_WIDTH        ),
      .C_INCLUDE_S2MM_STSFIFO      ( 1     ),
      .C_S2MM_STSCMD_FIFO_DEPTH    ( 1 ),
      .C_S2MM_STSCMD_IS_ASYNC      ( 0      ),
      .C_INCLUDE_S2MM_DRE          ( 0    ),
      .C_S2MM_BURST_SIZE           ( 256   ),
      .C_S2MM_BTT_USED             ( 23           ),
      .C_S2MM_SUPPORT_INDET_BTT    ( C_AVA_BYTEENABLES      ),
      .C_S2MM_ADDR_PIPE_DEPTH      ( 4),
      .C_S2MM_INCLUDE_SF           ( 0                       ),
      .C_ENABLE_S2MM_TKEEP  	   ( C_AVA_BYTEENABLES ),
      .C_FAMILY                    ( C_FAMILY )
    ) I_DATAMOVER 
  (
      // MM2S Primary Clock / Reset input
      .m_axi_mm2s_aclk             (clk),
      .m_axi_mm2s_aresetn          (aresetn),

      // MM2S Soft Shutdown
      .mm2s_halt                   (1'b0          ),
      .mm2s_halt_cmplt             (    ),

      // MM2S Error output discrete
      .mm2s_err                    (mm2s_err           ),

      // Memory Map to Stream Command FIFO and Status FIFO Async CLK/RST //////////////
      .m_axis_mm2s_cmdsts_aclk     (clk                 ),
      .m_axis_mm2s_cmdsts_aresetn  (aresetn            ),

      // User Command Interface Ports (AXI Stream)
      .s_axis_mm2s_cmd_tvalid      (mm2s_cmd_valid    ),
      .s_axis_mm2s_cmd_tready      (mm2s_cmd_ready    ),
      .s_axis_mm2s_cmd_tdata       (mm2s_cmd_data     ),

      // User Status Interface Ports (AXI Stream)
      .m_axis_mm2s_sts_tvalid      (mm2s_status_valid    ),
      .m_axis_mm2s_sts_tready      (aresetn    ),
      .m_axis_mm2s_sts_tdata       (mm2s_status    ),
      .m_axis_mm2s_sts_tkeep       (    ),
      .m_axis_mm2s_sts_tlast       (    ),

   
      // Address Posting contols
      .mm2s_allow_addr_req         (1'b1   ),
      .mm2s_addr_req_posted        (  ),
      .mm2s_rd_xfer_cmplt          (  ),
      
   
      // MM2S AXI Address Channel I/O  //////////////////////////////////////
   //   m_axi_mm2s_arid             (                     ),
      .m_axi_mm2s_araddr           (m_axi_araddr_temp              ),
      .m_axi_mm2s_arlen            (m_axi_arlen               ),
      .m_axi_mm2s_arsize           (m_axi_arsize              ),
      .m_axi_mm2s_arburst          (m_axi_arburst             ),
      .m_axi_mm2s_arprot           (m_axi_arprot              ),
      .m_axi_mm2s_arcache          (m_axi_arcache             ),
      .m_axi_mm2s_aruser           (m_axi_aruser             ),
      .m_axi_mm2s_arvalid          (m_axi_arvalid             ),
      .m_axi_mm2s_arready          (m_axi_arready             ),

      // MM2S AXI MMap Read Data Channel I/O  //////////////////////////////-
      .m_axi_mm2s_rdata            (m_axi_rdata               ),
      .m_axi_mm2s_rresp            (m_axi_rresp               ),
      .m_axi_mm2s_rlast            (m_axi_rlast               ),
      .m_axi_mm2s_rvalid           (m_axi_rvalid              ),
      .m_axi_mm2s_rready           (m_axi_rready              ),

      // MM2S AXI Master Stream Channel I/O  ////////////////////////////////
      .m_axis_mm2s_tdata           (s_axis_mm2s_tdata       ),
      .m_axis_mm2s_tkeep           (s_axis_mm2s_tkeep       ),
      .m_axis_mm2s_tlast           (s_axis_mm2s_tlast       ),
      .m_axis_mm2s_tvalid          (s_axis_mm2s_tvalid      ),
      .m_axis_mm2s_tready          (s_axis_mm2s_tready      ),

      // Testing Support I/O
      .mm2s_dbg_sel                (4'd0        ),
      .mm2s_dbg_data               (),

      // S2MM Primary Clock/Reset input
      .m_axi_s2mm_aclk             (clk                   ),
      .m_axi_s2mm_aresetn          (aresetn         ),

      // S2MM Soft Shutdown
      .s2mm_halt                   (1'b0          ),
      .s2mm_halt_cmplt             (    ),

      // S2MM Error output discrete
      .s2mm_err                    (s2mm_err           ),

      // Stream to Memory Map Command FIFO and Status FIFO I/O //////////////
      .m_axis_s2mm_cmdsts_awclk    (clk                 ),
      .m_axis_s2mm_cmdsts_aresetn  (aresetn                ),

      // User Command Interface Ports (AXI Stream)
      .s_axis_s2mm_cmd_tvalid      (s2mm_cmd_valid    ),
      .s_axis_s2mm_cmd_tready      (s2mm_cmd_ready    ),
      .s_axis_s2mm_cmd_tdata       (s2mm_cmd_data     ),

      // User Status Interface Ports (AXI Stream)
      .m_axis_s2mm_sts_tvalid      (s2mm_status_valid    ),
      .m_axis_s2mm_sts_tready      (aresetn    ),
      .m_axis_s2mm_sts_tdata       (s2mm_status     ),
      .m_axis_s2mm_sts_tkeep       (     ),
      .m_axis_s2mm_sts_tlast       (                      ),
   
      // Address posting controls
      .s2mm_allow_addr_req         (1'b1   ),
      .s2mm_addr_req_posted        (                          ),
      .s2mm_wr_xfer_cmplt          (                          ),
      .s2mm_ld_nxt_len             (                          ),
      .s2mm_wr_len                 (                          ),
     

      // S2MM AXI Address Channel I/O  //////////////////////////////////////
//      m_axi_s2mm_awid             (open                      ),
      .m_axi_s2mm_awaddr           (m_axi_awaddr_temp              ),
      .m_axi_s2mm_awlen            (m_axi_awlen               ),
      .m_axi_s2mm_awsize           (m_axi_awsize              ),
      .m_axi_s2mm_awburst          (m_axi_awburst             ),
      .m_axi_s2mm_awprot           (m_axi_awprot              ),
      .m_axi_s2mm_awcache          (m_axi_awcache             ),
      .m_axi_s2mm_awuser           (m_axi_awuser             ),
      .m_axi_s2mm_awvalid          (m_axi_awvalid             ),
      .m_axi_s2mm_awready          (m_axi_awready             ),

      // S2MM AXI MMap Write Data Channel I/O  //////////////////////////////
      .m_axi_s2mm_wdata            (m_axi_wdata               ),
      .m_axi_s2mm_wstrb            (m_axi_wstrb               ),
      .m_axi_s2mm_wlast            (m_axi_wlast               ),
      .m_axi_s2mm_wvalid           (m_axi_wvalid              ),
      .m_axi_s2mm_wready           (m_axi_wready              ),

      // S2MM AXI MMap Write response Channel I/O  //////////////////////////
      .m_axi_s2mm_bresp            (m_axi_bresp               ),
      .m_axi_s2mm_bvalid           (m_axi_bvalid              ),
      .m_axi_s2mm_bready           (m_axi_bready              ),

      // S2MM AXI Slave Stream Channel I/O  ////////////////////////////////-
      .s_axis_s2mm_tdata           (m_axis_s2mm_tdata       ),
      .s_axis_s2mm_tkeep           (m_axis_s2mm_tkeep       ),
      .s_axis_s2mm_tlast           (m_axis_s2mm_tlast       ),
      .s_axis_s2mm_tvalid          (m_axis_s2mm_tvalid      ),
      .s_axis_s2mm_tready          (m_axis_s2mm_tready      ),

      // Testing Support I/O
      .s2mm_dbg_sel                (4'd0           ),
      .s2mm_dbg_data               ()
    );


endmodule



`timescale 1ps / 1ps
module amm_axi_bridge_v1_0_6_fifo 
  # (

  // Common module parameters
  parameter                         C_CLOCK_DOMAIN       = "COMMON",
  parameter                         C_RELATED_CLOCKS     = 0,
  parameter                         C_FIFO_MEMORY_TYPE   = "BRAM",
  parameter                         C_ECC_MODE           = "NO_ECC",

  parameter integer                 C_FIFO_WRITE_DEPTH   = 2048,
  parameter integer                 C_WRITE_DATA_WIDTH   = 8,
  parameter integer                 C_WR_DATA_COUNT_WIDTH = 10,
  parameter integer                 C_PROG_FULL_THRESH   = 10,
  parameter integer                 C_FULL_RESET_VALUE   = 0,

  parameter                         C_READ_MODE          = "FWFT",
  parameter integer                 C_FIFO_READ_LATENCY  = 0,
  parameter integer                 C_READ_DATA_WIDTH    = C_WRITE_DATA_WIDTH,
  parameter                         C_RD_DATA_COUNT_WIDTH = 10,
  parameter integer                 C_PROG_EMPTY_THRESH  = 10,
  parameter                         C_DOUT_RESET_VALUE   = "",
  parameter integer                 C_RDCLK_FASTER       = 0,
  parameter integer                 C_CDC_SYNC_STAGES    = 2,
  parameter integer                 C_REMOVE_WR_RD_PROT_LOGIC  = 0,

  parameter integer                 C_EN_ECC_PIPE        = 0,

  parameter                         C_WAKEUP_TIME        = 0,
  parameter integer                 C_AUTO_SLEEP_TIME    = 0,
  parameter integer                 C_VERSION            = 0

) (

  // Common module ports
  
  input  wire                                               rstn,

  // Write Domain ports
  input  wire                                               wr_clk,
  input  wire                                               wr_en,
  input  wire [C_WRITE_DATA_WIDTH-1:0]                      din,
  output wire                                               full,
  // Read Domain ports
  input  wire                                               rd_en,
  output wire [C_READ_DATA_WIDTH-1:0]                       dout,
  output wire                                               empty
);
  function integer clogb2;
    input [31:0] value;
    begin
        value = value - 1;
        for (clogb2 = 0; value > 0; clogb2 = clogb2 + 1) begin
            value = value >> 1;
        end
    end
endfunction
   localparam C_WR_DATA_COUNT_WIDTH_I = clogb2 (C_FIFO_WRITE_DEPTH);
   wire                                               prog_empty;
   wire [C_RD_DATA_COUNT_WIDTH-1:0]                     rd_data_count;
   wire                                               underflow;
   wire                                               rd_rst_busy;

  // ECC Related ports
   wire                                               injectsbiterr = 0;
   wire                                               injectdbiterr= 0;
   wire                                               sbiterr;
   wire                                               dbiterr;
   wire                                               prog_full;
   wire [C_WR_DATA_COUNT_WIDTH-1:0]                   wr_data_count;
   wire [C_WR_DATA_COUNT_WIDTH-1:0]                   data_count;
   wire                                               overflow;
   wire                                               wr_rst_busy;
   wire                                               sleep = 0;

xpm_fifo_sync # (
        .FIFO_MEMORY_TYPE    ("auto"  ),
        .ECC_MODE            ("no_ecc"          ),
        .FIFO_WRITE_DEPTH    (C_FIFO_WRITE_DEPTH  ),
        .WRITE_DATA_WIDTH    (C_WRITE_DATA_WIDTH  ),
        .WR_DATA_COUNT_WIDTH (C_WR_DATA_COUNT_WIDTH_I),
        .FULL_RESET_VALUE    (C_FULL_RESET_VALUE  ),
        .PROG_FULL_THRESH    (C_PROG_FULL_THRESH  ),
        .READ_MODE           (C_READ_MODE         ),
        .FIFO_READ_LATENCY   (C_FIFO_READ_LATENCY ),
        .READ_DATA_WIDTH     (C_WRITE_DATA_WIDTH   ),
        .RD_DATA_COUNT_WIDTH (C_WR_DATA_COUNT_WIDTH_I),
        .PROG_EMPTY_THRESH   (10 ),
        .DOUT_RESET_VALUE    (C_DOUT_RESET_VALUE  ),
//        .REMOVE_WR_RD_PROT_LOGIC    (C_REMOVE_WR_RD_PROT_LOGIC),
//        .EN_ECC_PIPE         (C_EN_ECC_PIPE       ),
        .WAKEUP_TIME         (C_WAKEUP_TIME       )
//        .AUTO_SLEEP_TIME     (C_AUTO_SLEEP_TIME   ),
    //    .VERSION             (C_VERSION           )

      ) xpm_fifo_sync_inst (
        .sleep            (sleep),
        .rst              (!rstn),
        .wr_clk           (wr_clk),
        .wr_en            (wr_en),
        .din              (din),
        .full             (full),
        .prog_full        (prog_full),
        .wr_data_count    (),
        .overflow         (overflow),
        .wr_rst_busy      (wr_rst_busy),
        .rd_en            (rd_en),
        .dout             (dout),
        .empty            (empty),
        .prog_empty       (prog_empty),
        .rd_data_count    (),
        .underflow        (underflow),
        .rd_rst_busy      (rd_rst_busy),
        .injectsbiterr    (injectsbiterr),
        .injectdbiterr    (injectdbiterr),
        .sbiterr          (sbiterr),
        .dbiterr          (dbiterr)
      );
endmodule


`timescale 1ps / 1ps
module amm_axi_bridge_v1_0_6_arbitration
	#(	parameter integer C_NUM_MASTERS = 8, // 1 to 8
		parameter integer C_SELECT = 3 // 1 to 3
)
(
input clk,
input aresetn,
input [C_NUM_MASTERS-1:0] request,
output reg [C_NUM_MASTERS-1:0] grant,
output [C_SELECT-1:0] mux_select,
input [C_NUM_MASTERS-1:0] wait_request,
input done
);

wire [C_NUM_MASTERS-1:0] all_ones;
assign all_ones = {C_NUM_MASTERS{1'b1}};
reg state;

localparam IDLE = 1'b0;
localparam ARBITRATE = 1'b1;

wire [C_NUM_MASTERS-1:0] nxt_grant_vector;
wire [C_NUM_MASTERS-1:0] nxt_grant_vector_temp;
wire [C_NUM_MASTERS-1:0] masked_request_vector;
wire [C_NUM_MASTERS-1:0] mask_vector;

/*wire [C_NUM_MASTERS-1:0] nxt_mask_vector_logic;
wire [C_NUM_MASTERS-1:0] nxt_mask_vector_temp;
wire [C_NUM_MASTERS-1:0] nxt_mask_vector;*/

genvar k;
generate
	assign mask_vector[0] = 1'b0;
	for (k=1; k < C_NUM_MASTERS; k=k+1) begin: MASK
		assign	mask_vector[k] = mask_vector[k-1] || grant[k-1];
	end
endgenerate

//assign masked_request_vector = ((mask_vector & request) == 'd0) ? (request & (~grant)) : (mask_vector & request);
assign masked_request_vector = ((mask_vector & request) == 'd0) ? (request & (wait_request)) : (mask_vector & request);
/*assign nxt_mask_vector_logic = (request ^ nxt_grant_vector) & mask_vector;
genvar k;
generate
	assign nxt_mask_vector_temp[0] = nxt_mask_vector_logic[0];
	for (k=1; k < C_NUM_MASTERS; k=k+1) begin: NXT_MASK
		assign	nxt_mask_vector_temp[k] = nxt_mask_vector_temp[k-1] || nxt_mask_vector_logic[k];
	end
endgenerate
assign nxt_mask_vector = (nxt_mask_vector_temp == 'd0) ? all_ones : nxt_mask_vector_temp;*/

genvar i;
generate
	assign nxt_grant_vector_temp[0] = 1'b1;
	for (i=1; i < C_NUM_MASTERS; i=i+1) begin: NXT_TEMP
		assign	nxt_grant_vector_temp[i] = nxt_grant_vector_temp[i-1] && !(masked_request_vector[i-1]);
	end
endgenerate
genvar j;
generate
	for (j=0; j < C_NUM_MASTERS; j=j+1) begin: NXT_GRANT
		assign	nxt_grant_vector[j] = nxt_grant_vector_temp[j] && (masked_request_vector[j]);
	end
endgenerate
wire [7:0] grant_vector;
assign grant_vector = {{(8-C_NUM_MASTERS){1'b0}},grant};
assign mux_select = (grant_vector[0]) ? 3'd0 : 
		    (grant_vector[1]) ? 3'd1 :
		    (grant_vector[2]) ? 3'd2 :
		    (grant_vector[3]) ? 3'd3 :
		    (grant_vector[4]) ? 3'd4 :
		    (grant_vector[5]) ? 3'd5 :
		    (grant_vector[6]) ? 3'd6 :
		    (grant_vector[7]) ? 3'd7 : 3'd0;

wire temp_grant;
reg move;
assign temp_grant = ((grant & request) == 'd0) ? 1'b1 : 1'b0;
always@(posedge clk or negedge aresetn)
begin
	if(!aresetn)
	begin
		grant <= 'd0;	
	//	mask_vector <= all_ones;
		state <= IDLE;
		move <= 1'b1; 
	end
	else
	begin
		case(state)
		IDLE:
		begin
			if(request != 'd0)
			begin
				state <= ARBITRATE;
				grant <= nxt_grant_vector;
			//	mask_vector <= nxt_mask_vector;
				move <= 1'b1; 
			end
			else
			begin
				state <= IDLE;
				grant <= 'd0;
			//	mask_vector <= all_ones;
				move <= 1'b1; 
			end
		end
		ARBITRATE:
		begin
			if(done | (move & temp_grant))
			begin
				move <= 1'b1;
				if(nxt_grant_vector == 'd0)
				begin
					state <= IDLE;
					grant <= 'd0;
				//	mask_vector <= all_ones;
				end
				else
				begin
					state <= ARBITRATE;
					grant <= nxt_grant_vector;
				//	mask_vector <= nxt_mask_vector; 
				end
			end
			else
			begin
				move <= 1'b0;
				state <= ARBITRATE;
				grant <= grant;
			//	mask_vector <= mask_vector;
			end
		end
		endcase
	end
end
endmodule






