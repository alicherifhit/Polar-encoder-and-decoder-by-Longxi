-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc\encoderN8\HDL_DUT.vhd
-- Created: 2017-04-21 23:43:29
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
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: HDL_DUT
-- Source Path: encoderN8/HDL_DUT
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY HDL_DUT IS
  PORT( in1                               :   IN    std_logic;
        in2                               :   IN    std_logic;
        in3                               :   IN    std_logic;
        in4                               :   IN    std_logic;
        in5                               :   IN    std_logic;
        in6                               :   IN    std_logic;
        in7                               :   IN    std_logic;
        in8                               :   IN    std_logic;
        out1                              :   OUT   std_logic;
        out2                              :   OUT   std_logic;
        out3                              :   OUT   std_logic;
        out4                              :   OUT   std_logic;
        out5                              :   OUT   std_logic;
        out6                              :   OUT   std_logic;
        out7                              :   OUT   std_logic;
        out8                              :   OUT   std_logic
        );
END HDL_DUT;


ARCHITECTURE rtl OF HDL_DUT IS

  -- Signals
  SIGNAL Logical_Operator1_out1           : std_logic;
  SIGNAL Logical_Operator2_out1           : std_logic;
  SIGNAL Logical_Operator5_out1           : std_logic;
  SIGNAL Logical_Operator3_out1           : std_logic;
  SIGNAL Logical_Operator4_out1           : std_logic;
  SIGNAL Logical_Operator7_out1           : std_logic;
  SIGNAL Logical_Operator9_out1           : std_logic;
  SIGNAL Logical_Operator6_out1           : std_logic;
  SIGNAL Logical_Operator8_out1           : std_logic;
  SIGNAL Logical_Operator10_out1          : std_logic;
  SIGNAL Logical_Operator11_out1          : std_logic;
  SIGNAL Logical_Operator12_out1          : std_logic;

BEGIN
  Logical_Operator1_out1 <= in1 XOR in2;

  Logical_Operator2_out1 <= in3 XOR in4;

  Logical_Operator5_out1 <= Logical_Operator1_out1 XOR Logical_Operator2_out1;

  Logical_Operator3_out1 <= in5 XOR in6;

  Logical_Operator4_out1 <= in7 XOR in8;

  Logical_Operator7_out1 <= Logical_Operator3_out1 XOR Logical_Operator4_out1;

  Logical_Operator9_out1 <= Logical_Operator5_out1 XOR Logical_Operator7_out1;

  Logical_Operator6_out1 <= in2 XOR in4;

  Logical_Operator8_out1 <= in6 XOR in8;

  Logical_Operator10_out1 <= Logical_Operator6_out1 XOR Logical_Operator8_out1;

  Logical_Operator11_out1 <= Logical_Operator2_out1 XOR Logical_Operator4_out1;

  Logical_Operator12_out1 <= in4 XOR in8;

  out1 <= Logical_Operator9_out1;

  out2 <= Logical_Operator10_out1;

  out3 <= Logical_Operator11_out1;

  out4 <= Logical_Operator12_out1;

  out5 <= Logical_Operator7_out1;

  out6 <= Logical_Operator8_out1;

  out7 <= Logical_Operator4_out1;

  out8 <= in8;

END rtl;

