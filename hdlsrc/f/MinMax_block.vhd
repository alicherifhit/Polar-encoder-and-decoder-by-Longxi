-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc\f\MinMax_block.vhd
-- Created: 2017-04-20 12:58:25
-- 
-- Generated by MATLAB 9.1 and HDL Coder 3.9
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: MinMax_block
-- Source Path: f/HDL_DUT/f1/MinMax/MinMax
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.HDL_DUT_pkg.ALL;

ENTITY MinMax_block IS
  PORT( in0                               :   IN    std_logic_vector(7 DOWNTO 0);  -- int8
        in1                               :   IN    std_logic_vector(7 DOWNTO 0);  -- int8
        out0                              :   OUT   std_logic_vector(7 DOWNTO 0)  -- int8
        );
END MinMax_block;


ARCHITECTURE rtl OF MinMax_block IS

  -- Signals
  SIGNAL MinMax_muxout                    : vector_of_signed8(0 TO 1);  -- int8 [2]
  SIGNAL MinMax_stage1_val                : signed(7 DOWNTO 0);  -- int8

BEGIN
  MinMax_muxout(0) <= signed(in0);
  MinMax_muxout(1) <= signed(in1);

  ---- Tree min implementation ----
  ---- Tree min stage 1 ----
  
  MinMax_stage1_val <= MinMax_muxout(0) WHEN MinMax_muxout(0) <= MinMax_muxout(1) ELSE
      MinMax_muxout(1);

  out0 <= std_logic_vector(MinMax_stage1_val);

END rtl;
