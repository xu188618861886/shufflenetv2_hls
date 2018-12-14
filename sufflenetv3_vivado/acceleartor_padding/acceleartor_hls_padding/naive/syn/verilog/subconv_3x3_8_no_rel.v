// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module subconv_3x3_8_no_rel (
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

parameter    ap_ST_fsm_state1 = 25'd1;
parameter    ap_ST_fsm_state2 = 25'd2;
parameter    ap_ST_fsm_state3 = 25'd4;
parameter    ap_ST_fsm_state4 = 25'd8;
parameter    ap_ST_fsm_state5 = 25'd16;
parameter    ap_ST_fsm_state6 = 25'd32;
parameter    ap_ST_fsm_state7 = 25'd64;
parameter    ap_ST_fsm_state8 = 25'd128;
parameter    ap_ST_fsm_state9 = 25'd256;
parameter    ap_ST_fsm_state10 = 25'd512;
parameter    ap_ST_fsm_state11 = 25'd1024;
parameter    ap_ST_fsm_state12 = 25'd2048;
parameter    ap_ST_fsm_state13 = 25'd4096;
parameter    ap_ST_fsm_state14 = 25'd8192;
parameter    ap_ST_fsm_state15 = 25'd16384;
parameter    ap_ST_fsm_state16 = 25'd32768;
parameter    ap_ST_fsm_state17 = 25'd65536;
parameter    ap_ST_fsm_state18 = 25'd131072;
parameter    ap_ST_fsm_state19 = 25'd262144;
parameter    ap_ST_fsm_state20 = 25'd524288;
parameter    ap_ST_fsm_state21 = 25'd1048576;
parameter    ap_ST_fsm_state22 = 25'd2097152;
parameter    ap_ST_fsm_state23 = 25'd4194304;
parameter    ap_ST_fsm_state24 = 25'd8388608;
parameter    ap_ST_fsm_state25 = 25'd16777216;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] input_r_address0;
output   input_r_ce0;
input  [31:0] input_r_q0;
output  [8:0] weight_address0;
output   weight_ce0;
input  [31:0] weight_q0;
output  [5:0] bias_address0;
output   bias_ce0;
input  [31:0] bias_q0;
output  [12:0] output_r_address0;
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

(* fsm_encoding = "none" *) reg   [24:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] co_2_fu_196_p2;
reg   [5:0] co_2_reg_480;
wire    ap_CS_fsm_state2;
wire   [9:0] tmp_25_fu_235_p2;
reg   [9:0] tmp_25_reg_485;
wire   [0:0] exitcond4_fu_190_p2;
wire  signed [9:0] tmp_37_cast_fu_259_p1;
reg  signed [9:0] tmp_37_cast_reg_491;
reg   [5:0] bias_addr_reg_496;
wire   [13:0] tmp_29_fu_302_p2;
reg   [13:0] tmp_29_reg_504;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond3_fu_263_p2;
wire   [3:0] h_2_fu_314_p2;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond2_fu_308_p2;
wire   [1:0] m_2_fu_326_p2;
reg   [1:0] m_2_reg_520;
wire    ap_CS_fsm_state5;
wire   [9:0] tmp_31_fu_336_p2;
reg   [9:0] tmp_31_reg_525;
wire   [0:0] exitcond1_fu_320_p2;
wire   [9:0] tmp_33_fu_361_p2;
reg   [9:0] tmp_33_reg_531;
wire   [9:0] tmp_32_fu_371_p2;
reg   [9:0] tmp_32_reg_537;
wire    ap_CS_fsm_state6;
wire   [13:0] tmp_36_fu_398_p2;
reg   [13:0] tmp_36_reg_542;
wire   [1:0] n_2_fu_410_p2;
reg   [1:0] n_2_reg_550;
wire    ap_CS_fsm_state7;
wire   [9:0] tmp_37_fu_420_p2;
reg   [9:0] tmp_37_reg_555;
wire   [0:0] exitcond_fu_404_p2;
wire   [13:0] tmp_38_fu_445_p2;
reg   [13:0] tmp_38_reg_560;
wire    ap_CS_fsm_state8;
reg   [31:0] weight_load_reg_575;
wire    ap_CS_fsm_state9;
reg   [31:0] input_load_reg_580;
wire   [31:0] grp_fu_186_p2;
reg   [31:0] tmp_18_reg_585;
wire    ap_CS_fsm_state13;
wire   [31:0] grp_fu_180_p2;
wire    ap_CS_fsm_state18;
reg   [31:0] bias_load_reg_595;
wire    ap_CS_fsm_state19;
wire   [13:0] tmp_30_fu_462_p2;
reg   [13:0] tmp_30_reg_600;
wire    ap_CS_fsm_state20;
wire   [3:0] w_2_fu_467_p2;
reg   [3:0] w_2_reg_605;
reg   [31:0] result_reg_610;
wire    ap_CS_fsm_state24;
reg   [5:0] co_reg_99;
reg   [3:0] h_reg_110;
reg   [3:0] w_reg_122;
wire    ap_CS_fsm_state25;
reg   [31:0] sum_reg_134;
reg   [1:0] m_reg_146;
reg   [31:0] sum_1_reg_157;
reg   [1:0] n_reg_169;
wire   [63:0] tmp_fu_202_p1;
wire   [63:0] tmp_50_cast_fu_450_p1;
wire   [63:0] tmp_51_cast_fu_454_p1;
wire   [63:0] tmp_42_cast_fu_473_p1;
reg   [31:0] grp_fu_180_p0;
reg   [31:0] grp_fu_180_p1;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state10;
wire   [8:0] tmp_s_fu_211_p3;
wire   [6:0] tmp_24_fu_223_p3;
wire   [9:0] p_shl2_cast_fu_231_p1;
wire   [9:0] p_shl1_cast_fu_219_p1;
wire   [7:0] tmp_26_fu_241_p3;
wire   [8:0] p_shl_cast_fu_249_p1;
wire   [8:0] tmp_cast_fu_207_p1;
wire   [8:0] tmp_27_fu_253_p2;
wire   [9:0] tmp_cast_17_fu_269_p1;
wire   [9:0] tmp_28_fu_273_p2;
wire   [12:0] tmp_21_fu_278_p3;
wire   [10:0] tmp_22_fu_290_p3;
wire   [13:0] p_shl3_cast_fu_286_p1;
wire   [13:0] p_shl4_cast_fu_298_p1;
wire   [9:0] tmp_12_cast_fu_332_p1;
wire   [1:0] tmp1_fu_341_p2;
wire  signed [3:0] tmp1_cast_fu_347_p1;
wire   [3:0] tmp_13_fu_351_p2;
wire   [9:0] tmp_14_cast_fu_357_p1;
wire   [9:0] tmp_23_fu_366_p2;
wire   [12:0] tmp_34_fu_376_p3;
wire   [10:0] tmp_35_fu_387_p3;
wire   [13:0] p_shl6_cast_fu_394_p1;
wire   [13:0] p_shl5_cast_fu_383_p1;
wire   [9:0] tmp_15_cast_fu_416_p1;
wire   [1:0] tmp2_fu_425_p2;
wire  signed [3:0] tmp2_cast_fu_431_p1;
wire   [3:0] tmp_16_fu_435_p2;
wire   [13:0] tmp_17_cast_fu_441_p1;
wire   [13:0] tmp_11_cast_fu_458_p1;
reg   [24:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 25'd1;
end

ShuffleNetV2_faddbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_faddbkb_x_U65(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_180_p0),
    .din1(grp_fu_180_p1),
    .ce(1'b1),
    .dout(grp_fu_180_p2)
);

ShuffleNetV2_fmulcud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_fmulcud_x_U66(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_load_reg_575),
    .din1(input_load_reg_580),
    .ce(1'b1),
    .dout(grp_fu_186_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond3_fu_263_p2 == 1'd1))) begin
        co_reg_99 <= co_2_reg_480;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_99 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_190_p2 == 1'd0))) begin
        h_reg_110 <= 4'd1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond2_fu_308_p2 == 1'd1))) begin
        h_reg_110 <= h_2_fu_314_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond2_fu_308_p2))) begin
        m_reg_146 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond_fu_404_p2))) begin
        m_reg_146 <= m_2_reg_520;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        n_reg_169 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        n_reg_169 <= n_2_reg_550;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_1_reg_157 <= sum_reg_134;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        sum_1_reg_157 <= grp_fu_180_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond2_fu_308_p2))) begin
        sum_reg_134 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond_fu_404_p2))) begin
        sum_reg_134 <= sum_1_reg_157;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond3_fu_263_p2))) begin
        w_reg_122 <= 4'd1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        w_reg_122 <= w_2_reg_605;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_190_p2 == 1'd0))) begin
        bias_addr_reg_496 <= tmp_fu_202_p1;
        tmp_25_reg_485[9 : 1] <= tmp_25_fu_235_p2[9 : 1];
        tmp_37_cast_reg_491 <= tmp_37_cast_fu_259_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        bias_load_reg_595 <= bias_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_2_reg_480 <= co_2_fu_196_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        input_load_reg_580 <= input_r_q0;
        weight_load_reg_575 <= weight_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_2_reg_520 <= m_2_fu_326_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        n_2_reg_550 <= n_2_fu_410_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        result_reg_610 <= grp_fu_180_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp_18_reg_585 <= grp_fu_186_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond3_fu_263_p2))) begin
        tmp_29_reg_504[13 : 1] <= tmp_29_fu_302_p2[13 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        tmp_30_reg_600 <= tmp_30_fu_462_p2;
        w_2_reg_605 <= w_2_fu_467_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond1_fu_320_p2))) begin
        tmp_31_reg_525 <= tmp_31_fu_336_p2;
        tmp_33_reg_531 <= tmp_33_fu_361_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_32_reg_537 <= tmp_32_fu_371_p2;
        tmp_36_reg_542[13 : 1] <= tmp_36_fu_398_p2[13 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (1'd0 == exitcond_fu_404_p2))) begin
        tmp_37_reg_555 <= tmp_37_fu_420_p2;
        tmp_38_reg_560 <= tmp_38_fu_445_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_190_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_190_p2 == 1'd1))) begin
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
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_180_p0 = sum_reg_134;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_180_p0 = sum_1_reg_157;
    end else begin
        grp_fu_180_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_180_p1 = bias_load_reg_595;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_180_p1 = tmp_18_reg_585;
    end else begin
        grp_fu_180_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_190_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond3_fu_263_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond2_fu_308_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == exitcond1_fu_320_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond_fu_404_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
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
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
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
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign bias_address0 = bias_addr_reg_496;

assign co_2_fu_196_p2 = (co_reg_99 + 6'd1);

assign exitcond1_fu_320_p2 = ((m_reg_146 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond2_fu_308_p2 = ((w_reg_122 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond3_fu_263_p2 = ((h_reg_110 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond4_fu_190_p2 = ((co_reg_99 == 6'd48) ? 1'b1 : 1'b0);

assign exitcond_fu_404_p2 = ((n_reg_169 == 2'd3) ? 1'b1 : 1'b0);

assign h_2_fu_314_p2 = (h_reg_110 + 4'd1);

assign input_r_address0 = tmp_51_cast_fu_454_p1;

assign m_2_fu_326_p2 = (m_reg_146 + 2'd1);

assign n_2_fu_410_p2 = (n_reg_169 + 2'd1);

assign output_r_address0 = tmp_42_cast_fu_473_p1;

assign output_r_d0 = result_reg_610;

assign p_shl1_cast_fu_219_p1 = tmp_s_fu_211_p3;

assign p_shl2_cast_fu_231_p1 = tmp_24_fu_223_p3;

assign p_shl3_cast_fu_286_p1 = tmp_21_fu_278_p3;

assign p_shl4_cast_fu_298_p1 = tmp_22_fu_290_p3;

assign p_shl5_cast_fu_383_p1 = tmp_34_fu_376_p3;

assign p_shl6_cast_fu_394_p1 = tmp_35_fu_387_p3;

assign p_shl_cast_fu_249_p1 = tmp_26_fu_241_p3;

assign tmp1_cast_fu_347_p1 = $signed(tmp1_fu_341_p2);

assign tmp1_fu_341_p2 = ($signed(2'd3) + $signed(m_reg_146));

assign tmp2_cast_fu_431_p1 = $signed(tmp2_fu_425_p2);

assign tmp2_fu_425_p2 = ($signed(n_reg_169) + $signed(2'd3));

assign tmp_11_cast_fu_458_p1 = w_reg_122;

assign tmp_12_cast_fu_332_p1 = m_reg_146;

assign tmp_13_fu_351_p2 = ($signed(h_reg_110) + $signed(tmp1_cast_fu_347_p1));

assign tmp_14_cast_fu_357_p1 = tmp_13_fu_351_p2;

assign tmp_15_cast_fu_416_p1 = n_reg_169;

assign tmp_16_fu_435_p2 = ($signed(w_reg_122) + $signed(tmp2_cast_fu_431_p1));

assign tmp_17_cast_fu_441_p1 = tmp_16_fu_435_p2;

assign tmp_21_fu_278_p3 = {{tmp_28_fu_273_p2}, {3'd0}};

assign tmp_22_fu_290_p3 = {{tmp_28_fu_273_p2}, {1'd0}};

assign tmp_23_fu_366_p2 = tmp_31_reg_525 << 10'd2;

assign tmp_24_fu_223_p3 = {{co_reg_99}, {1'd0}};

assign tmp_25_fu_235_p2 = (p_shl2_cast_fu_231_p1 + p_shl1_cast_fu_219_p1);

assign tmp_26_fu_241_p3 = {{co_reg_99}, {2'd0}};

assign tmp_27_fu_253_p2 = (p_shl_cast_fu_249_p1 - tmp_cast_fu_207_p1);

assign tmp_28_fu_273_p2 = (tmp_cast_17_fu_269_p1 + tmp_25_reg_485);

assign tmp_29_fu_302_p2 = (p_shl3_cast_fu_286_p1 + p_shl4_cast_fu_298_p1);

assign tmp_30_fu_462_p2 = (tmp_29_reg_504 + tmp_11_cast_fu_458_p1);

assign tmp_31_fu_336_p2 = ($signed(tmp_37_cast_reg_491) + $signed(tmp_12_cast_fu_332_p1));

assign tmp_32_fu_371_p2 = (tmp_23_fu_366_p2 - tmp_31_reg_525);

assign tmp_33_fu_361_p2 = (tmp_25_reg_485 + tmp_14_cast_fu_357_p1);

assign tmp_34_fu_376_p3 = {{tmp_33_reg_531}, {3'd0}};

assign tmp_35_fu_387_p3 = {{tmp_33_reg_531}, {1'd0}};

assign tmp_36_fu_398_p2 = (p_shl6_cast_fu_394_p1 + p_shl5_cast_fu_383_p1);

assign tmp_37_cast_fu_259_p1 = $signed(tmp_27_fu_253_p2);

assign tmp_37_fu_420_p2 = (tmp_32_reg_537 + tmp_15_cast_fu_416_p1);

assign tmp_38_fu_445_p2 = (tmp_36_reg_542 + tmp_17_cast_fu_441_p1);

assign tmp_42_cast_fu_473_p1 = tmp_30_reg_600;

assign tmp_50_cast_fu_450_p1 = tmp_37_reg_555;

assign tmp_51_cast_fu_454_p1 = tmp_38_reg_560;

assign tmp_cast_17_fu_269_p1 = h_reg_110;

assign tmp_cast_fu_207_p1 = co_reg_99;

assign tmp_fu_202_p1 = co_reg_99;

assign tmp_s_fu_211_p3 = {{co_reg_99}, {3'd0}};

assign w_2_fu_467_p2 = (w_reg_122 + 4'd1);

assign weight_address0 = tmp_50_cast_fu_450_p1;

always @ (posedge ap_clk) begin
    tmp_25_reg_485[0] <= 1'b0;
    tmp_29_reg_504[0] <= 1'b0;
    tmp_36_reg_542[0] <= 1'b0;
end

endmodule //subconv_3x3_8_no_rel
