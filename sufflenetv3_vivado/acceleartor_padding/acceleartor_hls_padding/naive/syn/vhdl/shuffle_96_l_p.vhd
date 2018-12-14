-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shuffle_96_l_p is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    left_r_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    left_r_ce0 : OUT STD_LOGIC;
    left_r_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    output_r_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    output_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of shuffle_96_l_p is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv8_C0 : STD_LOGIC_VECTOR (7 downto 0) := "11000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_82_fu_106_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_82_reg_321 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal co_15_fu_116_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal co_15_reg_328 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_291_cast_fu_162_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_291_cast_reg_333 : STD_LOGIC_VECTOR (11 downto 0);
    signal exitcond2_fu_110_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_294_cast_fu_196_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_294_cast_reg_338 : STD_LOGIC_VECTOR (12 downto 0);
    signal h_15_fu_206_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal h_15_reg_346 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_213_fu_245_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_213_reg_351 : STD_LOGIC_VECTOR (12 downto 0);
    signal exitcond1_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_215_fu_276_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_215_reg_356 : STD_LOGIC_VECTOR (13 downto 0);
    signal w_15_fu_288_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal w_15_reg_364 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal exitcond_fu_282_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_217_fu_312_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_217_reg_374 : STD_LOGIC_VECTOR (13 downto 0);
    signal co_reg_73 : STD_LOGIC_VECTOR (7 downto 0);
    signal h_reg_84 : STD_LOGIC_VECTOR (2 downto 0);
    signal w_reg_95 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_303_cast_fu_307_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_304_cast_fu_317_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_122_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_s_fu_132_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_207_fu_144_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl2_cast_fu_140_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl3_cast_fu_152_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_208_fu_156_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_209_fu_166_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_210_fu_178_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl_cast_fu_174_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl1_cast_fu_186_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_211_fu_190_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_cast_fu_216_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_212_fu_220_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_83_fu_225_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl6_cast_fu_229_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_shl7_cast_fu_237_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_cast9_fu_212_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_214_fu_251_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_84_fu_256_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl4_cast_fu_260_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_shl5_cast_fu_268_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_75_cast_fu_298_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_216_fu_302_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_75_cast8_fu_294_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);


begin




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


    co_reg_73_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond1_fu_200_p2 = ap_const_lv1_1))) then 
                co_reg_73 <= co_15_reg_328;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                co_reg_73 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    h_reg_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_282_p2 = ap_const_lv1_1))) then 
                h_reg_84 <= h_15_reg_346;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_110_p2 = ap_const_lv1_0))) then 
                h_reg_84 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    w_reg_95_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond1_fu_200_p2))) then 
                w_reg_95 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                w_reg_95 <= w_15_reg_364;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                co_15_reg_328 <= co_15_fu_116_p2;
                tmp_82_reg_321 <= tmp_82_fu_106_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                h_15_reg_346 <= h_15_fu_206_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond1_fu_200_p2))) then
                    tmp_213_reg_351(12 downto 1) <= tmp_213_fu_245_p2(12 downto 1);
                    tmp_215_reg_356(13 downto 1) <= tmp_215_fu_276_p2(13 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond_fu_282_p2) and (tmp_82_reg_321 = ap_const_lv1_0))) then
                tmp_217_reg_374 <= tmp_217_fu_312_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_110_p2 = ap_const_lv1_0))) then
                    tmp_291_cast_reg_333(11 downto 1) <= tmp_291_cast_fu_162_p1(11 downto 1);
                    tmp_294_cast_reg_338(12 downto 1) <= tmp_294_cast_fu_196_p1(12 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                w_15_reg_364 <= w_15_fu_288_p2;
            end if;
        end if;
    end process;
    tmp_291_cast_reg_333(0) <= '0';
    tmp_294_cast_reg_338(0) <= '0';
    tmp_213_reg_351(0) <= '0';
    tmp_215_reg_356(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_110_p2, ap_CS_fsm_state3, exitcond1_fu_200_p2, ap_CS_fsm_state4, exitcond_fu_282_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_110_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond1_fu_200_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_282_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_110_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_110_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond2_fu_110_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_fu_110_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    co_15_fu_116_p2 <= std_logic_vector(unsigned(ap_const_lv8_1) + unsigned(co_reg_73));
    exitcond1_fu_200_p2 <= "1" when (h_reg_84 = ap_const_lv3_6) else "0";
    exitcond2_fu_110_p2 <= "1" when (co_reg_73 = ap_const_lv8_C0) else "0";
    exitcond_fu_282_p2 <= "1" when (w_reg_95 = ap_const_lv3_6) else "0";
    h_15_fu_206_p2 <= std_logic_vector(unsigned(h_reg_84) + unsigned(ap_const_lv3_1));
    left_r_address0 <= tmp_303_cast_fu_307_p1(12 - 1 downto 0);

    left_r_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            left_r_ce0 <= ap_const_logic_1;
        else 
            left_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_address0 <= tmp_304_cast_fu_317_p1(13 - 1 downto 0);

    output_r_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_d0 <= left_r_q0;

    output_r_we0_assign_proc : process(tmp_82_reg_321, ap_CS_fsm_state5)
    begin
        if (((tmp_82_reg_321 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_shl1_cast_fu_186_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_210_fu_178_p3),12));
    p_shl2_cast_fu_140_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_132_p3),11));
    p_shl3_cast_fu_152_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_207_fu_144_p3),11));
    p_shl4_cast_fu_260_p3 <= (tmp_84_fu_256_p1 & ap_const_lv3_0);
    p_shl5_cast_fu_268_p3 <= (tmp_214_fu_251_p2 & ap_const_lv1_0);
    p_shl6_cast_fu_229_p3 <= (tmp_83_fu_225_p1 & ap_const_lv3_0);
    p_shl7_cast_fu_237_p3 <= (tmp_212_fu_220_p2 & ap_const_lv1_0);
    p_shl_cast_fu_174_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_209_fu_166_p3),12));
    tmp_207_fu_144_p3 <= (tmp_fu_122_p4 & ap_const_lv1_0);
    tmp_208_fu_156_p2 <= std_logic_vector(unsigned(p_shl2_cast_fu_140_p1) - unsigned(p_shl3_cast_fu_152_p1));
    tmp_209_fu_166_p3 <= (co_reg_73 & ap_const_lv3_0);
    tmp_210_fu_178_p3 <= (co_reg_73 & ap_const_lv1_0);
    tmp_211_fu_190_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_174_p1) - unsigned(p_shl1_cast_fu_186_p1));
    tmp_212_fu_220_p2 <= std_logic_vector(unsigned(tmp_cast_fu_216_p1) + unsigned(tmp_291_cast_reg_333));
    tmp_213_fu_245_p2 <= std_logic_vector(unsigned(p_shl6_cast_fu_229_p3) - unsigned(p_shl7_cast_fu_237_p3));
    tmp_214_fu_251_p2 <= std_logic_vector(unsigned(tmp_cast9_fu_212_p1) + unsigned(tmp_294_cast_reg_338));
    tmp_215_fu_276_p2 <= std_logic_vector(unsigned(p_shl4_cast_fu_260_p3) - unsigned(p_shl5_cast_fu_268_p3));
    tmp_216_fu_302_p2 <= std_logic_vector(unsigned(tmp_213_reg_351) + unsigned(tmp_75_cast_fu_298_p1));
    tmp_217_fu_312_p2 <= std_logic_vector(unsigned(tmp_215_reg_356) + unsigned(tmp_75_cast8_fu_294_p1));
        tmp_291_cast_fu_162_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_208_fu_156_p2),12));

        tmp_294_cast_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_211_fu_190_p2),13));

    tmp_303_cast_fu_307_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_216_fu_302_p2),64));
    tmp_304_cast_fu_317_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_217_reg_374),64));
    tmp_75_cast8_fu_294_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_95),14));
    tmp_75_cast_fu_298_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_reg_95),13));
    tmp_82_fu_106_p1 <= co_reg_73(1 - 1 downto 0);
    tmp_83_fu_225_p1 <= tmp_212_fu_220_p2(10 - 1 downto 0);
    tmp_84_fu_256_p1 <= tmp_214_fu_251_p2(11 - 1 downto 0);
    tmp_cast9_fu_212_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_84),13));
    tmp_cast_fu_216_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_reg_84),12));
    tmp_fu_122_p4 <= co_reg_73(7 downto 1);
    tmp_s_fu_132_p3 <= (tmp_fu_122_p4 & ap_const_lv3_0);
    w_15_fu_288_p2 <= std_logic_vector(unsigned(w_reg_95) + unsigned(ap_const_lv3_1));
end behav;
