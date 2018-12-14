// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv1_p_HH_
#define _conv1_p_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_faddbkb.h"
#include "ShuffleNetV2_fmulcud.h"
#include "ShuffleNetV2_fcmpdEe.h"

namespace ap_rtl {

struct conv1_p : public sc_module {
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
    sc_out< sc_lv<10> > weight_address0;
    sc_out< sc_logic > weight_ce0;
    sc_in< sc_lv<32> > weight_q0;
    sc_out< sc_lv<5> > bias_address0;
    sc_out< sc_logic > bias_ce0;
    sc_in< sc_lv<32> > bias_q0;
    sc_out< sc_lv<15> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<32> > output_r_d0;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<5> > ap_var_for_const2;


    // Module declarations
    conv1_p(sc_module_name name);
    SC_HAS_PROCESS(conv1_p);

    ~conv1_p();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_faddbkb<1,5,32,32,32>* ShuffleNetV2_faddbkb_U1;
    ShuffleNetV2_fmulcud<1,4,32,32,32>* ShuffleNetV2_fmulcud_U2;
    ShuffleNetV2_fcmpdEe<1,1,32,32,1>* ShuffleNetV2_fcmpdEe_U3;
    sc_signal< sc_lv<27> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > co_23_fu_240_p2;
    sc_signal< sc_lv<5> > co_23_reg_649;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<9> > tmp_424_cast_fu_273_p1;
    sc_signal< sc_lv<9> > tmp_424_cast_reg_654;
    sc_signal< sc_lv<1> > exitcond5_fu_234_p2;
    sc_signal< sc_lv<11> > tmp_296_fu_301_p2;
    sc_signal< sc_lv<11> > tmp_296_reg_659;
    sc_signal< sc_lv<5> > bias_addr_reg_664;
    sc_signal< sc_lv<16> > tmp_298_fu_342_p2;
    sc_signal< sc_lv<16> > tmp_298_reg_672;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > exitcond4_fu_307_p2;
    sc_signal< sc_lv<6> > h_23_fu_354_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > exitcond3_fu_348_p2;
    sc_signal< sc_lv<2> > ci_8_fu_366_p2;
    sc_signal< sc_lv<2> > ci_8_reg_688;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > tmp_302_fu_400_p2;
    sc_signal< sc_lv<8> > tmp_302_reg_693;
    sc_signal< sc_lv<1> > exitcond2_fu_360_p2;
    sc_signal< sc_lv<64> > tmp_304_fu_427_p2;
    sc_signal< sc_lv<64> > tmp_304_reg_698;
    sc_signal< sc_lv<2> > m_7_fu_439_p2;
    sc_signal< sc_lv<2> > m_7_reg_706;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<11> > tmp_306_fu_470_p2;
    sc_signal< sc_lv<11> > tmp_306_reg_711;
    sc_signal< sc_lv<1> > exitcond1_fu_433_p2;
    sc_signal< sc_lv<8> > tmp_307_fu_496_p2;
    sc_signal< sc_lv<8> > tmp_307_reg_716;
    sc_signal< sc_lv<13> > tmp_308_fu_519_p2;
    sc_signal< sc_lv<13> > tmp_308_reg_722;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<2> > n_7_fu_531_p2;
    sc_signal< sc_lv<2> > n_7_reg_730;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<11> > tmp_309_fu_541_p2;
    sc_signal< sc_lv<11> > tmp_309_reg_735;
    sc_signal< sc_lv<1> > exitcond_fu_525_p2;
    sc_signal< sc_lv<13> > tmp_310_fu_566_p2;
    sc_signal< sc_lv<13> > tmp_310_reg_740;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > weight_load_reg_755;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > input_load_reg_760;
    sc_signal< sc_lv<32> > grp_fu_225_p2;
    sc_signal< sc_lv<32> > tmp_93_reg_765;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<32> > grp_fu_219_p2;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<32> > bias_load_reg_775;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<16> > tmp_299_fu_583_p2;
    sc_signal< sc_lv<16> > tmp_299_reg_780;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<6> > w_23_fu_588_p2;
    sc_signal< sc_lv<6> > w_23_reg_785;
    sc_signal< sc_lv<32> > result_reg_790;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<1> > tmp_39_fu_229_p2;
    sc_signal< sc_lv<1> > tmp_39_reg_797;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_lv<5> > co_reg_115;
    sc_signal< sc_lv<6> > h_reg_126;
    sc_signal< sc_lv<6> > w_reg_138;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_lv<32> > sum_reg_150;
    sc_signal< sc_lv<2> > ci_reg_162;
    sc_signal< sc_lv<32> > sum_1_reg_173;
    sc_signal< sc_lv<2> > m_reg_185;
    sc_signal< sc_lv<32> > sum_2_reg_196;
    sc_signal< sc_lv<2> > n_reg_208;
    sc_signal< sc_lv<64> > tmp_fu_246_p1;
    sc_signal< sc_lv<64> > tmp_446_cast_fu_571_p1;
    sc_signal< sc_lv<64> > tmp_447_cast_fu_575_p1;
    sc_signal< sc_lv<64> > tmp_432_cast_fu_642_p1;
    sc_signal< sc_lv<32> > grp_fu_219_p0;
    sc_signal< sc_lv<32> > grp_fu_219_p1;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<7> > tmp_s_fu_255_p3;
    sc_signal< sc_lv<8> > p_shl2_cast_fu_263_p1;
    sc_signal< sc_lv<8> > tmp_cast_fu_251_p1;
    sc_signal< sc_lv<8> > tmp_293_fu_267_p2;
    sc_signal< sc_lv<10> > tmp_294_fu_277_p3;
    sc_signal< sc_lv<6> > tmp_295_fu_289_p3;
    sc_signal< sc_lv<11> > p_shl1_cast_fu_297_p1;
    sc_signal< sc_lv<11> > p_shl_cast_fu_285_p1;
    sc_signal< sc_lv<11> > tmp_cast_79_fu_313_p1;
    sc_signal< sc_lv<11> > tmp_297_fu_317_p2;
    sc_signal< sc_lv<12> > tmp_110_fu_330_p3;
    sc_signal< sc_lv<16> > p_shl3_cast_fu_322_p3;
    sc_signal< sc_lv<16> > p_shl4_cast_fu_338_p1;
    sc_signal< sc_lv<7> > tmp_300_fu_376_p3;
    sc_signal< sc_lv<3> > tmp_301_fu_388_p3;
    sc_signal< sc_lv<8> > p_shl7_cast_fu_396_p1;
    sc_signal< sc_lv<8> > p_shl6_cast_fu_384_p1;
    sc_signal< sc_lv<9> > tmp_86_cast_fu_372_p1;
    sc_signal< sc_lv<9> > tmp_303_fu_406_p2;
    sc_signal< sc_lv<11> > tmp_112_fu_415_p3;
    sc_signal< sc_lv<64> > p_shl5_fu_423_p1;
    sc_signal< sc_lv<64> > tmp_436_cast_fu_411_p1;
    sc_signal< sc_lv<64> > tmp_87_fu_445_p1;
    sc_signal< sc_lv<64> > tmp_305_fu_449_p2;
    sc_signal< sc_lv<9> > tmp_114_fu_458_p1;
    sc_signal< sc_lv<11> > p_shl10_cast_fu_462_p3;
    sc_signal< sc_lv<11> > tmp_113_fu_454_p1;
    sc_signal< sc_lv<2> > tmp1_fu_476_p2;
    sc_signal< sc_lv<6> > tmp1_cast_fu_482_p1;
    sc_signal< sc_lv<6> > tmp_88_fu_486_p2;
    sc_signal< sc_lv<8> > tmp_89_cast_fu_492_p1;
    sc_signal< sc_lv<9> > tmp_115_fu_508_p3;
    sc_signal< sc_lv<13> > p_shl9_cast_fu_515_p1;
    sc_signal< sc_lv<13> > p_shl8_cast_fu_501_p3;
    sc_signal< sc_lv<11> > tmp_90_cast_fu_537_p1;
    sc_signal< sc_lv<2> > tmp2_fu_546_p2;
    sc_signal< sc_lv<6> > tmp2_cast_fu_552_p1;
    sc_signal< sc_lv<6> > tmp_91_fu_556_p2;
    sc_signal< sc_lv<13> > tmp_92_cast_fu_562_p1;
    sc_signal< sc_lv<16> > tmp_85_cast_fu_579_p1;
    sc_signal< sc_lv<32> > result_to_int_fu_594_p1;
    sc_signal< sc_lv<8> > tmp_36_fu_597_p4;
    sc_signal< sc_lv<23> > tmp_111_fu_607_p1;
    sc_signal< sc_lv<1> > notrhs_fu_617_p2;
    sc_signal< sc_lv<1> > notlhs_fu_611_p2;
    sc_signal< sc_lv<1> > tmp_38_fu_623_p2;
    sc_signal< sc_lv<1> > tmp_40_fu_629_p2;
    sc_signal< sc_lv<27> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<27> ap_ST_fsm_state1;
    static const sc_lv<27> ap_ST_fsm_state2;
    static const sc_lv<27> ap_ST_fsm_state3;
    static const sc_lv<27> ap_ST_fsm_state4;
    static const sc_lv<27> ap_ST_fsm_state5;
    static const sc_lv<27> ap_ST_fsm_state6;
    static const sc_lv<27> ap_ST_fsm_state7;
    static const sc_lv<27> ap_ST_fsm_state8;
    static const sc_lv<27> ap_ST_fsm_state9;
    static const sc_lv<27> ap_ST_fsm_state10;
    static const sc_lv<27> ap_ST_fsm_state11;
    static const sc_lv<27> ap_ST_fsm_state12;
    static const sc_lv<27> ap_ST_fsm_state13;
    static const sc_lv<27> ap_ST_fsm_state14;
    static const sc_lv<27> ap_ST_fsm_state15;
    static const sc_lv<27> ap_ST_fsm_state16;
    static const sc_lv<27> ap_ST_fsm_state17;
    static const sc_lv<27> ap_ST_fsm_state18;
    static const sc_lv<27> ap_ST_fsm_state19;
    static const sc_lv<27> ap_ST_fsm_state20;
    static const sc_lv<27> ap_ST_fsm_state21;
    static const sc_lv<27> ap_ST_fsm_state22;
    static const sc_lv<27> ap_ST_fsm_state23;
    static const sc_lv<27> ap_ST_fsm_state24;
    static const sc_lv<27> ap_ST_fsm_state25;
    static const sc_lv<27> ap_ST_fsm_state26;
    static const sc_lv<27> ap_ST_fsm_state27;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<5> ap_const_lv5_18;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<6> ap_const_lv6_21;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
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
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_bias_address0();
    void thread_bias_ce0();
    void thread_ci_8_fu_366_p2();
    void thread_co_23_fu_240_p2();
    void thread_exitcond1_fu_433_p2();
    void thread_exitcond2_fu_360_p2();
    void thread_exitcond3_fu_348_p2();
    void thread_exitcond4_fu_307_p2();
    void thread_exitcond5_fu_234_p2();
    void thread_exitcond_fu_525_p2();
    void thread_grp_fu_219_p0();
    void thread_grp_fu_219_p1();
    void thread_h_23_fu_354_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_m_7_fu_439_p2();
    void thread_n_7_fu_531_p2();
    void thread_notlhs_fu_611_p2();
    void thread_notrhs_fu_617_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_p_shl10_cast_fu_462_p3();
    void thread_p_shl1_cast_fu_297_p1();
    void thread_p_shl2_cast_fu_263_p1();
    void thread_p_shl3_cast_fu_322_p3();
    void thread_p_shl4_cast_fu_338_p1();
    void thread_p_shl5_fu_423_p1();
    void thread_p_shl6_cast_fu_384_p1();
    void thread_p_shl7_cast_fu_396_p1();
    void thread_p_shl8_cast_fu_501_p3();
    void thread_p_shl9_cast_fu_515_p1();
    void thread_p_shl_cast_fu_285_p1();
    void thread_result_to_int_fu_594_p1();
    void thread_tmp1_cast_fu_482_p1();
    void thread_tmp1_fu_476_p2();
    void thread_tmp2_cast_fu_552_p1();
    void thread_tmp2_fu_546_p2();
    void thread_tmp_110_fu_330_p3();
    void thread_tmp_111_fu_607_p1();
    void thread_tmp_112_fu_415_p3();
    void thread_tmp_113_fu_454_p1();
    void thread_tmp_114_fu_458_p1();
    void thread_tmp_115_fu_508_p3();
    void thread_tmp_293_fu_267_p2();
    void thread_tmp_294_fu_277_p3();
    void thread_tmp_295_fu_289_p3();
    void thread_tmp_296_fu_301_p2();
    void thread_tmp_297_fu_317_p2();
    void thread_tmp_298_fu_342_p2();
    void thread_tmp_299_fu_583_p2();
    void thread_tmp_300_fu_376_p3();
    void thread_tmp_301_fu_388_p3();
    void thread_tmp_302_fu_400_p2();
    void thread_tmp_303_fu_406_p2();
    void thread_tmp_304_fu_427_p2();
    void thread_tmp_305_fu_449_p2();
    void thread_tmp_306_fu_470_p2();
    void thread_tmp_307_fu_496_p2();
    void thread_tmp_308_fu_519_p2();
    void thread_tmp_309_fu_541_p2();
    void thread_tmp_310_fu_566_p2();
    void thread_tmp_36_fu_597_p4();
    void thread_tmp_38_fu_623_p2();
    void thread_tmp_40_fu_629_p2();
    void thread_tmp_424_cast_fu_273_p1();
    void thread_tmp_432_cast_fu_642_p1();
    void thread_tmp_436_cast_fu_411_p1();
    void thread_tmp_446_cast_fu_571_p1();
    void thread_tmp_447_cast_fu_575_p1();
    void thread_tmp_85_cast_fu_579_p1();
    void thread_tmp_86_cast_fu_372_p1();
    void thread_tmp_87_fu_445_p1();
    void thread_tmp_88_fu_486_p2();
    void thread_tmp_89_cast_fu_492_p1();
    void thread_tmp_90_cast_fu_537_p1();
    void thread_tmp_91_fu_556_p2();
    void thread_tmp_92_cast_fu_562_p1();
    void thread_tmp_cast_79_fu_313_p1();
    void thread_tmp_cast_fu_251_p1();
    void thread_tmp_fu_246_p1();
    void thread_tmp_s_fu_255_p3();
    void thread_w_23_fu_588_p2();
    void thread_weight_address0();
    void thread_weight_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
