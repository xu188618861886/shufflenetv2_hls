// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module subconv_1x1_8_p (
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
output  [12:0] input_r_address0;
output   input_r_ce0;
input  [31:0] input_r_q0;
output  [11:0] weight_address0;
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

(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] co_8_fu_180_p2;
reg   [5:0] co_8_reg_478;
wire    ap_CS_fsm_state2;
wire   [12:0] tmp_113_fu_215_p2;
reg   [12:0] tmp_113_reg_483;
wire   [0:0] exitcond3_fu_174_p2;
wire   [9:0] tmp_116_fu_245_p2;
reg   [9:0] tmp_116_reg_488;
reg   [5:0] bias_addr_reg_493;
wire   [9:0] tmp_cast_fu_257_p1;
reg   [9:0] tmp_cast_reg_501;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond2_fu_251_p2;
wire   [13:0] tmp_118_fu_290_p2;
reg   [13:0] tmp_118_reg_506;
wire   [13:0] tmp_58_cast_fu_302_p1;
reg   [13:0] tmp_58_cast_reg_514;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond1_fu_296_p2;
reg   [12:0] output_addr_reg_519;
wire   [3:0] h_8_fu_316_p2;
wire   [5:0] ci_2_fu_328_p2;
reg   [5:0] ci_2_reg_532;
wire    ap_CS_fsm_state5;
wire   [13:0] tmp_125_fu_403_p2;
reg   [13:0] tmp_125_reg_537;
wire   [0:0] exitcond_fu_322_p2;
wire   [12:0] tmp_126_fu_408_p2;
reg   [12:0] tmp_126_reg_542;
wire   [3:0] w_8_fu_413_p2;
reg   [3:0] w_8_reg_547;
wire    ap_CS_fsm_state6;
reg   [31:0] weight_load_reg_562;
wire    ap_CS_fsm_state7;
reg   [31:0] input_load_reg_567;
wire   [31:0] grp_fu_165_p2;
reg   [31:0] tmp_60_reg_572;
wire    ap_CS_fsm_state11;
wire   [31:0] grp_fu_160_p2;
wire    ap_CS_fsm_state16;
reg   [31:0] bias_load_reg_582;
wire    ap_CS_fsm_state17;
reg   [31:0] result_reg_587;
wire    ap_CS_fsm_state22;
wire   [0:0] tmp_9_fu_169_p2;
reg   [0:0] tmp_9_reg_594;
wire    ap_CS_fsm_state23;
reg   [5:0] co_reg_102;
reg   [3:0] h_reg_113;
reg   [3:0] w_reg_125;
wire    ap_CS_fsm_state24;
reg   [31:0] sum_reg_137;
reg   [5:0] ci_reg_149;
wire   [63:0] tmp_fu_186_p1;
wire   [63:0] tmp_164_cast_fu_311_p1;
wire   [63:0] tmp_172_cast_fu_419_p1;
wire  signed [63:0] tmp_173_cast_fu_423_p1;
reg   [31:0] grp_fu_160_p1;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state8;
wire   [11:0] tmp_s_fu_191_p3;
wire   [9:0] tmp_112_fu_203_p3;
wire   [12:0] p_shl2_cast_fu_199_p1;
wire   [12:0] p_shl3_cast_fu_211_p1;
wire   [8:0] tmp_114_fu_221_p3;
wire   [6:0] tmp_115_fu_233_p3;
wire   [9:0] p_shl1_cast_fu_241_p1;
wire   [9:0] p_shl_cast_fu_229_p1;
wire   [9:0] tmp_117_fu_261_p2;
wire   [12:0] tmp_57_fu_266_p3;
wire   [10:0] tmp_58_fu_278_p3;
wire   [13:0] p_shl4_cast_fu_274_p1;
wire   [13:0] p_shl5_cast_fu_286_p1;
wire   [13:0] tmp_119_fu_306_p2;
wire   [8:0] tmp_120_fu_338_p3;
wire   [6:0] tmp_121_fu_350_p3;
wire   [9:0] p_shl8_cast_fu_346_p1;
wire   [9:0] p_shl9_cast_fu_358_p1;
wire   [9:0] tmp_122_fu_362_p2;
wire   [9:0] tmp_123_fu_368_p2;
wire   [12:0] tmp_61_fu_373_p3;
wire   [10:0] tmp_62_fu_385_p3;
wire   [13:0] p_shl6_cast_fu_381_p1;
wire   [13:0] p_shl7_cast_fu_393_p1;
wire   [13:0] tmp_124_fu_397_p2;
wire   [12:0] tmp_59_cast_fu_334_p1;
wire   [31:0] result_to_int_fu_427_p1;
wire   [7:0] tmp_6_fu_430_p4;
wire   [22:0] tmp_59_fu_440_p1;
wire   [0:0] notrhs_fu_450_p2;
wire   [0:0] notlhs_fu_444_p2;
wire   [0:0] tmp_8_fu_456_p2;
wire   [0:0] tmp_10_fu_462_p2;
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
ShuffleNetV2_faddbkb_x_U54(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sum_reg_137),
    .din1(grp_fu_160_p1),
    .ce(1'b1),
    .dout(grp_fu_160_p2)
);

ShuffleNetV2_fmulcud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_fmulcud_x_U55(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_load_reg_562),
    .din1(input_load_reg_567),
    .ce(1'b1),
    .dout(grp_fu_165_p2)
);

ShuffleNetV2_fcmpdEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
ShuffleNetV2_fcmpdEe_x_U56(
    .din0(result_reg_587),
    .din1(32'd0),
    .opcode(5'd2),
    .dout(tmp_9_fu_169_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond1_fu_296_p2))) begin
        ci_reg_149 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        ci_reg_149 <= ci_2_reg_532;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_251_p2 == 1'd1))) begin
        co_reg_102 <= co_8_reg_478;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_102 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_174_p2 == 1'd0))) begin
        h_reg_113 <= 4'd1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond1_fu_296_p2 == 1'd1))) begin
        h_reg_113 <= h_8_fu_316_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond1_fu_296_p2))) begin
        sum_reg_137 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        sum_reg_137 <= grp_fu_160_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond2_fu_251_p2))) begin
        w_reg_125 <= 4'd1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        w_reg_125 <= w_8_reg_547;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_174_p2 == 1'd0))) begin
        bias_addr_reg_493 <= tmp_fu_186_p1;
        tmp_113_reg_483[12 : 4] <= tmp_113_fu_215_p2[12 : 4];
        tmp_116_reg_488[9 : 1] <= tmp_116_fu_245_p2[9 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        bias_load_reg_582 <= bias_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ci_2_reg_532 <= ci_2_fu_328_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_8_reg_478 <= co_8_fu_180_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        input_load_reg_567 <= input_r_q0;
        weight_load_reg_562 <= weight_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond1_fu_296_p2))) begin
        output_addr_reg_519 <= tmp_164_cast_fu_311_p1;
        tmp_58_cast_reg_514[3 : 0] <= tmp_58_cast_fu_302_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        result_reg_587 <= grp_fu_160_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond2_fu_251_p2))) begin
        tmp_118_reg_506[13 : 1] <= tmp_118_fu_290_p2[13 : 1];
        tmp_cast_reg_501[3 : 0] <= tmp_cast_fu_257_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond_fu_322_p2))) begin
        tmp_125_reg_537 <= tmp_125_fu_403_p2;
        tmp_126_reg_542 <= tmp_126_fu_408_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_60_reg_572 <= grp_fu_165_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        tmp_9_reg_594 <= tmp_9_fu_169_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == exitcond_fu_322_p2))) begin
        w_8_reg_547 <= w_8_fu_413_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_174_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_174_p2 == 1'd1))) begin
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
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_160_p1 = bias_load_reg_582;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_160_p1 = tmp_60_reg_572;
    end else begin
        grp_fu_160_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_174_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_251_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond1_fu_296_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == exitcond_fu_322_p2))) begin
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

assign bias_address0 = bias_addr_reg_493;

assign ci_2_fu_328_p2 = (ci_reg_149 + 6'd1);

assign co_8_fu_180_p2 = (co_reg_102 + 6'd1);

assign exitcond1_fu_296_p2 = ((w_reg_125 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond2_fu_251_p2 = ((h_reg_113 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond3_fu_174_p2 = ((co_reg_102 == 6'd48) ? 1'b1 : 1'b0);

assign exitcond_fu_322_p2 = ((ci_reg_149 == 6'd48) ? 1'b1 : 1'b0);

assign h_8_fu_316_p2 = (h_reg_113 + 4'd1);

assign input_r_address0 = tmp_172_cast_fu_419_p1;

assign notlhs_fu_444_p2 = ((tmp_6_fu_430_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notrhs_fu_450_p2 = ((tmp_59_fu_440_p1 == 23'd0) ? 1'b1 : 1'b0);

assign output_r_address0 = output_addr_reg_519;

assign output_r_d0 = ((tmp_10_fu_462_p2[0:0] === 1'b1) ? result_reg_587 : 32'd0);

assign p_shl1_cast_fu_241_p1 = tmp_115_fu_233_p3;

assign p_shl2_cast_fu_199_p1 = tmp_s_fu_191_p3;

assign p_shl3_cast_fu_211_p1 = tmp_112_fu_203_p3;

assign p_shl4_cast_fu_274_p1 = tmp_57_fu_266_p3;

assign p_shl5_cast_fu_286_p1 = tmp_58_fu_278_p3;

assign p_shl6_cast_fu_381_p1 = tmp_61_fu_373_p3;

assign p_shl7_cast_fu_393_p1 = tmp_62_fu_385_p3;

assign p_shl8_cast_fu_346_p1 = tmp_120_fu_338_p3;

assign p_shl9_cast_fu_358_p1 = tmp_121_fu_350_p3;

assign p_shl_cast_fu_229_p1 = tmp_114_fu_221_p3;

assign result_to_int_fu_427_p1 = result_reg_587;

assign tmp_10_fu_462_p2 = (tmp_8_fu_456_p2 & tmp_9_reg_594);

assign tmp_112_fu_203_p3 = {{co_reg_102}, {4'd0}};

assign tmp_113_fu_215_p2 = (p_shl2_cast_fu_199_p1 - p_shl3_cast_fu_211_p1);

assign tmp_114_fu_221_p3 = {{co_reg_102}, {3'd0}};

assign tmp_115_fu_233_p3 = {{co_reg_102}, {1'd0}};

assign tmp_116_fu_245_p2 = (p_shl1_cast_fu_241_p1 + p_shl_cast_fu_229_p1);

assign tmp_117_fu_261_p2 = (tmp_cast_fu_257_p1 + tmp_116_reg_488);

assign tmp_118_fu_290_p2 = (p_shl4_cast_fu_274_p1 + p_shl5_cast_fu_286_p1);

assign tmp_119_fu_306_p2 = (tmp_118_reg_506 + tmp_58_cast_fu_302_p1);

assign tmp_120_fu_338_p3 = {{ci_reg_149}, {3'd0}};

assign tmp_121_fu_350_p3 = {{ci_reg_149}, {1'd0}};

assign tmp_122_fu_362_p2 = (p_shl8_cast_fu_346_p1 + p_shl9_cast_fu_358_p1);

assign tmp_123_fu_368_p2 = (tmp_cast_reg_501 + tmp_122_fu_362_p2);

assign tmp_124_fu_397_p2 = (p_shl6_cast_fu_381_p1 + p_shl7_cast_fu_393_p1);

assign tmp_125_fu_403_p2 = (tmp_58_cast_reg_514 + tmp_124_fu_397_p2);

assign tmp_126_fu_408_p2 = (tmp_59_cast_fu_334_p1 + tmp_113_reg_483);

assign tmp_164_cast_fu_311_p1 = tmp_119_fu_306_p2;

assign tmp_172_cast_fu_419_p1 = tmp_125_reg_537;

assign tmp_173_cast_fu_423_p1 = $signed(tmp_126_reg_542);

assign tmp_57_fu_266_p3 = {{tmp_117_fu_261_p2}, {3'd0}};

assign tmp_58_cast_fu_302_p1 = w_reg_125;

assign tmp_58_fu_278_p3 = {{tmp_117_fu_261_p2}, {1'd0}};

assign tmp_59_cast_fu_334_p1 = ci_reg_149;

assign tmp_59_fu_440_p1 = result_to_int_fu_427_p1[22:0];

assign tmp_61_fu_373_p3 = {{tmp_123_fu_368_p2}, {3'd0}};

assign tmp_62_fu_385_p3 = {{tmp_123_fu_368_p2}, {1'd0}};

assign tmp_6_fu_430_p4 = {{result_to_int_fu_427_p1[30:23]}};

assign tmp_8_fu_456_p2 = (notrhs_fu_450_p2 | notlhs_fu_444_p2);

assign tmp_cast_fu_257_p1 = h_reg_113;

assign tmp_fu_186_p1 = co_reg_102;

assign tmp_s_fu_191_p3 = {{co_reg_102}, {6'd0}};

assign w_8_fu_413_p2 = (4'd1 + w_reg_125);

assign weight_address0 = tmp_173_cast_fu_423_p1;

always @ (posedge ap_clk) begin
    tmp_113_reg_483[3:0] <= 4'b0000;
    tmp_116_reg_488[0] <= 1'b0;
    tmp_cast_reg_501[9:4] <= 6'b000000;
    tmp_118_reg_506[0] <= 1'b0;
    tmp_58_cast_reg_514[13:4] <= 10'b0000000000;
end

endmodule //subconv_1x1_8_p