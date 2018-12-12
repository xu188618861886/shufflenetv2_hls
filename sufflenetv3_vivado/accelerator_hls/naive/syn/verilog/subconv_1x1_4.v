// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module subconv_1x1_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        weight_address0,
        weight_ce0,
        weight_q0,
        bias_address0,
        bias_ce0,
        bias_q0,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

parameter    ap_ST_fsm_state1 = 23'd1;
parameter    ap_ST_fsm_state2 = 23'd2;
parameter    ap_ST_fsm_state3 = 23'd4;
parameter    ap_ST_fsm_state4 = 23'd8;
parameter    ap_ST_fsm_state5 = 23'd16;
parameter    ap_ST_fsm_state6 = 23'd32;
parameter    ap_ST_fsm_state7 = 23'd64;
parameter    ap_ST_fsm_state8 = 23'd128;
parameter    ap_ST_fsm_state9 = 23'd256;
parameter    ap_ST_fsm_state10 = 23'd512;
parameter    ap_ST_fsm_state11 = 23'd1024;
parameter    ap_ST_fsm_state12 = 23'd2048;
parameter    ap_ST_fsm_state13 = 23'd4096;
parameter    ap_ST_fsm_state14 = 23'd8192;
parameter    ap_ST_fsm_state15 = 23'd16384;
parameter    ap_ST_fsm_state16 = 23'd32768;
parameter    ap_ST_fsm_state17 = 23'd65536;
parameter    ap_ST_fsm_state18 = 23'd131072;
parameter    ap_ST_fsm_state19 = 23'd262144;
parameter    ap_ST_fsm_state20 = 23'd524288;
parameter    ap_ST_fsm_state21 = 23'd1048576;
parameter    ap_ST_fsm_state22 = 23'd2097152;
parameter    ap_ST_fsm_state23 = 23'd4194304;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] input_r_address0;
output   input_r_ce0;
input  [31:0] input_r_q0;
output  [13:0] weight_address0;
output   weight_ce0;
input  [31:0] weight_q0;
output  [6:0] bias_address0;
output   bias_ce0;
input  [31:0] bias_q0;
output  [10:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [31:0] output_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;
reg weight_ce0;
reg bias_ce0;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] co_9_fu_174_p2;
reg   [6:0] co_9_reg_394;
wire    ap_CS_fsm_state2;
wire   [14:0] tmp_108_fu_209_p2;
reg   [14:0] tmp_108_reg_399;
wire   [0:0] exitcond3_fu_168_p2;
wire   [9:0] tmp_158_cast_fu_223_p1;
reg   [9:0] tmp_158_cast_reg_404;
reg   [6:0] bias_addr_reg_409;
wire   [2:0] h_9_fu_233_p2;
reg   [2:0] h_9_reg_417;
wire    ap_CS_fsm_state3;
wire   [9:0] tmp_cast_fu_239_p1;
reg   [9:0] tmp_cast_reg_422;
wire   [0:0] exitcond2_fu_227_p2;
wire   [11:0] tmp_161_cast_fu_248_p3;
reg   [11:0] tmp_161_cast_reg_427;
wire   [2:0] w_9_fu_262_p2;
reg   [2:0] w_9_reg_435;
wire    ap_CS_fsm_state4;
wire   [11:0] tmp_85_cast_fu_268_p1;
reg   [11:0] tmp_85_cast_reg_440;
wire   [0:0] exitcond1_fu_256_p2;
reg   [10:0] output_addr_reg_445;
wire   [6:0] ci_3_fu_288_p2;
reg   [6:0] ci_3_reg_453;
wire    ap_CS_fsm_state5;
wire   [0:0] exitcond_fu_282_p2;
reg   [31:0] weight_load_reg_468;
wire    ap_CS_fsm_state6;
reg   [31:0] input_load_reg_473;
wire   [31:0] grp_fu_159_p2;
reg   [31:0] tmp_87_reg_478;
wire    ap_CS_fsm_state10;
wire   [31:0] grp_fu_154_p2;
wire    ap_CS_fsm_state15;
reg   [31:0] bias_load_reg_488;
wire    ap_CS_fsm_state16;
reg   [31:0] result_reg_493;
wire    ap_CS_fsm_state21;
wire   [0:0] tmp_14_fu_163_p2;
reg   [0:0] tmp_14_reg_500;
wire    ap_CS_fsm_state22;
reg   [6:0] co_reg_98;
reg   [2:0] h_reg_109;
reg   [2:0] w_reg_120;
wire    ap_CS_fsm_state23;
reg   [31:0] sum_reg_131;
reg   [6:0] ci_reg_143;
wire   [63:0] tmp_fu_180_p1;
wire   [63:0] tmp_162_cast_fu_277_p1;
wire   [63:0] tmp_168_cast_fu_328_p1;
wire  signed [63:0] tmp_169_cast_fu_338_p1;
reg   [31:0] grp_fu_154_p1;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state7;
wire   [13:0] tmp_s_fu_185_p3;
wire   [11:0] tmp_107_fu_197_p3;
wire   [14:0] p_shl_cast_fu_193_p1;
wire   [14:0] p_shl1_cast_fu_205_p1;
wire   [8:0] tmp_109_fu_215_p3;
wire   [9:0] tmp_110_fu_243_p2;
wire   [11:0] tmp_111_fu_272_p2;
wire   [8:0] tmp_112_fu_298_p3;
wire   [9:0] tmp_164_cast_fu_306_p1;
wire   [9:0] tmp_113_fu_310_p2;
wire   [11:0] tmp_167_cast_fu_315_p3;
wire   [11:0] tmp_114_fu_323_p2;
wire   [14:0] tmp_86_cast_fu_294_p1;
wire   [14:0] tmp_115_fu_333_p2;
wire   [31:0] result_to_int_fu_343_p1;
wire   [7:0] tmp_11_fu_346_p4;
wire   [22:0] tmp_90_fu_356_p1;
wire   [0:0] notrhs_fu_366_p2;
wire   [0:0] notlhs_fu_360_p2;
wire   [0:0] tmp_13_fu_372_p2;
wire   [0:0] tmp_15_fu_378_p2;
reg   [22:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 23'd1;
end

ShuffleNetV2_faddbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_faddbkb_x_U87(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sum_reg_131),
    .din1(grp_fu_154_p1),
    .ce(1'b1),
    .dout(grp_fu_154_p2)
);

ShuffleNetV2_fmulcud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_fmulcud_x_U88(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_load_reg_468),
    .din1(input_load_reg_473),
    .ce(1'b1),
    .dout(grp_fu_159_p2)
);

ShuffleNetV2_fcmpdEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
ShuffleNetV2_fcmpdEe_x_U89(
    .din0(result_reg_493),
    .din1(32'd0),
    .opcode(5'd2),
    .dout(tmp_14_fu_163_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond1_fu_256_p2))) begin
        ci_reg_143 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        ci_reg_143 <= ci_3_reg_453;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_227_p2 == 1'd1))) begin
        co_reg_98 <= co_9_reg_394;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_98 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond1_fu_256_p2 == 1'd1))) begin
        h_reg_109 <= h_9_reg_417;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_168_p2 == 1'd0))) begin
        h_reg_109 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond1_fu_256_p2))) begin
        sum_reg_131 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        sum_reg_131 <= grp_fu_154_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond2_fu_227_p2))) begin
        w_reg_120 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        w_reg_120 <= w_9_reg_435;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_168_p2 == 1'd0))) begin
        bias_addr_reg_409 <= tmp_fu_180_p1;
        tmp_108_reg_399[14 : 5] <= tmp_108_fu_209_p2[14 : 5];
        tmp_158_cast_reg_404[8 : 2] <= tmp_158_cast_fu_223_p1[8 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bias_load_reg_488 <= bias_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ci_3_reg_453 <= ci_3_fu_288_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_9_reg_394 <= co_9_fu_174_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        h_9_reg_417 <= h_9_fu_233_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_load_reg_473 <= input_r_q0;
        weight_load_reg_468 <= weight_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond1_fu_256_p2))) begin
        output_addr_reg_445 <= tmp_162_cast_fu_277_p1;
        tmp_85_cast_reg_440[2 : 0] <= tmp_85_cast_fu_268_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        result_reg_493 <= grp_fu_154_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        tmp_14_reg_500 <= tmp_14_fu_163_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond2_fu_227_p2))) begin
        tmp_161_cast_reg_427[11 : 2] <= tmp_161_cast_fu_248_p3[11 : 2];
        tmp_cast_reg_422[2 : 0] <= tmp_cast_fu_239_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp_87_reg_478 <= grp_fu_159_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        w_9_reg_435 <= w_9_fu_262_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_168_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_168_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        bias_ce0 = 1'b1;
    end else begin
        bias_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_154_p1 = bias_load_reg_488;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_154_p1 = tmp_87_reg_478;
    end else begin
        grp_fu_154_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        weight_ce0 = 1'b1;
    end else begin
        weight_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_168_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_227_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond1_fu_256_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (exitcond_fu_282_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign bias_address0 = bias_addr_reg_409;

assign ci_3_fu_288_p2 = (ci_reg_143 + 7'd1);

assign co_9_fu_174_p2 = (co_reg_98 + 7'd1);

assign exitcond1_fu_256_p2 = ((w_reg_120 == 3'd4) ? 1'b1 : 1'b0);

assign exitcond2_fu_227_p2 = ((h_reg_109 == 3'd4) ? 1'b1 : 1'b0);

assign exitcond3_fu_168_p2 = ((co_reg_98 == 7'd96) ? 1'b1 : 1'b0);

assign exitcond_fu_282_p2 = ((ci_reg_143 == 7'd96) ? 1'b1 : 1'b0);

assign h_9_fu_233_p2 = (h_reg_109 + 3'd1);

assign input_r_address0 = tmp_168_cast_fu_328_p1;

assign notlhs_fu_360_p2 = ((tmp_11_fu_346_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notrhs_fu_366_p2 = ((tmp_90_fu_356_p1 == 23'd0) ? 1'b1 : 1'b0);

assign output_r_address0 = output_addr_reg_445;

assign output_r_d0 = ((tmp_15_fu_378_p2[0:0] === 1'b1) ? result_reg_493 : 32'd0);

assign p_shl1_cast_fu_205_p1 = tmp_107_fu_197_p3;

assign p_shl_cast_fu_193_p1 = tmp_s_fu_185_p3;

assign result_to_int_fu_343_p1 = result_reg_493;

assign tmp_107_fu_197_p3 = {{co_reg_98}, {5'd0}};

assign tmp_108_fu_209_p2 = (p_shl_cast_fu_193_p1 - p_shl1_cast_fu_205_p1);

assign tmp_109_fu_215_p3 = {{co_reg_98}, {2'd0}};

assign tmp_110_fu_243_p2 = (tmp_cast_fu_239_p1 + tmp_158_cast_reg_404);

assign tmp_111_fu_272_p2 = (tmp_161_cast_reg_427 + tmp_85_cast_fu_268_p1);

assign tmp_112_fu_298_p3 = {{ci_reg_143}, {2'd0}};

assign tmp_113_fu_310_p2 = (tmp_cast_reg_422 + tmp_164_cast_fu_306_p1);

assign tmp_114_fu_323_p2 = (tmp_85_cast_reg_440 + tmp_167_cast_fu_315_p3);

assign tmp_115_fu_333_p2 = (tmp_86_cast_fu_294_p1 + tmp_108_reg_399);

assign tmp_11_fu_346_p4 = {{result_to_int_fu_343_p1[30:23]}};

assign tmp_13_fu_372_p2 = (notrhs_fu_366_p2 | notlhs_fu_360_p2);

assign tmp_158_cast_fu_223_p1 = tmp_109_fu_215_p3;

assign tmp_15_fu_378_p2 = (tmp_13_fu_372_p2 & tmp_14_reg_500);

assign tmp_161_cast_fu_248_p3 = {{tmp_110_fu_243_p2}, {2'd0}};

assign tmp_162_cast_fu_277_p1 = tmp_111_fu_272_p2;

assign tmp_164_cast_fu_306_p1 = tmp_112_fu_298_p3;

assign tmp_167_cast_fu_315_p3 = {{tmp_113_fu_310_p2}, {2'd0}};

assign tmp_168_cast_fu_328_p1 = tmp_114_fu_323_p2;

assign tmp_169_cast_fu_338_p1 = $signed(tmp_115_fu_333_p2);

assign tmp_85_cast_fu_268_p1 = w_reg_120;

assign tmp_86_cast_fu_294_p1 = ci_reg_143;

assign tmp_90_fu_356_p1 = result_to_int_fu_343_p1[22:0];

assign tmp_cast_fu_239_p1 = h_reg_109;

assign tmp_fu_180_p1 = co_reg_98;

assign tmp_s_fu_185_p3 = {{co_reg_98}, {7'd0}};

assign w_9_fu_262_p2 = (w_reg_120 + 3'd1);

assign weight_address0 = tmp_169_cast_fu_338_p1;

always @ (posedge ap_clk) begin
    tmp_108_reg_399[4:0] <= 5'b00000;
    tmp_158_cast_reg_404[1:0] <= 2'b00;
    tmp_158_cast_reg_404[9] <= 1'b0;
    tmp_cast_reg_422[9:3] <= 7'b0000000;
    tmp_161_cast_reg_427[1:0] <= 2'b00;
    tmp_85_cast_reg_440[11:3] <= 9'b000000000;
end

endmodule //subconv_1x1_4