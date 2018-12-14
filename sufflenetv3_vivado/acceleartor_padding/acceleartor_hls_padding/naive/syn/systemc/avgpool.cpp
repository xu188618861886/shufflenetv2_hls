// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "avgpool.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic avgpool::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic avgpool::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<14> avgpool::ap_ST_fsm_state1 = "1";
const sc_lv<14> avgpool::ap_ST_fsm_state2 = "10";
const sc_lv<14> avgpool::ap_ST_fsm_state3 = "100";
const sc_lv<14> avgpool::ap_ST_fsm_state4 = "1000";
const sc_lv<14> avgpool::ap_ST_fsm_state5 = "10000";
const sc_lv<14> avgpool::ap_ST_fsm_state6 = "100000";
const sc_lv<14> avgpool::ap_ST_fsm_state7 = "1000000";
const sc_lv<14> avgpool::ap_ST_fsm_state8 = "10000000";
const sc_lv<14> avgpool::ap_ST_fsm_state9 = "100000000";
const sc_lv<14> avgpool::ap_ST_fsm_state10 = "1000000000";
const sc_lv<14> avgpool::ap_ST_fsm_state11 = "10000000000";
const sc_lv<14> avgpool::ap_ST_fsm_state12 = "100000000000";
const sc_lv<14> avgpool::ap_ST_fsm_state13 = "1000000000000";
const sc_lv<14> avgpool::ap_ST_fsm_state14 = "10000000000000";
const sc_lv<32> avgpool::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> avgpool::ap_const_lv32_1 = "1";
const sc_lv<1> avgpool::ap_const_lv1_0 = "0";
const sc_lv<32> avgpool::ap_const_lv32_2 = "10";
const sc_lv<32> avgpool::ap_const_lv32_3 = "11";
const sc_lv<32> avgpool::ap_const_lv32_4 = "100";
const sc_lv<32> avgpool::ap_const_lv32_9 = "1001";
const sc_lv<32> avgpool::ap_const_lv32_C = "1100";
const sc_lv<10> avgpool::ap_const_lv10_0 = "0000000000";
const sc_lv<32> avgpool::ap_const_lv32_D = "1101";
const sc_lv<1> avgpool::ap_const_lv1_1 = "1";
const sc_lv<3> avgpool::ap_const_lv3_0 = "000";
const sc_lv<32> avgpool::ap_const_lv32_5 = "101";
const sc_lv<32> avgpool::ap_const_lv32_3D800000 = "111101100000000000000000000000";
const sc_lv<10> avgpool::ap_const_lv10_200 = "1000000000";
const sc_lv<10> avgpool::ap_const_lv10_1 = "1";
const sc_lv<2> avgpool::ap_const_lv2_0 = "00";
const sc_lv<3> avgpool::ap_const_lv3_4 = "100";
const sc_lv<3> avgpool::ap_const_lv3_1 = "1";
const bool avgpool::ap_const_boolean_1 = true;

avgpool::avgpool(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ShuffleNetV2_faddbkb_x_U114 = new ShuffleNetV2_faddbkb<1,5,32,32,32>("ShuffleNetV2_faddbkb_x_U114");
    ShuffleNetV2_faddbkb_x_U114->clk(ap_clk);
    ShuffleNetV2_faddbkb_x_U114->reset(ap_rst);
    ShuffleNetV2_faddbkb_x_U114->din0(sum_1_reg_92);
    ShuffleNetV2_faddbkb_x_U114->din1(conv_last_output_loa_reg_253);
    ShuffleNetV2_faddbkb_x_U114->ce(ap_var_for_const0);
    ShuffleNetV2_faddbkb_x_U114->dout(grp_fu_115_p2);
    ShuffleNetV2_fmulcud_x_U115 = new ShuffleNetV2_fmulcud<1,4,32,32,32>("ShuffleNetV2_fmulcud_x_U115");
    ShuffleNetV2_fmulcud_x_U115->clk(ap_clk);
    ShuffleNetV2_fmulcud_x_U115->reset(ap_rst);
    ShuffleNetV2_fmulcud_x_U115->din0(sum_reg_69);
    ShuffleNetV2_fmulcud_x_U115->din1(ap_var_for_const1);
    ShuffleNetV2_fmulcud_x_U115->ce(ap_var_for_const0);
    ShuffleNetV2_fmulcud_x_U115->dout(grp_fu_120_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state10);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state13);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state14);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_126_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_126_p2 );

    SC_METHOD(thread_co_24_fu_132_p2);
    sensitive << ( co_reg_58 );

    SC_METHOD(thread_conv_last_output_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_453_cast_fu_204_p1 );

    SC_METHOD(thread_conv_last_output_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_exitcond1_fu_154_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( h_reg_81 );

    SC_METHOD(thread_exitcond2_fu_126_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( co_reg_58 );

    SC_METHOD(thread_exitcond_fu_183_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( w_reg_104 );

    SC_METHOD(thread_h_24_fu_160_p2);
    sensitive << ( h_reg_81 );

    SC_METHOD(thread_output_r_address0);
    sensitive << ( tmp_reg_217 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_output_r_ce0);
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_output_r_d0);
    sensitive << ( tmp_s_reg_263 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_output_r_we0);
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_tmp_311_fu_142_p3);
    sensitive << ( co_reg_58 );

    SC_METHOD(thread_tmp_312_fu_170_p2);
    sensitive << ( tmp_449_cast_reg_222 );
    sensitive << ( tmp_94_cast_fu_166_p1 );

    SC_METHOD(thread_tmp_313_fu_199_p2);
    sensitive << ( tmp_452_cast_reg_235 );
    sensitive << ( tmp_95_cast_fu_195_p1 );

    SC_METHOD(thread_tmp_449_cast_fu_150_p1);
    sensitive << ( tmp_311_fu_142_p3 );

    SC_METHOD(thread_tmp_452_cast_fu_175_p3);
    sensitive << ( tmp_312_fu_170_p2 );

    SC_METHOD(thread_tmp_453_cast_fu_204_p1);
    sensitive << ( tmp_313_fu_199_p2 );

    SC_METHOD(thread_tmp_94_cast_fu_166_p1);
    sensitive << ( h_reg_81 );

    SC_METHOD(thread_tmp_95_cast_fu_195_p1);
    sensitive << ( w_reg_104 );

    SC_METHOD(thread_tmp_fu_138_p1);
    sensitive << ( co_reg_58 );

    SC_METHOD(thread_w_24_fu_189_p2);
    sensitive << ( w_reg_104 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_126_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond1_fu_154_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_183_p2 );

    SC_THREAD(thread_ap_var_for_const0);

    SC_THREAD(thread_ap_var_for_const1);

    ap_CS_fsm = "00000000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "avgpool_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, output_r_address0, "(port)output_r_address0");
    sc_trace(mVcdFile, output_r_ce0, "(port)output_r_ce0");
    sc_trace(mVcdFile, output_r_we0, "(port)output_r_we0");
    sc_trace(mVcdFile, output_r_d0, "(port)output_r_d0");
    sc_trace(mVcdFile, conv_last_output_address0, "(port)conv_last_output_address0");
    sc_trace(mVcdFile, conv_last_output_ce0, "(port)conv_last_output_ce0");
    sc_trace(mVcdFile, conv_last_output_q0, "(port)conv_last_output_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, co_24_fu_132_p2, "co_24_fu_132_p2");
    sc_trace(mVcdFile, co_24_reg_212, "co_24_reg_212");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_138_p1, "tmp_fu_138_p1");
    sc_trace(mVcdFile, tmp_reg_217, "tmp_reg_217");
    sc_trace(mVcdFile, exitcond2_fu_126_p2, "exitcond2_fu_126_p2");
    sc_trace(mVcdFile, tmp_449_cast_fu_150_p1, "tmp_449_cast_fu_150_p1");
    sc_trace(mVcdFile, tmp_449_cast_reg_222, "tmp_449_cast_reg_222");
    sc_trace(mVcdFile, h_24_fu_160_p2, "h_24_fu_160_p2");
    sc_trace(mVcdFile, h_24_reg_230, "h_24_reg_230");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_452_cast_fu_175_p3, "tmp_452_cast_fu_175_p3");
    sc_trace(mVcdFile, tmp_452_cast_reg_235, "tmp_452_cast_reg_235");
    sc_trace(mVcdFile, exitcond1_fu_154_p2, "exitcond1_fu_154_p2");
    sc_trace(mVcdFile, w_24_fu_189_p2, "w_24_fu_189_p2");
    sc_trace(mVcdFile, w_24_reg_243, "w_24_reg_243");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, exitcond_fu_183_p2, "exitcond_fu_183_p2");
    sc_trace(mVcdFile, conv_last_output_loa_reg_253, "conv_last_output_loa_reg_253");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, grp_fu_115_p2, "grp_fu_115_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, grp_fu_120_p2, "grp_fu_120_p2");
    sc_trace(mVcdFile, tmp_s_reg_263, "tmp_s_reg_263");
    sc_trace(mVcdFile, ap_CS_fsm_state13, "ap_CS_fsm_state13");
    sc_trace(mVcdFile, co_reg_58, "co_reg_58");
    sc_trace(mVcdFile, ap_CS_fsm_state14, "ap_CS_fsm_state14");
    sc_trace(mVcdFile, sum_reg_69, "sum_reg_69");
    sc_trace(mVcdFile, h_reg_81, "h_reg_81");
    sc_trace(mVcdFile, sum_1_reg_92, "sum_1_reg_92");
    sc_trace(mVcdFile, w_reg_104, "w_reg_104");
    sc_trace(mVcdFile, tmp_453_cast_fu_204_p1, "tmp_453_cast_fu_204_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, tmp_311_fu_142_p3, "tmp_311_fu_142_p3");
    sc_trace(mVcdFile, tmp_94_cast_fu_166_p1, "tmp_94_cast_fu_166_p1");
    sc_trace(mVcdFile, tmp_312_fu_170_p2, "tmp_312_fu_170_p2");
    sc_trace(mVcdFile, tmp_95_cast_fu_195_p1, "tmp_95_cast_fu_195_p1");
    sc_trace(mVcdFile, tmp_313_fu_199_p2, "tmp_313_fu_199_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

avgpool::~avgpool() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete ShuffleNetV2_faddbkb_x_U114;
    delete ShuffleNetV2_fmulcud_x_U115;
}

void avgpool::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void avgpool::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_lv32_3D800000;
}

void avgpool::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        co_reg_58 = co_24_reg_212.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        co_reg_58 = ap_const_lv10_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_183_p2.read(), ap_const_lv1_1))) {
        h_reg_81 = h_24_reg_230.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond2_fu_126_p2.read(), ap_const_lv1_0))) {
        h_reg_81 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_154_p2.read()))) {
        sum_1_reg_92 = sum_reg_69.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        sum_1_reg_92 = grp_fu_115_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_183_p2.read(), ap_const_lv1_1))) {
        sum_reg_69 = sum_1_reg_92.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond2_fu_126_p2.read(), ap_const_lv1_0))) {
        sum_reg_69 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_154_p2.read()))) {
        w_reg_104 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        w_reg_104 = w_24_reg_243.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        co_24_reg_212 = co_24_fu_132_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        conv_last_output_loa_reg_253 = conv_last_output_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        h_24_reg_230 = h_24_fu_160_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond2_fu_126_p2.read(), ap_const_lv1_0))) {
        tmp_449_cast_reg_222 = tmp_449_cast_fu_150_p1.read();
        tmp_reg_217 = tmp_fu_138_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_154_p2.read()))) {
        tmp_452_cast_reg_235 = tmp_452_cast_fu_175_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state13.read())) {
        tmp_s_reg_263 = grp_fu_120_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        w_24_reg_243 = w_24_fu_189_p2.read();
    }
}

void avgpool::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void avgpool::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void avgpool::thread_ap_CS_fsm_state13() {
    ap_CS_fsm_state13 = ap_CS_fsm.read()[12];
}

void avgpool::thread_ap_CS_fsm_state14() {
    ap_CS_fsm_state14 = ap_CS_fsm.read()[13];
}

void avgpool::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void avgpool::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void avgpool::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void avgpool::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void avgpool::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void avgpool::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond2_fu_126_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void avgpool::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void avgpool::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond2_fu_126_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void avgpool::thread_co_24_fu_132_p2() {
    co_24_fu_132_p2 = (!co_reg_58.read().is_01() || !ap_const_lv10_1.is_01())? sc_lv<10>(): (sc_biguint<10>(co_reg_58.read()) + sc_biguint<10>(ap_const_lv10_1));
}

void avgpool::thread_conv_last_output_address0() {
    conv_last_output_address0 =  (sc_lv<13>) (tmp_453_cast_fu_204_p1.read());
}

void avgpool::thread_conv_last_output_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        conv_last_output_ce0 = ap_const_logic_1;
    } else {
        conv_last_output_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_exitcond1_fu_154_p2() {
    exitcond1_fu_154_p2 = (!h_reg_81.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(h_reg_81.read() == ap_const_lv3_4);
}

void avgpool::thread_exitcond2_fu_126_p2() {
    exitcond2_fu_126_p2 = (!co_reg_58.read().is_01() || !ap_const_lv10_200.is_01())? sc_lv<1>(): sc_lv<1>(co_reg_58.read() == ap_const_lv10_200);
}

void avgpool::thread_exitcond_fu_183_p2() {
    exitcond_fu_183_p2 = (!w_reg_104.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(w_reg_104.read() == ap_const_lv3_4);
}

void avgpool::thread_h_24_fu_160_p2() {
    h_24_fu_160_p2 = (!h_reg_81.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(h_reg_81.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void avgpool::thread_output_r_address0() {
    output_r_address0 =  (sc_lv<9>) (tmp_reg_217.read());
}

void avgpool::thread_output_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        output_r_ce0 = ap_const_logic_1;
    } else {
        output_r_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_output_r_d0() {
    output_r_d0 = tmp_s_reg_263.read();
}

void avgpool::thread_output_r_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        output_r_we0 = ap_const_logic_1;
    } else {
        output_r_we0 = ap_const_logic_0;
    }
}

void avgpool::thread_tmp_311_fu_142_p3() {
    tmp_311_fu_142_p3 = esl_concat<10,2>(co_reg_58.read(), ap_const_lv2_0);
}

void avgpool::thread_tmp_312_fu_170_p2() {
    tmp_312_fu_170_p2 = (!tmp_94_cast_fu_166_p1.read().is_01() || !tmp_449_cast_reg_222.read().is_01())? sc_lv<13>(): (sc_biguint<13>(tmp_94_cast_fu_166_p1.read()) + sc_biguint<13>(tmp_449_cast_reg_222.read()));
}

void avgpool::thread_tmp_313_fu_199_p2() {
    tmp_313_fu_199_p2 = (!tmp_452_cast_reg_235.read().is_01() || !tmp_95_cast_fu_195_p1.read().is_01())? sc_lv<15>(): (sc_biguint<15>(tmp_452_cast_reg_235.read()) + sc_biguint<15>(tmp_95_cast_fu_195_p1.read()));
}

void avgpool::thread_tmp_449_cast_fu_150_p1() {
    tmp_449_cast_fu_150_p1 = esl_zext<13,12>(tmp_311_fu_142_p3.read());
}

void avgpool::thread_tmp_452_cast_fu_175_p3() {
    tmp_452_cast_fu_175_p3 = esl_concat<13,2>(tmp_312_fu_170_p2.read(), ap_const_lv2_0);
}

void avgpool::thread_tmp_453_cast_fu_204_p1() {
    tmp_453_cast_fu_204_p1 = esl_zext<64,15>(tmp_313_fu_199_p2.read());
}

void avgpool::thread_tmp_94_cast_fu_166_p1() {
    tmp_94_cast_fu_166_p1 = esl_zext<13,3>(h_reg_81.read());
}

void avgpool::thread_tmp_95_cast_fu_195_p1() {
    tmp_95_cast_fu_195_p1 = esl_zext<15,3>(w_reg_104.read());
}

void avgpool::thread_tmp_fu_138_p1() {
    tmp_fu_138_p1 = esl_zext<64,10>(co_reg_58.read());
}

void avgpool::thread_w_24_fu_189_p2() {
    w_24_fu_189_p2 = (!w_reg_104.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(w_reg_104.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void avgpool::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond2_fu_126_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_154_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state11;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(exitcond_fu_183_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state12;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_fsm_state13;
            break;
        case 4096 : 
            ap_NS_fsm = ap_ST_fsm_state14;
            break;
        case 8192 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXXXXXXXX";
            break;
    }
}

}

