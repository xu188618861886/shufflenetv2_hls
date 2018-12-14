-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity subconv_3x3_32_strid is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_r_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    input_r_ce0 : OUT STD_LOGIC;
    input_r_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    weight_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    weight_ce0 : OUT STD_LOGIC;
    weight_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    bias_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    bias_ce0 : OUT STD_LOGIC;
    bias_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    output_r_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    output_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of subconv_3x3_32_strid is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (22 downto 0) := "00000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (22 downto 0) := "00000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (22 downto 0) := "00000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (22 downto 0) := "00000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (22 downto 0) := "00000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (22 downto 0) := "00000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (22 downto 0) := "00001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (22 downto 0) := "00010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (22 downto 0) := "00100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (22 downto 0) := "01000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (22 downto 0) := "10000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv5_18 : STD_LOGIC_VECTOR (4 downto 0) := "11000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_11 : STD_LOGIC_VECTOR (4 downto 0) := "10001";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv9_2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal co_4_fu_202_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal co_4_reg_520 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_54_fu_245_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_54_reg_525 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond4_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_75_cast_fu_269_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_75_cast_reg_530 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_58_fu_285_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_58_reg_535 : STD_LOGIC_VECTOR (9 downto 0);
    signal bias_addr_reg_540 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_s_fu_297_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_s_reg_548 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal exitcond3_fu_291_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_60_fu_334_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_60_reg_553 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_28_fu_346_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_28_reg_561 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal exitcond2_fu_340_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_4_fu_354_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal m_4_fu_366_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal m_4_reg_574 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_63_fu_387_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_63_reg_579 : STD_LOGIC_VECTOR (8 downto 0);
    signal exitcond1_fu_360_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_65_fu_437_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_65_reg_584 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_61_fu_447_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_61_reg_589 : STD_LOGIC_VECTOR (13 downto 0);
    signal w_4_fu_452_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal w_4_reg_594 : STD_LOGIC_VECTOR (4 downto 0);
    signal n_4_fu_464_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal n_4_reg_602 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal exitcond_fu_458_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal weight_load_reg_617 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal input_load_reg_622 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_192_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_36_reg_627 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal grp_fu_186_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal bias_load_reg_637 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state17 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state17 : signal is "none";
    signal result_reg_642 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state22 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state22 : signal is "none";
    signal co_reg_105 : STD_LOGIC_VECTOR (4 downto 0);
    signal h_reg_116 : STD_LOGIC_VECTOR (4 downto 0);
    signal w_reg_128 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state23 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state23 : signal is "none";
    signal sum_reg_140 : STD_LOGIC_VECTOR (31 downto 0);
    signal m_reg_152 : STD_LOGIC_VECTOR (1 downto 0);
    signal sum_1_reg_163 : STD_LOGIC_VECTOR (31 downto 0);
    signal n_reg_175 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_fu_208_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_91_cast_fu_479_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_92_cast_fu_508_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_83_cast_fu_513_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_186_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_186_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal ap_CS_fsm_state18 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state18 : signal is "none";
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal tmp_52_fu_217_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_53_fu_229_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_shl4_cast_fu_241_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl3_cast_fu_225_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_55_fu_251_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl2_cast_fu_259_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_cast_fu_213_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_56_fu_263_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_57_fu_273_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl4_cast1_fu_237_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl_cast_fu_281_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_27_cast_fu_305_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_59_fu_309_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_39_fu_322_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl6_cast_fu_330_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_shl5_cast_fu_314_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_30_cast_fu_372_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_62_fu_376_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_40_fu_381_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp1_fu_393_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp1_cast_fu_399_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_31_fu_403_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_32_cast_fu_408_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_64_fu_412_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_41_fu_425_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl8_cast_fu_433_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_shl7_cast_fu_417_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_29_cast_fu_443_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_33_cast_fu_470_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_66_fu_474_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp2_fu_484_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp2_cast_fu_490_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_34_fu_494_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_35_cast_fu_499_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_67_fu_503_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (22 downto 0);

    component ShuffleNetV2_faddbkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component ShuffleNetV2_fmulcud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    ShuffleNetV2_faddbkb_x_U15 : component ShuffleNetV2_faddbkb
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_186_p0,
        din1 => grp_fu_186_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_186_p2);

    ShuffleNetV2_fmulcud_x_U16 : component ShuffleNetV2_fmulcud
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => weight_load_reg_617,
        din1 => input_load_reg_622,
        ce => ap_const_logic_1,
        dout => grp_fu_192_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    co_reg_105_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_291_p2 = ap_const_lv1_1))) then 
                co_reg_105 <= co_4_reg_520;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                co_reg_105 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    h_reg_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_196_p2 = ap_const_lv1_0))) then 
                h_reg_116 <= ap_const_lv5_1;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond2_fu_340_p2 = ap_const_lv1_1))) then 
                h_reg_116 <= h_4_fu_354_p2;
            end if; 
        end if;
    end process;

    m_reg_152_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_458_p2))) then 
                m_reg_152 <= m_4_reg_574;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond2_fu_340_p2))) then 
                m_reg_152 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    n_reg_175_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_360_p2))) then 
                n_reg_175 <= ap_const_lv2_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
                n_reg_175 <= n_4_reg_602;
            end if; 
        end if;
    end process;

    sum_1_reg_163_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_360_p2))) then 
                sum_1_reg_163 <= sum_reg_140;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
                sum_1_reg_163 <= grp_fu_186_p2;
            end if; 
        end if;
    end process;

    sum_reg_140_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_458_p2))) then 
                sum_reg_140 <= sum_1_reg_163;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond2_fu_340_p2))) then 
                sum_reg_140 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    w_reg_128_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond3_fu_291_p2))) then 
                w_reg_128 <= ap_const_lv5_1;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state23)) then 
                w_reg_128 <= w_4_reg_594;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_196_p2 = ap_const_lv1_0))) then
                bias_addr_reg_540 <= tmp_fu_208_p1(5 - 1 downto 0);
                    tmp_54_reg_525(10 downto 1) <= tmp_54_fu_245_p2(10 downto 1);
                    tmp_58_reg_535(9 downto 1) <= tmp_58_fu_285_p2(9 downto 1);
                tmp_75_cast_reg_530 <= tmp_75_cast_fu_269_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state17)) then
                bias_load_reg_637 <= bias_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                co_4_reg_520 <= co_4_fu_202_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                input_load_reg_622 <= input_r_q0;
                weight_load_reg_617 <= weight_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                m_4_reg_574 <= m_4_fu_366_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                n_4_reg_602 <= n_4_fu_464_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state22)) then
                result_reg_642 <= grp_fu_186_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond2_fu_340_p2))) then
                    tmp_28_reg_561(5 downto 1) <= tmp_28_fu_346_p3(5 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                tmp_36_reg_627 <= grp_fu_192_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond3_fu_291_p2))) then
                    tmp_60_reg_553(13 downto 1) <= tmp_60_fu_334_p2(13 downto 1);
                    tmp_s_reg_548(5 downto 1) <= tmp_s_fu_297_p3(5 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_1 = exitcond1_fu_360_p2))) then
                tmp_61_reg_589 <= tmp_61_fu_447_p2;
                w_4_reg_594 <= w_4_fu_452_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_360_p2))) then
                tmp_63_reg_579 <= tmp_63_fu_387_p2;
                    tmp_65_reg_584(15 downto 1) <= tmp_65_fu_437_p2(15 downto 1);
            end if;
        end if;
    end process;
    tmp_54_reg_525(0) <= '0';
    tmp_58_reg_535(0) <= '0';
    tmp_s_reg_548(0) <= '0';
    tmp_60_reg_553(0) <= '0';
    tmp_28_reg_561(0) <= '0';
    tmp_65_reg_584(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond4_fu_196_p2, ap_CS_fsm_state3, exitcond3_fu_291_p2, ap_CS_fsm_state4, exitcond2_fu_340_p2, ap_CS_fsm_state5, exitcond1_fu_360_p2, ap_CS_fsm_state6, exitcond_fu_458_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_196_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_291_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond2_fu_340_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_360_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state17;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_1 = exitcond_fu_458_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state17 <= ap_CS_fsm(16);
    ap_CS_fsm_state18 <= ap_CS_fsm(17);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state22 <= ap_CS_fsm(21);
    ap_CS_fsm_state23 <= ap_CS_fsm(22);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond4_fu_196_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_196_p2 = ap_const_lv1_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond4_fu_196_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond4_fu_196_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bias_address0 <= bias_addr_reg_540;

    bias_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            bias_ce0 <= ap_const_logic_1;
        else 
            bias_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    co_4_fu_202_p2 <= std_logic_vector(unsigned(co_reg_105) + unsigned(ap_const_lv5_1));
    exitcond1_fu_360_p2 <= "1" when (m_reg_152 = ap_const_lv2_3) else "0";
    exitcond2_fu_340_p2 <= "1" when (w_reg_128 = ap_const_lv5_11) else "0";
    exitcond3_fu_291_p2 <= "1" when (h_reg_116 = ap_const_lv5_11) else "0";
    exitcond4_fu_196_p2 <= "1" when (co_reg_105 = ap_const_lv5_18) else "0";
    exitcond_fu_458_p2 <= "1" when (n_reg_175 = ap_const_lv2_3) else "0";

    grp_fu_186_p0_assign_proc : process(sum_reg_140, sum_1_reg_163, ap_CS_fsm_state12, ap_CS_fsm_state18)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state18)) then 
            grp_fu_186_p0 <= sum_reg_140;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            grp_fu_186_p0 <= sum_1_reg_163;
        else 
            grp_fu_186_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_186_p1_assign_proc : process(tmp_36_reg_627, bias_load_reg_637, ap_CS_fsm_state12, ap_CS_fsm_state18)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state18)) then 
            grp_fu_186_p1 <= bias_load_reg_637;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            grp_fu_186_p1 <= tmp_36_reg_627;
        else 
            grp_fu_186_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    h_4_fu_354_p2 <= std_logic_vector(unsigned(h_reg_116) + unsigned(ap_const_lv5_1));
    input_r_address0 <= tmp_92_cast_fu_508_p1(15 - 1 downto 0);

    input_r_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    m_4_fu_366_p2 <= std_logic_vector(unsigned(m_reg_152) + unsigned(ap_const_lv2_1));
    n_4_fu_464_p2 <= std_logic_vector(unsigned(n_reg_175) + unsigned(ap_const_lv2_1));
    output_r_address0 <= tmp_83_cast_fu_513_p1(13 - 1 downto 0);

    output_r_ce0_assign_proc : process(ap_CS_fsm_state23)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state23)) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_d0 <= result_reg_642;

    output_r_we0_assign_proc : process(ap_CS_fsm_state23)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state23)) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_shl2_cast_fu_259_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_55_fu_251_p3),8));
    p_shl3_cast_fu_225_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_52_fu_217_p3),11));
    p_shl4_cast1_fu_237_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_53_fu_229_p3),10));
    p_shl4_cast_fu_241_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_53_fu_229_p3),11));
    p_shl5_cast_fu_314_p3 <= (tmp_59_fu_309_p2 & ap_const_lv4_0);
    p_shl6_cast_fu_330_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_39_fu_322_p3),14));
    p_shl7_cast_fu_417_p3 <= (tmp_64_fu_412_p2 & ap_const_lv5_0);
    p_shl8_cast_fu_433_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_41_fu_425_p3),16));
    p_shl_cast_fu_281_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_57_fu_273_p3),10));
        tmp1_cast_fu_399_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp1_fu_393_p2),6));

    tmp1_fu_393_p2 <= (m_reg_152 xor ap_const_lv2_2);
        tmp2_cast_fu_490_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp2_fu_484_p2),6));

    tmp2_fu_484_p2 <= (n_reg_175 xor ap_const_lv2_2);
    tmp_27_cast_fu_305_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_116),10));
    tmp_28_fu_346_p3 <= (w_reg_128 & ap_const_lv1_0);
    tmp_29_cast_fu_443_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_128),14));
    tmp_30_cast_fu_372_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(m_reg_152),9));
    tmp_31_fu_403_p2 <= std_logic_vector(unsigned(tmp_s_reg_548) + unsigned(tmp1_cast_fu_399_p1));
    tmp_32_cast_fu_408_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_31_fu_403_p2),11));
    tmp_33_cast_fu_470_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n_reg_175),9));
    tmp_34_fu_494_p2 <= std_logic_vector(unsigned(tmp_28_reg_561) + unsigned(tmp2_cast_fu_490_p1));
    tmp_35_cast_fu_499_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_34_fu_494_p2),16));
    tmp_39_fu_322_p3 <= (tmp_59_fu_309_p2 & ap_const_lv1_0);
    tmp_40_fu_381_p2 <= std_logic_vector(shift_left(unsigned(tmp_62_fu_376_p2),to_integer(unsigned('0' & ap_const_lv9_2(9-1 downto 0)))));
    tmp_41_fu_425_p3 <= (tmp_64_fu_412_p2 & ap_const_lv1_0);
    tmp_52_fu_217_p3 <= (co_reg_105 & ap_const_lv5_0);
    tmp_53_fu_229_p3 <= (co_reg_105 & ap_const_lv1_0);
    tmp_54_fu_245_p2 <= std_logic_vector(unsigned(p_shl4_cast_fu_241_p1) + unsigned(p_shl3_cast_fu_225_p1));
    tmp_55_fu_251_p3 <= (co_reg_105 & ap_const_lv2_0);
    tmp_56_fu_263_p2 <= std_logic_vector(unsigned(p_shl2_cast_fu_259_p1) - unsigned(tmp_cast_fu_213_p1));
    tmp_57_fu_273_p3 <= (co_reg_105 & ap_const_lv4_0);
    tmp_58_fu_285_p2 <= std_logic_vector(unsigned(p_shl4_cast1_fu_237_p1) + unsigned(p_shl_cast_fu_281_p1));
    tmp_59_fu_309_p2 <= std_logic_vector(unsigned(tmp_58_reg_535) + unsigned(tmp_27_cast_fu_305_p1));
    tmp_60_fu_334_p2 <= std_logic_vector(unsigned(p_shl6_cast_fu_330_p1) + unsigned(p_shl5_cast_fu_314_p3));
    tmp_61_fu_447_p2 <= std_logic_vector(unsigned(tmp_60_reg_553) + unsigned(tmp_29_cast_fu_443_p1));
    tmp_62_fu_376_p2 <= std_logic_vector(signed(tmp_75_cast_reg_530) + signed(tmp_30_cast_fu_372_p1));
    tmp_63_fu_387_p2 <= std_logic_vector(unsigned(tmp_40_fu_381_p2) - unsigned(tmp_62_fu_376_p2));
    tmp_64_fu_412_p2 <= std_logic_vector(unsigned(tmp_54_reg_525) + unsigned(tmp_32_cast_fu_408_p1));
    tmp_65_fu_437_p2 <= std_logic_vector(unsigned(p_shl8_cast_fu_433_p1) + unsigned(p_shl7_cast_fu_417_p3));
    tmp_66_fu_474_p2 <= std_logic_vector(unsigned(tmp_63_reg_579) + unsigned(tmp_33_cast_fu_470_p1));
    tmp_67_fu_503_p2 <= std_logic_vector(unsigned(tmp_65_reg_584) + unsigned(tmp_35_cast_fu_499_p1));
        tmp_75_cast_fu_269_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_56_fu_263_p2),9));

    tmp_83_cast_fu_513_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_61_reg_589),64));
    tmp_91_cast_fu_479_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_66_fu_474_p2),64));
    tmp_92_cast_fu_508_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_67_fu_503_p2),64));
    tmp_cast_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(co_reg_105),8));
    tmp_fu_208_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(co_reg_105),64));
    tmp_s_fu_297_p3 <= (h_reg_116 & ap_const_lv1_0);
    w_4_fu_452_p2 <= std_logic_vector(unsigned(w_reg_128) + unsigned(ap_const_lv5_1));
    weight_address0 <= tmp_91_cast_fu_479_p1(8 - 1 downto 0);

    weight_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            weight_ce0 <= ap_const_logic_1;
        else 
            weight_ce0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;