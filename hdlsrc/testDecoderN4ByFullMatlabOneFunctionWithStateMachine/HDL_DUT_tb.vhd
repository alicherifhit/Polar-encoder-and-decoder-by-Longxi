-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc\testDecoderN4ByFullMatlabOneFunctionWithStateMachine\HDL_DUT_tb.vhd
-- Created: 2017-04-29 01:07:29
-- 
-- Generated by MATLAB 9.1 and HDL Coder 3.9
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 0.2
-- Target subsystem base rate: 0.2
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        0.2
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- out1                          ce_out        0.2
-- out2                          ce_out        0.2
-- out3                          ce_out        0.2
-- out4                          ce_out        0.2
-- out5                          ce_out        0.2
-- out6                          ce_out        0.2
-- out7                          ce_out        0.2
-- out8                          ce_out        0.2
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: HDL_DUT_tb
-- Source Path: 
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.HDL_DUT_tb_pkg.ALL;

ENTITY HDL_DUT_tb IS
END HDL_DUT_tb;


ARCHITECTURE rtl OF HDL_DUT_tb IS

  -- Component Declarations
  COMPONENT HDL_DUT
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          in1                             :   IN    std_logic_vector(7 DOWNTO 0);  -- int8
          in2                             :   IN    std_logic_vector(7 DOWNTO 0);  -- int8
          in3                             :   IN    std_logic_vector(7 DOWNTO 0);  -- int8
          in4                             :   IN    std_logic_vector(7 DOWNTO 0);  -- int8
          ce_out                          :   OUT   std_logic;
          out1                            :   OUT   std_logic;
          out2                            :   OUT   std_logic;
          out3                            :   OUT   std_logic;
          out4                            :   OUT   std_logic;
          out5                            :   OUT   std_logic_vector(31 DOWNTO 0);  -- int32
          out6                            :   OUT   std_logic_vector(31 DOWNTO 0);  -- int32
          out7                            :   OUT   std_logic_vector(31 DOWNTO 0);  -- int32
          out8                            :   OUT   std_logic_vector(31 DOWNTO 0)  -- int32
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : HDL_DUT
    USE ENTITY work.HDL_DUT(rtl);

  -- Constants
  CONSTANT out3_expected_table_data       : std_logic_vector(0 TO 50) := 
    ('0',
     '0',
     '0',
     '0',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1',
     '1');  -- boolean [51]
  CONSTANT out5_expected_table_data       : vector_of_std_logic_vector32(0 TO 50) := 
    (X"00000000",
     X"00000000",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC",
     X"FFFFFFEC");  -- ufix32 [51]
  CONSTANT out6_expected_table_data       : vector_of_std_logic_vector32(0 TO 50) := 
    (X"00000000",
     X"00000000",
     X"00000000",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018",
     X"00000018");  -- ufix32 [51]
  CONSTANT out7_expected_table_data       : vector_of_std_logic_vector32(0 TO 50) := 
    (X"00000000",
     X"00000000",
     X"00000000",
     X"00000000",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4",
     X"FFFFFFE4");  -- ufix32 [51]
  CONSTANT out8_expected_table_data       : vector_of_std_logic_vector32(0 TO 50) := 
    (X"00000000",
     X"00000000",
     X"00000000",
     X"00000000",
     X"00000000",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088",
     X"00000088");  -- ufix32 [51]

  -- Signals
  SIGNAL clk                              : std_logic;
  SIGNAL reset                            : std_logic;
  SIGNAL clk_enable                       : std_logic;
  SIGNAL rawData_in1                      : signed(7 DOWNTO 0);  -- int8
  SIGNAL rawData_in2                      : signed(7 DOWNTO 0);  -- int8
  SIGNAL rawData_in3                      : signed(7 DOWNTO 0);  -- int8
  SIGNAL rawData_in4                      : signed(7 DOWNTO 0);  -- int8
  SIGNAL out8_done                        : std_logic;  -- ufix1
  SIGNAL rdEnb                            : std_logic;
  SIGNAL out8_done_enb                    : std_logic;  -- ufix1
  SIGNAL out1_addr                        : unsigned(5 DOWNTO 0);  -- ufix6
  SIGNAL out8_lastAddr                    : std_logic;  -- ufix1
  SIGNAL resetn                           : std_logic;
  SIGNAL check8_done                      : std_logic;  -- ufix1
  SIGNAL out7_done                        : std_logic;  -- ufix1
  SIGNAL out7_done_enb                    : std_logic;  -- ufix1
  SIGNAL out7_lastAddr                    : std_logic;  -- ufix1
  SIGNAL check7_done                      : std_logic;  -- ufix1
  SIGNAL out6_done                        : std_logic;  -- ufix1
  SIGNAL out6_done_enb                    : std_logic;  -- ufix1
  SIGNAL out6_lastAddr                    : std_logic;  -- ufix1
  SIGNAL check6_done                      : std_logic;  -- ufix1
  SIGNAL out5_done                        : std_logic;  -- ufix1
  SIGNAL out5_done_enb                    : std_logic;  -- ufix1
  SIGNAL out5_lastAddr                    : std_logic;  -- ufix1
  SIGNAL check5_done                      : std_logic;  -- ufix1
  SIGNAL out4_done                        : std_logic;  -- ufix1
  SIGNAL out4_done_enb                    : std_logic;  -- ufix1
  SIGNAL out4_lastAddr                    : std_logic;  -- ufix1
  SIGNAL check4_done                      : std_logic;  -- ufix1
  SIGNAL out3_done                        : std_logic;  -- ufix1
  SIGNAL out3_done_enb                    : std_logic;  -- ufix1
  SIGNAL out3_lastAddr                    : std_logic;  -- ufix1
  SIGNAL check3_done                      : std_logic;  -- ufix1
  SIGNAL out2_done                        : std_logic;  -- ufix1
  SIGNAL out2_done_enb                    : std_logic;  -- ufix1
  SIGNAL out2_lastAddr                    : std_logic;  -- ufix1
  SIGNAL check2_done                      : std_logic;  -- ufix1
  SIGNAL out1_done                        : std_logic;  -- ufix1
  SIGNAL out1_done_enb                    : std_logic;  -- ufix1
  SIGNAL out1_active                      : std_logic;  -- ufix1
  SIGNAL holdData_in4                     : signed(7 DOWNTO 0);  -- int8
  SIGNAL in4_offset                       : signed(7 DOWNTO 0);  -- int8
  SIGNAL in4_1                            : signed(7 DOWNTO 0);  -- int8
  SIGNAL in4_2                            : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL holdData_in3                     : signed(7 DOWNTO 0);  -- int8
  SIGNAL in3_offset                       : signed(7 DOWNTO 0);  -- int8
  SIGNAL in3_1                            : signed(7 DOWNTO 0);  -- int8
  SIGNAL in3_2                            : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL holdData_in2                     : signed(7 DOWNTO 0);  -- int8
  SIGNAL in2_offset                       : signed(7 DOWNTO 0);  -- int8
  SIGNAL in2_1                            : signed(7 DOWNTO 0);  -- int8
  SIGNAL in2_2                            : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL holdData_in1                     : signed(7 DOWNTO 0);  -- int8
  SIGNAL in1_offset                       : signed(7 DOWNTO 0);  -- int8
  SIGNAL in1_1                            : signed(7 DOWNTO 0);  -- int8
  SIGNAL in1_2                            : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL snkDone                          : std_logic;
  SIGNAL snkDonen                         : std_logic;
  SIGNAL tb_enb                           : std_logic;
  SIGNAL tb_enb_delay                     : std_logic;
  SIGNAL ce_out                           : std_logic;
  SIGNAL out1                             : std_logic;
  SIGNAL out2                             : std_logic;
  SIGNAL out3                             : std_logic;
  SIGNAL out4                             : std_logic;
  SIGNAL out5                             : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL out6                             : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL out7                             : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL out8                             : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL out1_enb                         : std_logic;  -- ufix1
  SIGNAL out1_lastAddr                    : std_logic;  -- ufix1
  SIGNAL check1_done                      : std_logic;  -- ufix1
  SIGNAL out1_expected_1                  : std_logic;
  SIGNAL out1_ref                         : std_logic;
  SIGNAL out1_testFailure                 : std_logic;  -- ufix1
  SIGNAL out2_expected_1                  : std_logic;
  SIGNAL out2_ref                         : std_logic;
  SIGNAL out2_testFailure                 : std_logic;  -- ufix1
  SIGNAL out3_expected_1                  : std_logic;
  SIGNAL out3_expected_2                  : std_logic;
  SIGNAL out3_ref                         : std_logic;
  SIGNAL out3_testFailure                 : std_logic;  -- ufix1
  SIGNAL out4_expected_1                  : std_logic;
  SIGNAL out4_ref                         : std_logic;
  SIGNAL out4_testFailure                 : std_logic;  -- ufix1
  SIGNAL out5_signed                      : signed(31 DOWNTO 0);  -- int32
  SIGNAL out5_expected_1                  : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL out5_expected_2                  : signed(31 DOWNTO 0);  -- int32
  SIGNAL out5_ref                         : signed(31 DOWNTO 0);  -- int32
  SIGNAL out5_testFailure                 : std_logic;  -- ufix1
  SIGNAL out6_signed                      : signed(31 DOWNTO 0);  -- int32
  SIGNAL out6_expected_1                  : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL out6_expected_2                  : signed(31 DOWNTO 0);  -- int32
  SIGNAL out6_ref                         : signed(31 DOWNTO 0);  -- int32
  SIGNAL out6_testFailure                 : std_logic;  -- ufix1
  SIGNAL out7_signed                      : signed(31 DOWNTO 0);  -- int32
  SIGNAL out7_expected_1                  : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL out7_expected_2                  : signed(31 DOWNTO 0);  -- int32
  SIGNAL out7_ref                         : signed(31 DOWNTO 0);  -- int32
  SIGNAL out7_testFailure                 : std_logic;  -- ufix1
  SIGNAL out8_signed                      : signed(31 DOWNTO 0);  -- int32
  SIGNAL out8_expected_1                  : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL out8_expected_2                  : signed(31 DOWNTO 0);  -- int32
  SIGNAL out8_ref                         : signed(31 DOWNTO 0);  -- int32
  SIGNAL out8_testFailure                 : std_logic;  -- ufix1
  SIGNAL testFailure                      : std_logic;  -- ufix1

BEGIN
  u_HDL_DUT : HDL_DUT
    PORT MAP( clk => clk,
              reset => reset,
              clk_enable => clk_enable,
              in1 => in1_2,  -- int8
              in2 => in2_2,  -- int8
              in3 => in3_2,  -- int8
              in4 => in4_2,  -- int8
              ce_out => ce_out,
              out1 => out1,
              out2 => out2,
              out3 => out3,
              out4 => out4,
              out5 => out5,  -- int32
              out6 => out6,  -- int32
              out7 => out7,  -- int32
              out8 => out8  -- int32
              );

  -- Data source for in1
  rawData_in1 <= to_signed(-16#2C#, 8);

  -- Data source for in2
  rawData_in2 <= to_signed(-16#40#, 8);

  -- Data source for in3
  rawData_in3 <= to_signed(-16#14#, 8);

  -- Data source for in4
  rawData_in4 <= to_signed(16#30#, 8);

  out8_done_enb <= out8_done AND rdEnb;

  
  out8_lastAddr <= '1' WHEN out1_addr >= to_unsigned(16#32#, 6) ELSE
      '0';

  out8_done <= out8_lastAddr AND resetn;

  -- Delay to allow last sim cycle to complete
  checkDone_8_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      check8_done <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF out8_done_enb = '1' THEN
        check8_done <= out8_done;
      END IF;
    END IF;
  END PROCESS checkDone_8_process;

  out7_done_enb <= out7_done AND rdEnb;

  
  out7_lastAddr <= '1' WHEN out1_addr >= to_unsigned(16#32#, 6) ELSE
      '0';

  out7_done <= out7_lastAddr AND resetn;

  -- Delay to allow last sim cycle to complete
  checkDone_7_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      check7_done <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF out7_done_enb = '1' THEN
        check7_done <= out7_done;
      END IF;
    END IF;
  END PROCESS checkDone_7_process;

  out6_done_enb <= out6_done AND rdEnb;

  
  out6_lastAddr <= '1' WHEN out1_addr >= to_unsigned(16#32#, 6) ELSE
      '0';

  out6_done <= out6_lastAddr AND resetn;

  -- Delay to allow last sim cycle to complete
  checkDone_6_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      check6_done <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF out6_done_enb = '1' THEN
        check6_done <= out6_done;
      END IF;
    END IF;
  END PROCESS checkDone_6_process;

  out5_done_enb <= out5_done AND rdEnb;

  
  out5_lastAddr <= '1' WHEN out1_addr >= to_unsigned(16#32#, 6) ELSE
      '0';

  out5_done <= out5_lastAddr AND resetn;

  -- Delay to allow last sim cycle to complete
  checkDone_5_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      check5_done <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF out5_done_enb = '1' THEN
        check5_done <= out5_done;
      END IF;
    END IF;
  END PROCESS checkDone_5_process;

  out4_done_enb <= out4_done AND rdEnb;

  
  out4_lastAddr <= '1' WHEN out1_addr >= to_unsigned(16#32#, 6) ELSE
      '0';

  out4_done <= out4_lastAddr AND resetn;

  -- Delay to allow last sim cycle to complete
  checkDone_4_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      check4_done <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF out4_done_enb = '1' THEN
        check4_done <= out4_done;
      END IF;
    END IF;
  END PROCESS checkDone_4_process;

  out3_done_enb <= out3_done AND rdEnb;

  
  out3_lastAddr <= '1' WHEN out1_addr >= to_unsigned(16#32#, 6) ELSE
      '0';

  out3_done <= out3_lastAddr AND resetn;

  -- Delay to allow last sim cycle to complete
  checkDone_3_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      check3_done <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF out3_done_enb = '1' THEN
        check3_done <= out3_done;
      END IF;
    END IF;
  END PROCESS checkDone_3_process;

  out2_done_enb <= out2_done AND rdEnb;

  
  out2_lastAddr <= '1' WHEN out1_addr >= to_unsigned(16#32#, 6) ELSE
      '0';

  out2_done <= out2_lastAddr AND resetn;

  -- Delay to allow last sim cycle to complete
  checkDone_2_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      check2_done <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF out2_done_enb = '1' THEN
        check2_done <= out2_done;
      END IF;
    END IF;
  END PROCESS checkDone_2_process;

  out1_done_enb <= out1_done AND rdEnb;

  
  out1_active <= '1' WHEN out1_addr /= to_unsigned(16#32#, 6) ELSE
      '0';

  -- holdData reg for Constant3_out1
  stimuli_Constant3_out1_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      holdData_in4 <= (OTHERS => 'X');
    ELSIF clk'event AND clk = '1' THEN
      holdData_in4 <= rawData_in4;
    END IF;
  END PROCESS stimuli_Constant3_out1_process;

  stimuli_Constant3_out1_1: PROCESS (rawData_in4, rdEnb)
  BEGIN
    IF rdEnb = '0' THEN
      in4_offset <= holdData_in4;
    ELSE
      in4_offset <= rawData_in4;
    END IF;
  END PROCESS stimuli_Constant3_out1_1;

  in4_1 <= in4_offset AFTER 2 ns;

  in4_2 <= std_logic_vector(in4_1);

  -- holdData reg for Constant2_out1
  stimuli_Constant2_out1_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      holdData_in3 <= (OTHERS => 'X');
    ELSIF clk'event AND clk = '1' THEN
      holdData_in3 <= rawData_in3;
    END IF;
  END PROCESS stimuli_Constant2_out1_process;

  stimuli_Constant2_out1_1: PROCESS (rawData_in3, rdEnb)
  BEGIN
    IF rdEnb = '0' THEN
      in3_offset <= holdData_in3;
    ELSE
      in3_offset <= rawData_in3;
    END IF;
  END PROCESS stimuli_Constant2_out1_1;

  in3_1 <= in3_offset AFTER 2 ns;

  in3_2 <= std_logic_vector(in3_1);

  -- holdData reg for Constant1_out1
  stimuli_Constant1_out1_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      holdData_in2 <= (OTHERS => 'X');
    ELSIF clk'event AND clk = '1' THEN
      holdData_in2 <= rawData_in2;
    END IF;
  END PROCESS stimuli_Constant1_out1_process;

  stimuli_Constant1_out1_1: PROCESS (rawData_in2, rdEnb)
  BEGIN
    IF rdEnb = '0' THEN
      in2_offset <= holdData_in2;
    ELSE
      in2_offset <= rawData_in2;
    END IF;
  END PROCESS stimuli_Constant1_out1_1;

  in2_1 <= in2_offset AFTER 2 ns;

  in2_2 <= std_logic_vector(in2_1);

  -- holdData reg for Constant_out1
  stimuli_Constant_out1_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      holdData_in1 <= (OTHERS => 'X');
    ELSIF clk'event AND clk = '1' THEN
      holdData_in1 <= rawData_in1;
    END IF;
  END PROCESS stimuli_Constant_out1_process;

  stimuli_Constant_out1_1: PROCESS (rawData_in1, rdEnb)
  BEGIN
    IF rdEnb = '0' THEN
      in1_offset <= holdData_in1;
    ELSE
      in1_offset <= rawData_in1;
    END IF;
  END PROCESS stimuli_Constant_out1_1;

  in1_1 <= in1_offset AFTER 2 ns;

  in1_2 <= std_logic_vector(in1_1);

  snkDonen <=  NOT snkDone;

  resetn <=  NOT reset;

  tb_enb <= resetn AND snkDonen;

  -- Delay inside enable generation: register depth 1
  u_enable_delay_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      tb_enb_delay <= '0';
    ELSIF clk'event AND clk = '1' THEN
      tb_enb_delay <= tb_enb;
    END IF;
  END PROCESS u_enable_delay_process;

  
  rdEnb <= tb_enb_delay WHEN snkDone = '0' ELSE
      '0';

  clk_enable <= rdEnb AFTER 2 ns;

  reset_gen: PROCESS 
  BEGIN
    reset <= '1';
    WAIT FOR 20 ns;
    WAIT UNTIL clk'event AND clk = '1';
    WAIT FOR 2 ns;
    reset <= '0';
    WAIT;
  END PROCESS reset_gen;

  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 50
  clk_gen: PROCESS 
  BEGIN
    clk <= '1';
    WAIT FOR 5 ns;
    clk <= '0';
    WAIT FOR 5 ns;
    IF snkDone = '1' THEN
      clk <= '1';
      WAIT FOR 5 ns;
      clk <= '0';
      WAIT FOR 5 ns;
      WAIT;
    END IF;
  END PROCESS clk_gen;

  out1_enb <= ce_out AND out1_active;

  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 50
  c_3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      out1_addr <= to_unsigned(16#00#, 6);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF out1_enb = '1' THEN
        IF out1_addr = to_unsigned(16#32#, 6) THEN 
          out1_addr <= to_unsigned(16#00#, 6);
        ELSE 
          out1_addr <= out1_addr + to_unsigned(16#01#, 6);
        END IF;
      END IF;
    END IF;
  END PROCESS c_3_process;


  
  out1_lastAddr <= '1' WHEN out1_addr >= to_unsigned(16#32#, 6) ELSE
      '0';

  out1_done <= out1_lastAddr AND resetn;

  -- Delay to allow last sim cycle to complete
  checkDone_1_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      check1_done <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF out1_done_enb = '1' THEN
        check1_done <= out1_done;
      END IF;
    END IF;
  END PROCESS checkDone_1_process;

  snkDone <= check8_done AND (check7_done AND (check6_done AND (check5_done AND (check4_done AND (check3_done AND (check1_done AND check2_done))))));

  -- Data source for out1_expected
  out1_expected_1 <= '0';

  out1_ref <= out1_expected_1;

  out1_checker: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      out1_testFailure <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF ce_out = '1' AND out1 /= out1_ref THEN
        out1_testFailure <= '1';
        ASSERT FALSE
          REPORT "Error in out1: Expected " & to_hex(out1_ref) & (" Actual " & to_hex(out1))
          SEVERITY ERROR;
      END IF;
    END IF;
  END PROCESS out1_checker;

  -- Data source for out2_expected
  out2_expected_1 <= '0';

  out2_ref <= out2_expected_1;

  out2_checker: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      out2_testFailure <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF ce_out = '1' AND out2 /= out2_ref THEN
        out2_testFailure <= '1';
        ASSERT FALSE
          REPORT "Error in out2: Expected " & to_hex(out2_ref) & (" Actual " & to_hex(out2))
          SEVERITY ERROR;
      END IF;
    END IF;
  END PROCESS out2_checker;

  -- Data source for out3_expected
  out3_expected_1 <= out3_expected_table_data(to_integer(out1_addr));

  
  out3_expected_2 <= '1' WHEN out3_expected_1 /= '0' ELSE
      '0';

  out3_ref <= out3_expected_2;

  out3_checker: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      out3_testFailure <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF ce_out = '1' AND out3 /= out3_ref THEN
        out3_testFailure <= '1';
        ASSERT FALSE
          REPORT "Error in out3: Expected " & to_hex(out3_ref) & (" Actual " & to_hex(out3))
          SEVERITY ERROR;
      END IF;
    END IF;
  END PROCESS out3_checker;

  -- Data source for out4_expected
  out4_expected_1 <= '0';

  out4_ref <= out4_expected_1;

  out4_checker: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      out4_testFailure <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF ce_out = '1' AND out4 /= out4_ref THEN
        out4_testFailure <= '1';
        ASSERT FALSE
          REPORT "Error in out4: Expected " & to_hex(out4_ref) & (" Actual " & to_hex(out4))
          SEVERITY ERROR;
      END IF;
    END IF;
  END PROCESS out4_checker;

  out5_signed <= signed(out5);

  -- Data source for out5_expected
  out5_expected_1 <= out5_expected_table_data(to_integer(out1_addr));

  out5_expected_2 <= signed(out5_expected_1);

  out5_ref <= out5_expected_2;

  out5_signed_checker: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      out5_testFailure <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF ce_out = '1' AND out5_signed /= out5_ref THEN
        out5_testFailure <= '1';
        ASSERT FALSE
          REPORT "Error in out5_signed: Expected " & to_hex(out5_ref) & (" Actual " & to_hex(out5_signed))
          SEVERITY ERROR;
      END IF;
    END IF;
  END PROCESS out5_signed_checker;

  out6_signed <= signed(out6);

  -- Data source for out6_expected
  out6_expected_1 <= out6_expected_table_data(to_integer(out1_addr));

  out6_expected_2 <= signed(out6_expected_1);

  out6_ref <= out6_expected_2;

  out6_signed_checker: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      out6_testFailure <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF ce_out = '1' AND out6_signed /= out6_ref THEN
        out6_testFailure <= '1';
        ASSERT FALSE
          REPORT "Error in out6_signed: Expected " & to_hex(out6_ref) & (" Actual " & to_hex(out6_signed))
          SEVERITY ERROR;
      END IF;
    END IF;
  END PROCESS out6_signed_checker;

  out7_signed <= signed(out7);

  -- Data source for out7_expected
  out7_expected_1 <= out7_expected_table_data(to_integer(out1_addr));

  out7_expected_2 <= signed(out7_expected_1);

  out7_ref <= out7_expected_2;

  out7_signed_checker: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      out7_testFailure <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF ce_out = '1' AND out7_signed /= out7_ref THEN
        out7_testFailure <= '1';
        ASSERT FALSE
          REPORT "Error in out7_signed: Expected " & to_hex(out7_ref) & (" Actual " & to_hex(out7_signed))
          SEVERITY ERROR;
      END IF;
    END IF;
  END PROCESS out7_signed_checker;

  out8_signed <= signed(out8);

  -- Data source for out8_expected
  out8_expected_1 <= out8_expected_table_data(to_integer(out1_addr));

  out8_expected_2 <= signed(out8_expected_1);

  out8_ref <= out8_expected_2;

  out8_signed_checker: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      out8_testFailure <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF ce_out = '1' AND out8_signed /= out8_ref THEN
        out8_testFailure <= '1';
        ASSERT FALSE
          REPORT "Error in out8_signed: Expected " & to_hex(out8_ref) & (" Actual " & to_hex(out8_signed))
          SEVERITY ERROR;
      END IF;
    END IF;
  END PROCESS out8_signed_checker;

  testFailure <= out8_testFailure OR (out7_testFailure OR (out6_testFailure OR (out5_testFailure OR (out4_testFailure OR (out3_testFailure OR (out1_testFailure OR out2_testFailure))))));

  completed_msg: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF snkDone = '1' THEN
        IF testFailure = '0' THEN
          ASSERT FALSE
            REPORT "**************TEST COMPLETED (PASSED)**************"
            SEVERITY NOTE;
        ELSE
          ASSERT FALSE
            REPORT "**************TEST COMPLETED (FAILED)**************"
            SEVERITY NOTE;
        END IF;
      END IF;
    END IF;
  END PROCESS completed_msg;

END rtl;

