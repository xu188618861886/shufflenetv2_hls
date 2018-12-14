// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv_last_HH_
#define _conv_last_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_faddbkb.h"
#include "ShuffleNetV2_fmulcud.h"
#include "ShuffleNetV2_fcmpdEe.h"

namespace ap_rtl {

struct conv_last : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<12> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<32> > input_r_q0;
    sc_out< sc_lv<17> > weight_address0;
    sc_out< sc_logic > weight_ce0;
    sc_in< sc_lv<32> > weight_q0;
    sc_out< sc_lv<9> > bias_address0;
    sc_out< sc_logic > bias_ce0;
    sc_in< sc_lv<32> > bias_q0;
    sc_out< sc_lv<13> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<32> > output_r_d0;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<5> > ap_var_for_const2;


    // Module declarations
    conv_last(sc_module_name name);
    SC_HAS_PROCESS(conv_last);

    ~conv_last();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_faddbkb<1,5,32,32,32>* ShuffleNetV2_faddbkb_x_U107;
    ShuffleNetV2_fmulcud<1,4,32,32,32>* ShuffleNetV2_fmulcud_x_U108;
    ShuffleNetV2_fcmpdEe<1,1,32,32,1>* ShuffleNetV2_fcmpdEe_x_U109;
    sc_signal< sc_lv<23> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<10> > co_22_fu_186_p2;
    sc_signal< sc_lv<10> > co_22_reg_410;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<18> > tmp_285_fu_217_p2;
    sc_signal< sc_lv<18> > tmp_285_reg_415;
    sc_signal< sc_lv<1> > exitcond3_fu_180_p2;
    sc_signal< sc_lv<13> > tmp_411_cast_fu_231_p1;
    sc_signal< sc_lv<13> > tmp_411_cast_reg_420;
    sc_signal< sc_lv<9> > bias_addr_reg_425;
    sc_signal< sc_lv<3> > h_22_fu_241_p2;
    sc_signal< sc_lv<3> > h_22_reg_433;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<11> > tmp_cast3_fu_247_p1;
    sc_signal< sc_lv<11> > tmp_cast3_reg_438;
    sc_signal< sc_lv<1> > exitcond2_fu_235_p2;
    sc_signal< sc_lv<15> > tmp_414_cast_fu_260_p3;
    sc_signal< sc_lv<15> > tmp_414_cast_reg_443;
    sc_signal< sc_lv<3> > w_22_fu_274_p2;
    sc_signal< sc_lv<3> > w_22_reg_451;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<13> > tmp_82_cast2_fu_280_p1;
    sc_signal< sc_lv<13> > tmp_82_cast2_reg_456;
    sc_signal< sc_lv<1> > exitcond1_fu_268_p2;
    sc_signal< sc_lv<13> > output_addr_reg_461;
    sc_signal< sc_lv<8> > ci_7_fu_304_p2;
    sc_signal< sc_lv<8> > ci_7_reg_469;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > exitcond_fu_298_p2;
    sc_signal< sc_lv<32> > weight_load_reg_484;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > input_load_reg_489;
    sc_signal< sc_lv<32> > grp_fu_171_p2;
    sc_signal< sc_lv<32> > tmp_84_reg_494;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > grp_fu_166_p2;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<32> > bias_load_reg_504;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<32> > result_reg_509;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<1> > tmp_34_fu_175_p2;
    sc_signal< sc_lv<1> > tmp_34_reg_516;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<10> > co_reg_110;
    sc_signal< sc_lv<3> > h_reg_121;
    sc_signal< sc_lv<3> > w_reg_132;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<32> > sum_reg_143;
    sc_signal< sc_lv<8> > ci_reg_155;
    sc_signal< sc_lv<64> > tmp_fu_192_p1;
    sc_signal< sc_lv<64> > tmp_415_cast_fu_293_p1;
    sc_signal< sc_lv<64> > tmp_421_cast_fu_344_p1;
    sc_signal< sc_lv<64> > tmp_422_cast_fu_354_p1;
    sc_signal< sc_lv<32> > grp_fu_166_p1;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<16> > tmp_284_fu_205_p3;
    sc_signal< sc_lv<18> > tmp_s_fu_197_p3;
    sc_signal< sc_lv<18> > p_shl1_cast_fu_213_p1;
    sc_signal< sc_lv<12> > tmp_286_fu_223_p3;
    sc_signal< sc_lv<13> > tmp_cast_fu_251_p1;
    sc_signal< sc_lv<13> > tmp_287_fu_255_p2;
    sc_signal< sc_lv<15> > tmp_82_cast_fu_284_p1;
    sc_signal< sc_lv<15> > tmp_288_fu_288_p2;
    sc_signal< sc_lv<10> > tmp_289_fu_314_p3;
    sc_signal< sc_lv<11> > tmp_417_cast_fu_322_p1;
    sc_signal< sc_lv<11> > tmp_290_fu_326_p2;
    sc_signal< sc_lv<13> > tmp_420_cast_fu_331_p3;
    sc_signal< sc_lv<13> > tmp_291_fu_339_p2;
    sc_signal< sc_lv<18> > tmp_83_cast_fu_310_p1;
    sc_signal< sc_lv<18> > tmp_292_fu_349_p2;
    sc_signal< sc_lv<32> > result_to_int_fu_359_p1;
    sc_signal< sc_lv<8> > tmp_31_fu_362_p4;
    sc_signal< sc_lv<23> > tmp_109_fu_372_p1;
    sc_signal< sc_lv<1> > notrhs_fu_382_p2;
    sc_signal< sc_lv<1> > notlhs_fu_376_p2;
    sc_signal< sc_lv<1> > tmp_33_fu_388_p2;
    sc_signal< sc_lv<1> > tmp_35_fu_394_p2;
    sc_signal< sc_lv<23> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<23> ap_ST_fsm_state1;
    static const sc_lv<23> ap_ST_fsm_state2;
    static const sc_lv<23> ap_ST_fsm_state3;
    static const sc_lv<23> ap_ST_fsm_state4;
    static const sc_lv<23> ap_ST_fsm_state5;
    static const sc_lv<23> ap_ST_fsm_state6;
    static const sc_lv<23> ap_ST_fsm_state7;
    static const sc_lv<23> ap_ST_fsm_state8;
    static const sc_lv<23> ap_ST_fsm_state9;
    static const sc_lv<23> ap_ST_fsm_state10;
    static const sc_lv<23> ap_ST_fsm_state11;
    static const sc_lv<23> ap_ST_fsm_state12;
    static const sc_lv<23> ap_ST_fsm_state13;
    static const sc_lv<23> ap_ST_fsm_state14;
    static const sc_lv<23> ap_ST_fsm_state15;
    static const sc_lv<23> ap_ST_fsm_state16;
    static const sc_lv<23> ap_ST_fsm_state17;
    static const sc_lv<23> ap_ST_fsm_state18;
    static const sc_lv<23> ap_ST_fsm_state19;
    static const sc_lv<23> ap_ST_fsm_state20;
    static const sc_lv<23> ap_ST_fsm_state21;
    static const sc_lv<23> ap_ST_fsm_state22;
    static const sc_lv<23> ap_ST_fsm_state23;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<10> ap_const_lv10_200;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<8> ap_const_lv8_C0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_bias_address0();
    void thread_bias_ce0();
    void thread_ci_7_fu_304_p2();
    void thread_co_22_fu_186_p2();
    void thread_exitcond1_fu_268_p2();
    void thread_exitcond2_fu_235_p2();
    void thread_exitcond3_fu_180_p2();
    void thread_exitcond_fu_298_p2();
    void thread_grp_fu_166_p1();
    void thread_h_22_fu_241_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_notlhs_fu_376_p2();
    void thread_notrhs_fu_382_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_p_shl1_cast_fu_213_p1();
    void thread_result_to_int_fu_359_p1();
    void thread_tmp_109_fu_372_p1();
    void thread_tmp_284_fu_205_p3();
    void thread_tmp_285_fu_217_p2();
    void thread_tmp_286_fu_223_p3();
    void thread_tmp_287_fu_255_p2();
    void thread_tmp_288_fu_288_p2();
    void thread_tmp_289_fu_314_p3();
    void thread_tmp_290_fu_326_p2();
    void thread_tmp_291_fu_339_p2();
    void thread_tmp_292_fu_349_p2();
    void thread_tmp_31_fu_362_p4();
    void thread_tmp_33_fu_388_p2();
    void thread_tmp_35_fu_394_p2();
    void thread_tmp_411_cast_fu_231_p1();
    void thread_tmp_414_cast_fu_260_p3();
    void thread_tmp_415_cast_fu_293_p1();
    void thread_tmp_417_cast_fu_322_p1();
    void thread_tmp_420_cast_fu_331_p3();
    void thread_tmp_421_cast_fu_344_p1();
    void thread_tmp_422_cast_fu_354_p1();
    void thread_tmp_82_cast2_fu_280_p1();
    void thread_tmp_82_cast_fu_284_p1();
    void thread_tmp_83_cast_fu_310_p1();
    void thread_tmp_cast3_fu_247_p1();
    void thread_tmp_cast_fu_251_p1();
    void thread_tmp_fu_192_p1();
    void thread_tmp_s_fu_197_p3();
    void thread_w_22_fu_274_p2();
    void thread_weight_address0();
    void thread_weight_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
