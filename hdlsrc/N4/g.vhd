-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc\N4\g.vhd
-- Created: 2017-04-20 17:00:51
-- 
-- Generated by MATLAB 9.1 and HDL Coder 3.9
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: g
-- Source Path: N4/HDL_DUT/g
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY g IS
  PORT( in1                               :   IN    std_logic_vector(7 DOWNTO 0);  -- int8
        in2                               :   IN    std_logic_vector(7 DOWNTO 0);  -- int8
        in3                               :   IN    std_logic;
        out_rsvd                          :   OUT   std_logic_vector(7 DOWNTO 0)  -- int8
        );
END g;


ARCHITECTURE rtl OF g IS

  -- Signals
  SIGNAL in2_signed                       : signed(7 DOWNTO 0);  -- int8
  SIGNAL in1_signed                       : signed(7 DOWNTO 0);  -- int8
  SIGNAL Gain_in0                         : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Gain_cast                        : signed(15 DOWNTO 0);  -- sfix16_En7
  SIGNAL Gain_out1                        : signed(7 DOWNTO 0);  -- int8
  SIGNAL Multiport_Switch_out1            : signed(7 DOWNTO 0);  -- int8
  SIGNAL Add_out1                         : signed(7 DOWNTO 0);  -- int8

BEGIN
  in2_signed <= signed(in2);

  in1_signed <= signed(in1);

  Gain_in0 <=  - (resize(in1_signed, 9));
  Gain_cast <= Gain_in0 & '0' & '0' & '0' & '0' & '0' & '0' & '0';
  Gain_out1 <= Gain_cast(14 DOWNTO 7);

  
  Multiport_Switch_out1 <= in1_signed WHEN in3 = '0' ELSE
      Gain_out1;

  Add_out1 <= in2_signed + Multiport_Switch_out1;

  out_rsvd <= std_logic_vector(Add_out1);

END rtl;

