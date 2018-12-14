// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module subconv_1x1_32_p (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        weight_address0,
        weight_ce0,
        weight_q0,
        bias_address0,
        bias_ce0,
        bias_q0,
        conv1_output_p_address0,
        conv1_output_p_ce0,
        conv1_output_p_q0,
        ShuffleConvs_0_Downs_address0,
        ShuffleConvs_0_Downs_ce0,
        ShuffleConvs_0_Downs_we0,
        ShuffleConvs_0_Downs_d0
);

parameter    ap_ST_fsm_state1 = 24'd1;
parameter    ap_ST_fsm_state2 = 24'd2;
parameter    ap_ST_fsm_state3 = 24'd4;
parameter    ap_ST_fsm_state4 = 24'd8;
parameter    ap_ST_fsm_state5 = 24'd16;
parameter    ap_ST_fsm_state6 = 24'd32;
parameter    ap_ST_fsm_state7 = 24'd64;
parameter    ap_ST_fsm_state8 = 24'd128;
parameter    ap_ST_fsm_state9 = 24'd256;
parameter    ap_ST_fsm_state10 = 24'd512;
parameter    ap_ST_fsm_state11 = 24'd1024;
parameter    ap_ST_fsm_state12 = 24'd2048;
parameter    ap_ST_fsm_state13 = 24'd4096;
parameter    ap_ST_fsm_state14 = 24'd8192;
parameter    ap_ST_fsm_state15 = 24'd16384;
parameter    ap_ST_fsm_state16 = 24'd32768;
parameter    ap_ST_fsm_state17 = 24'd65536;
parameter    ap_ST_fsm_state18 = 24'd131072;
parameter    ap_ST_fsm_state19 = 24'd262144;
parameter    ap_ST_fsm_state20 = 24'd524288;
parameter    ap_ST_fsm_state21 = 24'd1048576;
parameter    ap_ST_fsm_state22 = 24'd2097152;
parameter    ap_ST_fsm_state23 = 24'd4194304;
parameter    ap_ST_fsm_state24 = 24'd8388608;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] weight_address0;
output   weight_ce0;
input  [31:0] weight_q0;
output  [4:0] bias_address0;
output   bias_ce0;
input  [31:0] bias_q0;
output  [14:0] conv1_output_p_address0;
output   conv1_output_p_ce0;
input  [31:0] conv1_output_p_q0;
output  [14:0] ShuffleConvs_0_Downs_address0;
output   ShuffleConvs_0_Downs_ce0;
output   ShuffleConvs_0_Downs_we0;
output  [31:0] ShuffleConvs_0_Downs_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg weight_ce0;
reg bias_ce0;
reg conv1_output_p_ce0;
reg ShuffleConvs_0_Downs_ce0;
reg ShuffleConvs_0_Downs_we0;

(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] co_10_fu_176_p2;
reg   [4:0] co_10_reg_454;
wire    ap_CS_fsm_state2;
wire   [10:0] tmp_143_fu_211_p2;
reg   [10:0] tmp_143_reg_459;
wire   [0:0] exitcond3_fu_170_p2;
wire   [10:0] tmp_145_fu_229_p2;
reg   [10:0] tmp_145_reg_464;
reg   [4:0] bias_addr_reg_469;
wire   [10:0] tmp_cast_fu_241_p1;
reg   [10:0] tmp_cast_reg_477;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond2_fu_235_p2;
wire   [15:0] tmp_147_fu_270_p2;
reg   [15:0] tmp_147_reg_482;
wire   [15:0] tmp_64_cast_fu_282_p1;
reg   [15:0] tmp_64_cast_reg_490;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond1_fu_276_p2;
reg   [14:0] ShuffleConvs_0_Downs_reg_495;
wire   [5:0] h_10_fu_296_p2;
wire   [4:0] ci_4_fu_308_p2;
reg   [4:0] ci_4_reg_508;
wire    ap_CS_fsm_state5;
wire   [10:0] tmp_149_fu_318_p2;
reg   [10:0] tmp_149_reg_513;
wire   [0:0] exitcond_fu_302_p2;
wire   [15:0] tmp_155_fu_384_p2;
reg   [15:0] tmp_155_reg_518;
wire   [5:0] w_10_fu_389_p2;
reg   [5:0] w_10_reg_523;
wire    ap_CS_fsm_state6;
reg   [31:0] weight_load_reg_538;
wire    ap_CS_fsm_state7;
reg   [31:0] conv1_output_p_load_reg_543;
wire   [31:0] grp_fu_161_p2;
reg   [31:0] tmp_66_reg_548;
wire    ap_CS_fsm_state11;
wire   [31:0] grp_fu_156_p2;
wire    ap_CS_fsm_state16;
reg   [31:0] bias_load_reg_558;
wire    ap_CS_fsm_state17;
reg   [31:0] result_reg_563;
wire    ap_CS_fsm_state22;
wire   [0:0] tmp_19_fu_165_p2;
reg   [0:0] tmp_19_reg_570;
wire    ap_CS_fsm_state23;
reg   [4:0] co_reg_98;
reg   [5:0] h_reg_109;
reg   [5:0] w_reg_121;
wire    ap_CS_fsm_state24;
reg   [31:0] sum_reg_133;
reg   [4:0] ci_reg_145;
wire   [63:0] tmp_fu_182_p1;
wire   [63:0] tmp_204_cast_fu_291_p1;
wire  signed [63:0] tmp_205_cast_fu_395_p1;
wire   [63:0] tmp_213_cast_fu_399_p1;
reg   [31:0] grp_fu_156_p1;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state8;
wire   [9:0] tmp_s_fu_187_p3;
wire   [7:0] tmp_142_fu_199_p3;
wire   [10:0] p_shl2_cast_fu_195_p1;
wire   [10:0] p_shl3_cast_fu_207_p1;
wire   [5:0] tmp_144_fu_217_p3;
wire   [10:0] p_shl1_cast_fu_225_p1;
wire   [10:0] tmp_146_fu_245_p2;
wire   [11:0] tmp_67_fu_258_p3;
wire   [15:0] p_shl4_cast_fu_250_p3;
wire   [15:0] p_shl5_cast_fu_266_p1;
wire   [15:0] tmp_148_fu_286_p2;
wire   [10:0] tmp_65_cast_fu_314_p1;
wire   [9:0] tmp_150_fu_323_p3;
wire   [5:0] tmp_151_fu_335_p3;
wire   [10:0] p_shl8_cast_fu_331_p1;
wire   [10:0] p_shl9_cast_fu_343_p1;
wire   [10:0] tmp_152_fu_347_p2;
wire   [10:0] tmp_153_fu_353_p2;
wire   [11:0] tmp_69_fu_366_p3;
wire   [15:0] p_shl6_cast_fu_358_p3;
wire   [15:0] p_shl7_cast_fu_374_p1;
wire   [15:0] tmp_154_fu_378_p2;
wire   [31:0] result_to_int_fu_403_p1;
wire   [7:0] tmp_16_fu_406_p4;
wire   [22:0] tmp_68_fu_416_p1;
wire   [0:0] notrhs_fu_426_p2;
wire   [0:0] notlhs_fu_420_p2;
wire   [0:0] tmp_18_fu_432_p2;
wire   [0:0] tmp_20_fu_438_p2;
reg   [23:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 24'd1;
end

ShuffleNetV2_faddbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_faddbkb_x_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sum_reg_133),
    .din1(grp_fu_156_p1),
    .ce(1'b1),
    .dout(grp_fu_156_p2)
);

ShuffleNetV2_fmulcud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_fmulcud_x_U9(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_load_reg_538),
    .din1(conv1_output_p_load_reg_543),
    .ce(1'b1),
    .dout(grp_fu_161_p2)
);

ShuffleNetV2_fcmpdEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
ShuffleNetV2_fcmpdEe_x_U10(
    .din0(result_reg_563),
    .din1(32'd0),
    .opcode(5'd2),
    .dout(tmp_19_fu_165_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond1_fu_276_p2))) begin
        ci_reg_145 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        ci_reg_145 <= ci_4_reg_508;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_235_p2 == 1'd1))) begin
        co_reg_98 <= co_10_reg_454;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_98 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_170_p2 == 1'd0))) begin
        h_reg_109 <= 6'd1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond1_fu_276_p2 == 1'd1))) begin
        h_reg_109 <= h_10_fu_296_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond1_fu_276_p2))) begin
        sum_reg_133 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        sum_reg_133 <= grp_fu_156_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond2_fu_235_p2))) begin
        w_reg_121 <= 6'd1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        w_reg_121 <= w_10_reg_523;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond1_fu_276_p2))) begin
        ShuffleConvs_0_Downs_reg_495 <= tmp_204_cast_fu_291_p1;
        tmp_64_cast_reg_490[5 : 0] <= tmp_64_cast_fu_282_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_170_p2 == 1'd0))) begin
        bias_addr_reg_469 <= tmp_fu_182_p1;
        tmp_143_reg_459[10 : 3] <= tmp_143_fu_211_p2[10 : 3];
        tmp_145_reg_464[10 : 1] <= tmp_145_fu_229_p2[10 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        bias_load_reg_558 <= bias_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ci_4_reg_508 <= ci_4_fu_308_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_10_reg_454 <= co_10_fu_176_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        conv1_output_p_load_reg_543 <= conv1_output_p_q0;
        weight_load_reg_538 <= weight_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        result_reg_563 <= grp_fu_156_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond2_fu_235_p2))) begin
        tmp_147_reg_482[15 : 1] <= tmp_147_fu_270_p2[15 : 1];
        tmp_cast_reg_477[5 : 0] <= tmp_cast_fu_241_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond_fu_302_p2))) begin
        tmp_149_reg_513 <= tmp_149_fu_318_p2;
        tmp_155_reg_518 <= tmp_155_fu_384_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        tmp_19_reg_570 <= tmp_19_fu_165_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_66_reg_548 <= grp_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == exitcond_fu_302_p2))) begin
        w_10_reg_523 <= w_10_fu_389_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        ShuffleConvs_0_Downs_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        ShuffleConvs_0_Downs_we0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_170_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_170_p2 == 1'd1))) begin
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv1_output_p_ce0 = 1'b1;
    end else begin
        conv1_output_p_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_156_p1 = bias_load_reg_558;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_156_p1 = tmp_66_reg_548;
    end else begin
        grp_fu_156_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_170_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_235_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond1_fu_276_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == exitcond_fu_302_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
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
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
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
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ShuffleConvs_0_Downs_address0 = ShuffleConvs_0_Downs_reg_495;

assign ShuffleConvs_0_Downs_d0 = ((tmp_20_fu_438_p2[0:0] === 1'b1) ? result_reg_563 : 32'd0);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign bias_address0 = bias_addr_reg_469;

assign ci_4_fu_308_p2 = (ci_reg_145 + 5'd1);

assign co_10_fu_176_p2 = (co_reg_98 + 5'd1);

assign conv1_output_p_address0 = tmp_213_cast_fu_399_p1;

assign exitcond1_fu_276_p2 = ((w_reg_121 == 6'd33) ? 1'b1 : 1'b0);

assign exitcond2_fu_235_p2 = ((h_reg_109 == 6'd33) ? 1'b1 : 1'b0);

assign exitcond3_fu_170_p2 = ((co_reg_98 == 5'd24) ? 1'b1 : 1'b0);

assign exitcond_fu_302_p2 = ((ci_reg_145 == 5'd24) ? 1'b1 : 1'b0);

assign h_10_fu_296_p2 = (h_reg_109 + 6'd1);

assign notlhs_fu_420_p2 = ((tmp_16_fu_406_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notrhs_fu_426_p2 = ((tmp_68_fu_416_p1 == 23'd0) ? 1'b1 : 1'b0);

assign p_shl1_cast_fu_225_p1 = tmp_144_fu_217_p3;

assign p_shl2_cast_fu_195_p1 = tmp_s_fu_187_p3;

assign p_shl3_cast_fu_207_p1 = tmp_142_fu_199_p3;

assign p_shl4_cast_fu_250_p3 = {{tmp_146_fu_245_p2}, {5'd0}};

assign p_shl5_cast_fu_266_p1 = tmp_67_fu_258_p3;

assign p_shl6_cast_fu_358_p3 = {{tmp_153_fu_353_p2}, {5'd0}};

assign p_shl7_cast_fu_374_p1 = tmp_69_fu_366_p3;

assign p_shl8_cast_fu_331_p1 = tmp_150_fu_323_p3;

assign p_shl9_cast_fu_343_p1 = tmp_151_fu_335_p3;

assign result_to_int_fu_403_p1 = result_reg_563;

assign tmp_142_fu_199_p3 = {{co_reg_98}, {3'd0}};

assign tmp_143_fu_211_p2 = (p_shl2_cast_fu_195_p1 - p_shl3_cast_fu_207_p1);

assign tmp_144_fu_217_p3 = {{co_reg_98}, {1'd0}};

assign tmp_145_fu_229_p2 = (p_shl1_cast_fu_225_p1 + p_shl2_cast_fu_195_p1);

assign tmp_146_fu_245_p2 = (tmp_cast_fu_241_p1 + tmp_145_reg_464);

assign tmp_147_fu_270_p2 = (p_shl4_cast_fu_250_p3 + p_shl5_cast_fu_266_p1);

assign tmp_148_fu_286_p2 = (tmp_147_reg_482 + tmp_64_cast_fu_282_p1);

assign tmp_149_fu_318_p2 = (tmp_65_cast_fu_314_p1 + tmp_143_reg_459);

assign tmp_150_fu_323_p3 = {{ci_reg_145}, {5'd0}};

assign tmp_151_fu_335_p3 = {{ci_reg_145}, {1'd0}};

assign tmp_152_fu_347_p2 = (p_shl8_cast_fu_331_p1 + p_shl9_cast_fu_343_p1);

assign tmp_153_fu_353_p2 = (tmp_cast_reg_477 + tmp_152_fu_347_p2);

assign tmp_154_fu_378_p2 = (p_shl6_cast_fu_358_p3 + p_shl7_cast_fu_374_p1);

assign tmp_155_fu_384_p2 = (tmp_64_cast_reg_490 + tmp_154_fu_378_p2);

assign tmp_16_fu_406_p4 = {{result_to_int_fu_403_p1[30:23]}};

assign tmp_18_fu_432_p2 = (notrhs_fu_426_p2 | notlhs_fu_420_p2);

assign tmp_204_cast_fu_291_p1 = tmp_148_fu_286_p2;

assign tmp_205_cast_fu_395_p1 = $signed(tmp_149_reg_513);

assign tmp_20_fu_438_p2 = (tmp_18_fu_432_p2 & tmp_19_reg_570);

assign tmp_213_cast_fu_399_p1 = tmp_155_reg_518;

assign tmp_64_cast_fu_282_p1 = w_reg_121;

assign tmp_65_cast_fu_314_p1 = ci_reg_145;

assign tmp_67_fu_258_p3 = {{tmp_146_fu_245_p2}, {1'd0}};

assign tmp_68_fu_416_p1 = result_to_int_fu_403_p1[22:0];

assign tmp_69_fu_366_p3 = {{tmp_153_fu_353_p2}, {1'd0}};

assign tmp_cast_fu_241_p1 = h_reg_109;

assign tmp_fu_182_p1 = co_reg_98;

assign tmp_s_fu_187_p3 = {{co_reg_98}, {5'd0}};

assign w_10_fu_389_p2 = (6'd1 + w_reg_121);

assign weight_address0 = tmp_205_cast_fu_395_p1;

always @ (posedge ap_clk) begin
    tmp_143_reg_459[2:0] <= 3'b000;
    tmp_145_reg_464[0] <= 1'b0;
    tmp_cast_reg_477[10:6] <= 5'b00000;
    tmp_147_reg_482[0] <= 1'b0;
    tmp_64_cast_reg_490[15:6] <= 10'b0000000000;
end

endmodule //subconv_1x1_32_p