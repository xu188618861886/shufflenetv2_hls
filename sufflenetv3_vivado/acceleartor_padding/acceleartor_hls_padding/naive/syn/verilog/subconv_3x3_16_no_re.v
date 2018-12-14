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
output  [7:0] weight_address0;
output   weight_ce0;
input  [31:0] weight_q0;
output  [4:0] bias_address0;
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
wire   [4:0] co_6_fu_194_p2;
reg   [4:0] co_6_reg_470;
wire    ap_CS_fsm_state2;
wire   [9:0] tmp_85_fu_233_p2;
reg   [9:0] tmp_85_reg_475;
wire   [0:0] exitcond4_fu_188_p2;
wire  signed [8:0] tmp_119_cast_fu_257_p1;
reg  signed [8:0] tmp_119_cast_reg_481;
reg   [4:0] bias_addr_reg_486;
wire   [13:0] tmp_89_fu_296_p2;
reg   [13:0] tmp_89_reg_494;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond3_fu_261_p2;
wire   [4:0] h_6_fu_308_p2;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond2_fu_302_p2;
wire   [1:0] m_6_fu_320_p2;
reg   [1:0] m_6_reg_510;
wire    ap_CS_fsm_state5;
wire   [8:0] tmp_91_fu_330_p2;
reg   [8:0] tmp_91_reg_515;
wire   [0:0] exitcond1_fu_314_p2;
wire   [9:0] tmp_93_fu_355_p2;
reg   [9:0] tmp_93_reg_521;
wire   [8:0] tmp_92_fu_365_p2;
reg   [8:0] tmp_92_reg_527;
wire    ap_CS_fsm_state6;
wire   [13:0] tmp_94_fu_388_p2;
reg   [13:0] tmp_94_reg_532;
wire   [1:0] n_6_fu_400_p2;
reg   [1:0] n_6_reg_540;
wire    ap_CS_fsm_state7;
wire   [8:0] tmp_95_fu_410_p2;
reg   [8:0] tmp_95_reg_545;
wire   [0:0] exitcond_fu_394_p2;
wire   [13:0] tmp_96_fu_435_p2;
reg   [13:0] tmp_96_reg_550;
wire    ap_CS_fsm_state8;
reg   [31:0] weight_load_reg_565;
wire    ap_CS_fsm_state9;
reg   [31:0] input_load_reg_570;
wire   [31:0] grp_fu_184_p2;
reg   [31:0] tmp_54_reg_575;
wire    ap_CS_fsm_state13;
wire   [31:0] grp_fu_178_p2;
wire    ap_CS_fsm_state18;
reg   [31:0] bias_load_reg_585;
wire    ap_CS_fsm_state19;
wire   [13:0] tmp_90_fu_452_p2;
reg   [13:0] tmp_90_reg_590;
wire    ap_CS_fsm_state20;
wire   [4:0] w_6_fu_457_p2;
reg   [4:0] w_6_reg_595;
reg   [31:0] result_reg_600;
wire    ap_CS_fsm_state24;
reg   [4:0] co_reg_97;
reg   [4:0] h_reg_108;
reg   [4:0] w_reg_120;
wire    ap_CS_fsm_state25;
reg   [31:0] sum_reg_132;
reg   [1:0] m_reg_144;
reg   [31:0] sum_1_reg_155;
reg   [1:0] n_reg_167;
wire   [63:0] tmp_fu_200_p1;
wire   [63:0] tmp_132_cast_fu_440_p1;
wire   [63:0] tmp_133_cast_fu_444_p1;
wire   [63:0] tmp_124_cast_fu_463_p1;
reg   [31:0] grp_fu_178_p0;
reg   [31:0] grp_fu_178_p1;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state10;
wire   [8:0] tmp_s_fu_209_p3;
wire   [5:0] tmp_84_fu_221_p3;
wire   [9:0] p_shl2_cast_fu_229_p1;
wire   [9:0] p_shl1_cast_fu_217_p1;
wire   [6:0] tmp_86_fu_239_p3;
wire   [7:0] p_shl_cast_fu_247_p1;
wire   [7:0] tmp_cast_fu_205_p1;
wire   [7:0] tmp_87_fu_251_p2;
wire   [9:0] tmp_cast_35_fu_267_p1;
wire   [9:0] tmp_88_fu_271_p2;
wire   [10:0] tmp_48_fu_284_p3;
wire   [13:0] p_shl3_cast_fu_276_p3;
wire   [13:0] p_shl4_cast_fu_292_p1;
wire   [8:0] tmp_48_cast_fu_326_p1;
wire   [1:0] tmp1_fu_335_p2;
wire  signed [4:0] tmp1_cast_fu_341_p1;
wire   [4:0] tmp_49_fu_345_p2;
wire   [9:0] tmp_50_cast_fu_351_p1;
wire   [8:0] tmp_50_fu_360_p2;
wire   [10:0] tmp_51_fu_377_p3;
wire   [13:0] p_shl6_cast_fu_384_p1;
wire   [13:0] p_shl5_cast_fu_370_p3;
wire   [8:0] tmp_51_cast_fu_406_p1;
wire   [1:0] tmp2_fu_415_p2;
wire  signed [4:0] tmp2_cast_fu_421_p1;
wire   [4:0] tmp_52_fu_425_p2;
wire   [13:0] tmp_53_cast_fu_431_p1;
wire   [13:0] tmp_47_cast_fu_448_p1;
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
ShuffleNetV2_faddbkb_x_U32(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_178_p0),
    .din1(grp_fu_178_p1),
    .ce(1'b1),
    .dout(grp_fu_178_p2)
);

ShuffleNetV2_fmulcud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_fmulcud_x_U33(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_load_reg_565),
    .din1(input_load_reg_570),
    .ce(1'b1),
    .dout(grp_fu_184_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond3_fu_261_p2 == 1'd1))) begin
        co_reg_97 <= co_6_reg_470;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_97 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_188_p2 == 1'd0))) begin
        h_reg_108 <= 5'd1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond2_fu_302_p2 == 1'd1))) begin
        h_reg_108 <= h_6_fu_308_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond2_fu_302_p2))) begin
        m_reg_144 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond_fu_394_p2))) begin
        m_reg_144 <= m_6_reg_510;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        n_reg_167 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        n_reg_167 <= n_6_reg_540;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_1_reg_155 <= sum_reg_132;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        sum_1_reg_155 <= grp_fu_178_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond2_fu_302_p2))) begin
        sum_reg_132 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond_fu_394_p2))) begin
        sum_reg_132 <= sum_1_reg_155;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond3_fu_261_p2))) begin
        w_reg_120 <= 5'd1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        w_reg_120 <= w_6_reg_595;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_188_p2 == 1'd0))) begin
        bias_addr_reg_486 <= tmp_fu_200_p1;
        tmp_119_cast_reg_481 <= tmp_119_cast_fu_257_p1;
        tmp_85_reg_475[9 : 1] <= tmp_85_fu_233_p2[9 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        bias_load_reg_585 <= bias_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_6_reg_470 <= co_6_fu_194_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        input_load_reg_570 <= input_r_q0;
        weight_load_reg_565 <= weight_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_6_reg_510 <= m_6_fu_320_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        n_6_reg_540 <= n_6_fu_400_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        result_reg_600 <= grp_fu_178_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp_54_reg_575 <= grp_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond3_fu_261_p2))) begin
        tmp_89_reg_494[13 : 1] <= tmp_89_fu_296_p2[13 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        tmp_90_reg_590 <= tmp_90_fu_452_p2;
        w_6_reg_595 <= w_6_fu_457_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond1_fu_314_p2))) begin
        tmp_91_reg_515 <= tmp_91_fu_330_p2;
        tmp_93_reg_521 <= tmp_93_fu_355_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_92_reg_527 <= tmp_92_fu_365_p2;
        tmp_94_reg_532[13 : 1] <= tmp_94_fu_388_p2[13 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (1'd0 == exitcond_fu_394_p2))) begin
        tmp_95_reg_545 <= tmp_95_fu_410_p2;
        tmp_96_reg_550 <= tmp_96_fu_435_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_188_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_188_p2 == 1'd1))) begin
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
        grp_fu_178_p0 = sum_reg_132;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_178_p0 = sum_1_reg_155;
    end else begin
        grp_fu_178_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_178_p1 = bias_load_reg_585;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_178_p1 = tmp_54_reg_575;
    end else begin
        grp_fu_178_p1 = 'bx;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_188_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond3_fu_261_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond2_fu_302_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == exitcond1_fu_314_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond_fu_394_p2))) begin
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

assign bias_address0 = bias_addr_reg_486;

assign co_6_fu_194_p2 = (co_reg_97 + 5'd1);

assign exitcond1_fu_314_p2 = ((m_reg_144 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond2_fu_302_p2 = ((w_reg_120 == 5'd17) ? 1'b1 : 1'b0);

assign exitcond3_fu_261_p2 = ((h_reg_108 == 5'd17) ? 1'b1 : 1'b0);

assign exitcond4_fu_188_p2 = ((co_reg_97 == 5'd24) ? 1'b1 : 1'b0);

assign exitcond_fu_394_p2 = ((n_reg_167 == 2'd3) ? 1'b1 : 1'b0);

assign h_6_fu_308_p2 = (h_reg_108 + 5'd1);

assign input_r_address0 = tmp_133_cast_fu_444_p1;

assign m_6_fu_320_p2 = (m_reg_144 + 2'd1);

assign n_6_fu_400_p2 = (n_reg_167 + 2'd1);

assign output_r_address0 = tmp_124_cast_fu_463_p1;

assign output_r_d0 = result_reg_600;

assign p_shl1_cast_fu_217_p1 = tmp_s_fu_209_p3;

assign p_shl2_cast_fu_229_p1 = tmp_84_fu_221_p3;

assign p_shl3_cast_fu_276_p3 = {{tmp_88_fu_271_p2}, {4'd0}};

assign p_shl4_cast_fu_292_p1 = tmp_48_fu_284_p3;

assign p_shl5_cast_fu_370_p3 = {{tmp_93_reg_521}, {4'd0}};

assign p_shl6_cast_fu_384_p1 = tmp_51_fu_377_p3;

assign p_shl_cast_fu_247_p1 = tmp_86_fu_239_p3;

assign tmp1_cast_fu_341_p1 = $signed(tmp1_fu_335_p2);

assign tmp1_fu_335_p2 = ($signed(2'd3) + $signed(m_reg_144));

assign tmp2_cast_fu_421_p1 = $signed(tmp2_fu_415_p2);

assign tmp2_fu_415_p2 = ($signed(n_reg_167) + $signed(2'd3));

assign tmp_119_cast_fu_257_p1 = $signed(tmp_87_fu_251_p2);

assign tmp_124_cast_fu_463_p1 = tmp_90_reg_590;

assign tmp_132_cast_fu_440_p1 = tmp_95_reg_545;

assign tmp_133_cast_fu_444_p1 = tmp_96_reg_550;

assign tmp_47_cast_fu_448_p1 = w_reg_120;

assign tmp_48_cast_fu_326_p1 = m_reg_144;

assign tmp_48_fu_284_p3 = {{tmp_88_fu_271_p2}, {1'd0}};

assign tmp_49_fu_345_p2 = ($signed(h_reg_108) + $signed(tmp1_cast_fu_341_p1));

assign tmp_50_cast_fu_351_p1 = tmp_49_fu_345_p2;

assign tmp_50_fu_360_p2 = tmp_91_reg_515 << 9'd2;

assign tmp_51_cast_fu_406_p1 = n_reg_167;

assign tmp_51_fu_377_p3 = {{tmp_93_reg_521}, {1'd0}};

assign tmp_52_fu_425_p2 = ($signed(w_reg_120) + $signed(tmp2_cast_fu_421_p1));

assign tmp_53_cast_fu_431_p1 = tmp_52_fu_425_p2;

assign tmp_84_fu_221_p3 = {{co_reg_97}, {1'd0}};

assign tmp_85_fu_233_p2 = (p_shl2_cast_fu_229_p1 + p_shl1_cast_fu_217_p1);

assign tmp_86_fu_239_p3 = {{co_reg_97}, {2'd0}};

assign tmp_87_fu_251_p2 = (p_shl_cast_fu_247_p1 - tmp_cast_fu_205_p1);

assign tmp_88_fu_271_p2 = (tmp_cast_35_fu_267_p1 + tmp_85_reg_475);

assign tmp_89_fu_296_p2 = (p_shl3_cast_fu_276_p3 + p_shl4_cast_fu_292_p1);

assign tmp_90_fu_452_p2 = (tmp_89_reg_494 + tmp_47_cast_fu_448_p1);

assign tmp_91_fu_330_p2 = ($signed(tmp_119_cast_reg_481) + $signed(tmp_48_cast_fu_326_p1));

assign tmp_92_fu_365_p2 = (tmp_50_fu_360_p2 - tmp_91_reg_515);

assign tmp_93_fu_355_p2 = (tmp_85_reg_475 + tmp_50_cast_fu_351_p1);

assign tmp_94_fu_388_p2 = (p_shl6_cast_fu_384_p1 + p_shl5_cast_fu_370_p3);

assign tmp_95_fu_410_p2 = (tmp_92_reg_527 + tmp_51_cast_fu_406_p1);

assign tmp_96_fu_435_p2 = (tmp_94_reg_532 + tmp_53_cast_fu_431_p1);

assign tmp_cast_35_fu_267_p1 = h_reg_108;

assign tmp_cast_fu_205_p1 = co_reg_97;

assign tmp_fu_200_p1 = co_reg_97;

assign tmp_s_fu_209_p3 = {{co_reg_97}, {4'd0}};

assign w_6_fu_457_p2 = (w_reg_120 + 5'd1);

assign weight_address0 = tmp_132_cast_fu_440_p1;

always @ (posedge ap_clk) begin
    tmp_85_reg_475[0] <= 1'b0;
    tmp_89_reg_494[0] <= 1'b0;
    tmp_94_reg_532[0] <= 1'b0;
end

endmodule //subconv_3x3_16_no_re