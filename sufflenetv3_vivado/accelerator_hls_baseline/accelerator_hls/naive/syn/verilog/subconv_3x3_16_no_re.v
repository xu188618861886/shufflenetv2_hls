// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module subconv_3x3_16_no_re (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_0_address0,
        input_0_ce0,
        input_0_q0,
        weight_address0,
        weight_ce0,
        weight_q0,
        bias_address0,
        bias_ce0,
        bias_q0,
        output_0_address0,
        output_0_ce0,
        output_0_we0,
        output_0_d0
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
output  [12:0] input_0_address0;
output   input_0_ce0;
input  [31:0] input_0_q0;
output  [7:0] weight_address0;
output   weight_ce0;
input  [31:0] weight_q0;
output  [4:0] bias_address0;
output   bias_ce0;
input  [31:0] bias_q0;
output  [12:0] output_0_address0;
output   output_0_ce0;
output   output_0_we0;
output  [31:0] output_0_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_0_ce0;
reg weight_ce0;
reg bias_ce0;
reg output_0_ce0;
reg output_0_we0;

(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] co_6_fu_196_p2;
reg   [4:0] co_6_reg_521;
wire    ap_CS_fsm_state2;
wire   [9:0] tmp_107_cast2_fu_219_p1;
reg   [9:0] tmp_107_cast2_reg_526;
wire   [0:0] exitcond4_fu_190_p2;
wire   [9:0] tmp_107_cast_fu_223_p1;
reg   [9:0] tmp_107_cast_reg_531;
wire  signed [8:0] tmp_109_cast_fu_245_p1;
reg  signed [8:0] tmp_109_cast_reg_536;
reg   [4:0] bias_addr_reg_541;
wire   [5:0] h_cast_fu_249_p1;
reg   [5:0] h_cast_reg_546;
wire    ap_CS_fsm_state3;
wire   [4:0] h_6_fu_259_p2;
reg   [4:0] h_6_reg_554;
wire   [13:0] tmp_112_cast_fu_274_p3;
reg   [13:0] tmp_112_cast_reg_559;
wire   [0:0] exitcond3_fu_253_p2;
wire   [5:0] w_cast_fu_282_p1;
reg   [5:0] w_cast_reg_564;
wire    ap_CS_fsm_state4;
wire   [4:0] w_6_fu_292_p2;
reg   [4:0] w_6_reg_572;
wire   [4:0] tmp_76_fu_298_p2;
reg   [4:0] tmp_76_reg_577;
wire   [0:0] exitcond2_fu_286_p2;
wire   [1:0] m_6_fu_314_p2;
reg   [1:0] m_6_reg_585;
wire    ap_CS_fsm_state5;
wire   [8:0] tmp_84_fu_335_p2;
reg   [8:0] tmp_84_reg_590;
wire   [0:0] exitcond1_fu_308_p2;
wire   [0:0] tmp_69_fu_351_p2;
reg   [0:0] tmp_69_reg_595;
wire   [13:0] tmp_119_cast_fu_381_p3;
reg   [13:0] tmp_119_cast_reg_600;
wire   [0:0] icmp_fu_399_p2;
reg   [0:0] icmp_reg_605;
wire   [13:0] tmp_82_fu_409_p2;
reg   [13:0] tmp_82_reg_610;
wire   [1:0] n_6_fu_424_p2;
reg   [1:0] n_6_reg_618;
wire    ap_CS_fsm_state6;
wire   [8:0] tmp_86_fu_434_p2;
reg   [8:0] tmp_86_reg_623;
wire   [0:0] exitcond_fu_418_p2;
wire   [0:0] icmp5_fu_464_p2;
reg   [0:0] icmp5_reg_628;
wire   [13:0] tmp_88_fu_474_p2;
reg   [13:0] tmp_88_reg_633;
wire   [0:0] notlhs_fu_479_p2;
reg   [0:0] notlhs_reg_638;
wire    ap_CS_fsm_state7;
reg   [31:0] weight_load_reg_653;
wire    ap_CS_fsm_state8;
wire   [31:0] tmp_77_fu_506_p3;
reg   [31:0] tmp_77_reg_658;
wire   [31:0] grp_fu_186_p2;
reg   [31:0] tmp_78_reg_663;
wire    ap_CS_fsm_state12;
wire   [31:0] grp_fu_180_p2;
wire    ap_CS_fsm_state17;
reg   [31:0] bias_load_reg_673;
wire    ap_CS_fsm_state18;
reg   [31:0] result_reg_678;
wire    ap_CS_fsm_state23;
reg   [4:0] co_reg_99;
reg   [4:0] h_reg_110;
reg   [4:0] w_reg_122;
wire    ap_CS_fsm_state24;
reg   [31:0] sum_reg_134;
reg   [1:0] m_reg_146;
reg   [31:0] sum_1_reg_157;
reg   [1:0] n_reg_169;
wire   [63:0] tmp_fu_202_p1;
wire   [63:0] tmp_120_cast_fu_484_p1;
wire   [63:0] tmp_121_cast_fu_488_p1;
wire   [63:0] tmp_113_cast_fu_514_p1;
reg   [31:0] grp_fu_180_p0;
reg   [31:0] grp_fu_180_p1;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state9;
wire   [8:0] tmp_s_fu_211_p3;
wire   [6:0] tmp_79_fu_227_p3;
wire   [7:0] p_shl_cast_fu_235_p1;
wire   [7:0] tmp_cast_fu_207_p1;
wire   [7:0] tmp_80_fu_239_p2;
wire   [9:0] tmp_cast_41_fu_265_p1;
wire   [9:0] tmp_81_fu_269_p2;
wire   [8:0] tmp_67_cast_fu_320_p1;
wire   [8:0] tmp_83_fu_324_p2;
wire   [8:0] tmp_74_fu_329_p2;
wire   [2:0] m_cast_cast_fu_304_p1;
wire   [2:0] tmp_68_fu_341_p2;
wire  signed [4:0] tmp_68_cast_fu_347_p1;
wire   [1:0] tmp4_fu_357_p2;
wire  signed [5:0] tmp4_cast_fu_363_p1;
wire   [5:0] tmp_70_fu_367_p2;
wire  signed [9:0] tmp_71_cast_fu_372_p1;
wire   [9:0] tmp_85_fu_376_p2;
wire   [1:0] tmp_75_fu_389_p4;
wire   [13:0] tmp_66_cast_fu_405_p1;
wire   [8:0] tmp_72_cast_fu_430_p1;
wire   [1:0] tmp5_fu_439_p2;
wire  signed [5:0] tmp5_cast_fu_445_p1;
wire   [5:0] tmp_73_fu_449_p2;
wire   [1:0] tmp_87_fu_454_p4;
wire  signed [13:0] tmp_75_cast_fu_470_p1;
wire   [4:0] n_cast9_fu_414_p1;
wire   [0:0] tmp7_fu_496_p2;
wire   [0:0] tmp6_fu_492_p2;
wire   [0:0] sel_tmp2_fu_500_p2;
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
ShuffleNetV2_faddbkb_x_U45(
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
ShuffleNetV2_fmulcud_x_U46(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_load_reg_653),
    .din1(tmp_77_reg_658),
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
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond3_fu_253_p2 == 1'd1))) begin
        co_reg_99 <= co_6_reg_521;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_99 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond2_fu_286_p2 == 1'd1))) begin
        h_reg_110 <= h_6_reg_554;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_190_p2 == 1'd0))) begin
        h_reg_110 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_418_p2))) begin
        m_reg_146 <= m_6_reg_585;
    end else if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond2_fu_286_p2))) begin
        m_reg_146 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond1_fu_308_p2))) begin
        n_reg_169 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        n_reg_169 <= n_6_reg_618;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond1_fu_308_p2))) begin
        sum_1_reg_157 <= sum_reg_134;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        sum_1_reg_157 <= grp_fu_180_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_418_p2))) begin
        sum_reg_134 <= sum_1_reg_157;
    end else if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond2_fu_286_p2))) begin
        sum_reg_134 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond3_fu_253_p2))) begin
        w_reg_122 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        w_reg_122 <= w_6_reg_572;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_190_p2 == 1'd0))) begin
        bias_addr_reg_541 <= tmp_fu_202_p1;
        tmp_107_cast2_reg_526[8 : 4] <= tmp_107_cast2_fu_219_p1[8 : 4];
        tmp_107_cast_reg_531[8 : 4] <= tmp_107_cast_fu_223_p1[8 : 4];
        tmp_109_cast_reg_536 <= tmp_109_cast_fu_245_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        bias_load_reg_673 <= bias_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_6_reg_521 <= co_6_fu_196_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        h_6_reg_554 <= h_6_fu_259_p2;
        h_cast_reg_546[4 : 0] <= h_cast_fu_249_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd0 == exitcond_fu_418_p2))) begin
        icmp5_reg_628 <= icmp5_fu_464_p2;
        notlhs_reg_638 <= notlhs_fu_479_p2;
        tmp_86_reg_623 <= tmp_86_fu_434_p2;
        tmp_88_reg_633 <= tmp_88_fu_474_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond1_fu_308_p2))) begin
        icmp_reg_605 <= icmp_fu_399_p2;
        tmp_119_cast_reg_600[13 : 4] <= tmp_119_cast_fu_381_p3[13 : 4];
        tmp_69_reg_595 <= tmp_69_fu_351_p2;
        tmp_84_reg_590 <= tmp_84_fu_335_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_6_reg_585 <= m_6_fu_314_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        n_6_reg_618 <= n_6_fu_424_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        result_reg_678 <= grp_fu_180_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond3_fu_253_p2))) begin
        tmp_112_cast_reg_559[13 : 4] <= tmp_112_cast_fu_274_p3[13 : 4];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond2_fu_286_p2))) begin
        tmp_76_reg_577 <= tmp_76_fu_298_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_77_reg_658 <= tmp_77_fu_506_p3;
        weight_load_reg_653 <= weight_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp_78_reg_663 <= grp_fu_186_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (exitcond1_fu_308_p2 == 1'd1))) begin
        tmp_82_reg_610 <= tmp_82_fu_409_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        w_6_reg_572 <= w_6_fu_292_p2;
        w_cast_reg_564[4 : 0] <= w_cast_fu_282_p1[4 : 0];
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
    if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_180_p0 = sum_reg_134;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_180_p0 = sum_1_reg_157;
    end else begin
        grp_fu_180_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_180_p1 = bias_load_reg_673;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_180_p1 = tmp_78_reg_663;
    end else begin
        grp_fu_180_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        input_0_ce0 = 1'b1;
    end else begin
        input_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        output_0_ce0 = 1'b1;
    end else begin
        output_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        output_0_we0 = 1'b1;
    end else begin
        output_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
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
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond3_fu_253_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond2_fu_286_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond1_fu_308_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_418_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
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
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
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

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign bias_address0 = bias_addr_reg_541;

assign co_6_fu_196_p2 = (co_reg_99 + 5'd1);

assign exitcond1_fu_308_p2 = ((m_reg_146 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond2_fu_286_p2 = ((w_reg_122 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond3_fu_253_p2 = ((h_reg_110 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond4_fu_190_p2 = ((co_reg_99 == 5'd24) ? 1'b1 : 1'b0);

assign exitcond_fu_418_p2 = ((n_reg_169 == 2'd3) ? 1'b1 : 1'b0);

assign h_6_fu_259_p2 = (h_reg_110 + 5'd1);

assign h_cast_fu_249_p1 = h_reg_110;

assign icmp5_fu_464_p2 = ((tmp_87_fu_454_p4 != 2'd1) ? 1'b1 : 1'b0);

assign icmp_fu_399_p2 = ((tmp_75_fu_389_p4 != 2'd1) ? 1'b1 : 1'b0);

assign input_0_address0 = tmp_121_cast_fu_488_p1;

assign m_6_fu_314_p2 = (m_reg_146 + 2'd1);

assign m_cast_cast_fu_304_p1 = m_reg_146;

assign n_6_fu_424_p2 = (n_reg_169 + 2'd1);

assign n_cast9_fu_414_p1 = n_reg_169;

assign notlhs_fu_479_p2 = ((n_cast9_fu_414_p1 != tmp_76_reg_577) ? 1'b1 : 1'b0);

assign output_0_address0 = tmp_113_cast_fu_514_p1;

assign output_0_d0 = result_reg_678;

assign p_shl_cast_fu_235_p1 = tmp_79_fu_227_p3;

assign sel_tmp2_fu_500_p2 = (tmp7_fu_496_p2 & tmp6_fu_492_p2);

assign tmp4_cast_fu_363_p1 = $signed(tmp4_fu_357_p2);

assign tmp4_fu_357_p2 = ($signed(2'd3) + $signed(m_reg_146));

assign tmp5_cast_fu_445_p1 = $signed(tmp5_fu_439_p2);

assign tmp5_fu_439_p2 = ($signed(n_reg_169) + $signed(2'd3));

assign tmp6_fu_492_p2 = (icmp_reg_605 & notlhs_reg_638);

assign tmp7_fu_496_p2 = (tmp_69_reg_595 & icmp5_reg_628);

assign tmp_107_cast2_fu_219_p1 = tmp_s_fu_211_p3;

assign tmp_107_cast_fu_223_p1 = tmp_s_fu_211_p3;

assign tmp_109_cast_fu_245_p1 = $signed(tmp_80_fu_239_p2);

assign tmp_112_cast_fu_274_p3 = {{tmp_81_fu_269_p2}, {4'd0}};

assign tmp_113_cast_fu_514_p1 = tmp_82_reg_610;

assign tmp_119_cast_fu_381_p3 = {{tmp_85_fu_376_p2}, {4'd0}};

assign tmp_120_cast_fu_484_p1 = tmp_86_reg_623;

assign tmp_121_cast_fu_488_p1 = tmp_88_reg_633;

assign tmp_66_cast_fu_405_p1 = w_reg_122;

assign tmp_67_cast_fu_320_p1 = m_reg_146;

assign tmp_68_cast_fu_347_p1 = $signed(tmp_68_fu_341_p2);

assign tmp_68_fu_341_p2 = (3'd0 - m_cast_cast_fu_304_p1);

assign tmp_69_fu_351_p2 = ((h_reg_110 != tmp_68_cast_fu_347_p1) ? 1'b1 : 1'b0);

assign tmp_70_fu_367_p2 = ($signed(tmp4_cast_fu_363_p1) + $signed(h_cast_reg_546));

assign tmp_71_cast_fu_372_p1 = $signed(tmp_70_fu_367_p2);

assign tmp_72_cast_fu_430_p1 = n_reg_169;

assign tmp_73_fu_449_p2 = ($signed(w_cast_reg_564) + $signed(tmp5_cast_fu_445_p1));

assign tmp_74_fu_329_p2 = tmp_83_fu_324_p2 << 9'd2;

assign tmp_75_cast_fu_470_p1 = $signed(tmp_73_fu_449_p2);

assign tmp_75_fu_389_p4 = {{tmp_70_fu_367_p2[5:4]}};

assign tmp_76_fu_298_p2 = (5'd0 - w_reg_122);

assign tmp_77_fu_506_p3 = ((sel_tmp2_fu_500_p2[0:0] === 1'b1) ? input_0_q0 : 32'd0);

assign tmp_79_fu_227_p3 = {{co_reg_99}, {2'd0}};

assign tmp_80_fu_239_p2 = (p_shl_cast_fu_235_p1 - tmp_cast_fu_207_p1);

assign tmp_81_fu_269_p2 = (tmp_cast_41_fu_265_p1 + tmp_107_cast_reg_531);

assign tmp_82_fu_409_p2 = (tmp_112_cast_reg_559 + tmp_66_cast_fu_405_p1);

assign tmp_83_fu_324_p2 = ($signed(tmp_67_cast_fu_320_p1) + $signed(tmp_109_cast_reg_536));

assign tmp_84_fu_335_p2 = (tmp_74_fu_329_p2 - tmp_83_fu_324_p2);

assign tmp_85_fu_376_p2 = ($signed(tmp_71_cast_fu_372_p1) + $signed(tmp_107_cast2_reg_526));

assign tmp_86_fu_434_p2 = (tmp_84_reg_590 + tmp_72_cast_fu_430_p1);

assign tmp_87_fu_454_p4 = {{tmp_73_fu_449_p2[5:4]}};

assign tmp_88_fu_474_p2 = ($signed(tmp_119_cast_reg_600) + $signed(tmp_75_cast_fu_470_p1));

assign tmp_cast_41_fu_265_p1 = h_reg_110;

assign tmp_cast_fu_207_p1 = co_reg_99;

assign tmp_fu_202_p1 = co_reg_99;

assign tmp_s_fu_211_p3 = {{co_reg_99}, {4'd0}};

assign w_6_fu_292_p2 = (w_reg_122 + 5'd1);

assign w_cast_fu_282_p1 = w_reg_122;

assign weight_address0 = tmp_120_cast_fu_484_p1;

always @ (posedge ap_clk) begin
    tmp_107_cast2_reg_526[3:0] <= 4'b0000;
    tmp_107_cast2_reg_526[9] <= 1'b0;
    tmp_107_cast_reg_531[3:0] <= 4'b0000;
    tmp_107_cast_reg_531[9] <= 1'b0;
    h_cast_reg_546[5] <= 1'b0;
    tmp_112_cast_reg_559[3:0] <= 4'b0000;
    w_cast_reg_564[5] <= 1'b0;
    tmp_119_cast_reg_600[3:0] <= 4'b0000;
end

endmodule //subconv_3x3_16_no_re