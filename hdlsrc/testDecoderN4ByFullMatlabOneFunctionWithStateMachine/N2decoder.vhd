-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc\testDecoderN4ByFullMatlabOneFunctionWithStateMachine\N2decoder.vhd
-- Created: 2017-04-29 01:07:23
-- 
-- Generated by MATLAB 9.1 and HDL Coder 3.9
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: N2decoder
-- Source Path: testDecoderN4ByFullMatlabOneFunctionWithStateMachine/HDL_DUT/N2decoder
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY N2decoder IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        LLR1                              :   IN    std_logic_vector(31 DOWNTO 0);  -- int32
        LLR2                              :   IN    std_logic_vector(31 DOWNTO 0);  -- int32
        LLR3                              :   IN    std_logic_vector(31 DOWNTO 0);  -- int32
        LLR4                              :   IN    std_logic_vector(31 DOWNTO 0);  -- int32
        u1                                :   OUT   std_logic;
        u2                                :   OUT   std_logic;
        u3                                :   OUT   std_logic;
        u4                                :   OUT   std_logic;
        soft1                             :   OUT   std_logic_vector(31 DOWNTO 0);  -- int32
        soft2                             :   OUT   std_logic_vector(31 DOWNTO 0);  -- int32
        soft3                             :   OUT   std_logic_vector(31 DOWNTO 0);  -- int32
        soft4                             :   OUT   std_logic_vector(31 DOWNTO 0)  -- int32
        );
END N2decoder;


ARCHITECTURE rtl OF N2decoder IS

  -- Constants
  CONSTANT nc                             : std_logic_vector(0 TO 3) := 
    ('0', '0', '1', '1');  -- boolean [4]

  -- Signals
  SIGNAL LLR1_signed                      : signed(31 DOWNTO 0);  -- int32
  SIGNAL LLR2_signed                      : signed(31 DOWNTO 0);  -- int32
  SIGNAL LLR3_signed                      : signed(31 DOWNTO 0);  -- int32
  SIGNAL LLR4_signed                      : signed(31 DOWNTO 0);  -- int32
  SIGNAL soft1_tmp                        : signed(31 DOWNTO 0);  -- int32
  SIGNAL soft2_tmp                        : signed(31 DOWNTO 0);  -- int32
  SIGNAL soft3_tmp                        : signed(31 DOWNTO 0);  -- int32
  SIGNAL soft4_tmp                        : signed(31 DOWNTO 0);  -- int32
  SIGNAL state_reg                        : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL state_reg_not_empty              : std_logic;
  SIGNAL LLR1_reg                         : signed(31 DOWNTO 0);  -- int32
  SIGNAL LLR2_reg                         : signed(31 DOWNTO 0);  -- int32
  SIGNAL LLR3_reg                         : signed(31 DOWNTO 0);  -- int32
  SIGNAL LLR4_reg                         : signed(31 DOWNTO 0);  -- int32
  SIGNAL L21y12_reg                       : signed(31 DOWNTO 0);  -- int32
  SIGNAL L21y34_reg                       : signed(31 DOWNTO 0);  -- int32
  SIGNAL L22y12u12_reg                    : signed(31 DOWNTO 0);  -- int32
  SIGNAL L22y34u2_reg                     : signed(31 DOWNTO 0);  -- int32
  SIGNAL u1_reg                           : std_logic;
  SIGNAL soft1_reg                        : signed(31 DOWNTO 0);  -- int32
  SIGNAL u2_reg                           : std_logic;
  SIGNAL soft2_reg                        : signed(31 DOWNTO 0);  -- int32
  SIGNAL u3_reg                           : std_logic;
  SIGNAL soft3_reg                        : signed(31 DOWNTO 0);  -- int32
  SIGNAL u4_reg                           : std_logic;
  SIGNAL soft4_reg                        : signed(31 DOWNTO 0);  -- int32
  SIGNAL state_reg_next                   : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL state_reg_not_empty_next         : std_logic;
  SIGNAL LLR1_reg_next                    : signed(31 DOWNTO 0);  -- int32
  SIGNAL LLR2_reg_next                    : signed(31 DOWNTO 0);  -- int32
  SIGNAL LLR3_reg_next                    : signed(31 DOWNTO 0);  -- int32
  SIGNAL LLR4_reg_next                    : signed(31 DOWNTO 0);  -- int32
  SIGNAL L21y12_reg_next                  : signed(31 DOWNTO 0);  -- int32
  SIGNAL L21y34_reg_next                  : signed(31 DOWNTO 0);  -- int32
  SIGNAL L22y12u12_reg_next               : signed(31 DOWNTO 0);  -- int32
  SIGNAL L22y34u2_reg_next                : signed(31 DOWNTO 0);  -- int32
  SIGNAL u1_reg_next                      : std_logic;
  SIGNAL soft1_reg_next                   : signed(31 DOWNTO 0);  -- int32
  SIGNAL u2_reg_next                      : std_logic;
  SIGNAL soft2_reg_next                   : signed(31 DOWNTO 0);  -- int32
  SIGNAL u3_reg_next                      : std_logic;
  SIGNAL soft3_reg_next                   : signed(31 DOWNTO 0);  -- int32
  SIGNAL u4_reg_next                      : std_logic;
  SIGNAL soft4_reg_next                   : signed(31 DOWNTO 0);  -- int32

BEGIN
  LLR1_signed <= signed(LLR1);

  LLR2_signed <= signed(LLR2);

  LLR3_signed <= signed(LLR3);

  LLR4_signed <= signed(LLR4);

  N2decoder_1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      state_reg_not_empty <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        state_reg <= state_reg_next;
        state_reg_not_empty <= state_reg_not_empty_next;
        LLR1_reg <= LLR1_reg_next;
        LLR2_reg <= LLR2_reg_next;
        LLR3_reg <= LLR3_reg_next;
        LLR4_reg <= LLR4_reg_next;
        L21y12_reg <= L21y12_reg_next;
        L21y34_reg <= L21y34_reg_next;
        L22y12u12_reg <= L22y12u12_reg_next;
        L22y34u2_reg <= L22y34u2_reg_next;
        u1_reg <= u1_reg_next;
        soft1_reg <= soft1_reg_next;
        u2_reg <= u2_reg_next;
        soft2_reg <= soft2_reg_next;
        u3_reg <= u3_reg_next;
        soft3_reg <= soft3_reg_next;
        u4_reg <= u4_reg_next;
        soft4_reg <= soft4_reg_next;
      END IF;
    END IF;
  END PROCESS N2decoder_1_process;

  N2decoder_1_output : PROCESS (LLR1_signed, LLR2_signed, LLR3_signed, LLR4_signed, state_reg,
       state_reg_not_empty, LLR1_reg, LLR2_reg, LLR3_reg, LLR4_reg, L21y12_reg,
       L21y34_reg, L22y12u12_reg, L22y34u2_reg, u1_reg, soft1_reg, u2_reg,
       soft2_reg, u3_reg, soft3_reg, u4_reg, soft4_reg)
    VARIABLE soft11 : signed(31 DOWNTO 0);
    VARIABLE L41y14_reg : signed(31 DOWNTO 0);
    VARIABLE L42y14u11_reg : signed(31 DOWNTO 0);
    VARIABLE L43y14u12_reg : signed(31 DOWNTO 0);
    VARIABLE L44y14u13_reg : signed(31 DOWNTO 0);
    VARIABLE y : signed(31 DOWNTO 0);
    VARIABLE y_0 : signed(31 DOWNTO 0);
    VARIABLE y_1 : signed(31 DOWNTO 0);
    VARIABLE y_2 : signed(31 DOWNTO 0);
    VARIABLE y_3 : signed(31 DOWNTO 0);
    VARIABLE y_4 : signed(31 DOWNTO 0);
    VARIABLE y_5 : signed(31 DOWNTO 0);
    VARIABLE y_6 : signed(31 DOWNTO 0);
    VARIABLE y_7 : signed(31 DOWNTO 0);
    VARIABLE y_8 : signed(31 DOWNTO 0);
    VARIABLE y_9 : signed(31 DOWNTO 0);
    VARIABLE y_10 : signed(31 DOWNTO 0);
    VARIABLE y_11 : signed(31 DOWNTO 0);
    VARIABLE y_12 : signed(31 DOWNTO 0);
    VARIABLE state_reg_temp : unsigned(2 DOWNTO 0);
    VARIABLE LLR1_reg_temp : signed(31 DOWNTO 0);
    VARIABLE LLR2_reg_temp : signed(31 DOWNTO 0);
    VARIABLE LLR3_reg_temp : signed(31 DOWNTO 0);
    VARIABLE LLR4_reg_temp : signed(31 DOWNTO 0);
    VARIABLE L22y12u12_reg_temp : signed(31 DOWNTO 0);
    VARIABLE L22y34u2_reg_temp : signed(31 DOWNTO 0);
    VARIABLE u1_reg_temp : std_logic;
    VARIABLE u2_reg_temp : std_logic;
    VARIABLE u3_reg_temp : std_logic;
    VARIABLE u4_reg_temp : std_logic;
    VARIABLE FZlookup : std_logic_vector(0 TO 3);
    VARIABLE cast : signed(31 DOWNTO 0);
    VARIABLE cast_0 : signed(31 DOWNTO 0);
    VARIABLE llr1_reg_temp_0 : signed(32 DOWNTO 0);
    VARIABLE llr1_reg_temp_1 : signed(32 DOWNTO 0);
    VARIABLE y_13 : signed(32 DOWNTO 0);
    VARIABLE y_14 : signed(32 DOWNTO 0);
    VARIABLE llr2_reg_temp_0 : signed(32 DOWNTO 0);
    VARIABLE llr2_reg_temp_1 : signed(32 DOWNTO 0);
    VARIABLE y_15 : signed(32 DOWNTO 0);
    VARIABLE y_16 : signed(32 DOWNTO 0);
    VARIABLE y_17 : signed(32 DOWNTO 0);
    VARIABLE y_18 : signed(32 DOWNTO 0);
    VARIABLE l22y12u12_reg_temp_0 : signed(32 DOWNTO 0);
    VARIABLE l22y12u12_reg_temp_1 : signed(32 DOWNTO 0);
    VARIABLE llr3_reg_temp_0 : signed(32 DOWNTO 0);
    VARIABLE llr3_reg_temp_1 : signed(32 DOWNTO 0);
    VARIABLE l22y34u2_reg_temp_0 : signed(32 DOWNTO 0);
    VARIABLE l22y34u2_reg_temp_1 : signed(32 DOWNTO 0);
    VARIABLE llr4_reg_temp_0 : signed(32 DOWNTO 0);
    VARIABLE llr4_reg_temp_1 : signed(32 DOWNTO 0);
    VARIABLE y_19 : signed(32 DOWNTO 0);
    VARIABLE y_20 : signed(32 DOWNTO 0);
  BEGIN
    FZlookup := nc;
    state_reg_temp := state_reg;
    LLR1_reg_temp := LLR1_reg;
    LLR2_reg_temp := LLR2_reg;
    LLR3_reg_temp := LLR3_reg;
    LLR4_reg_temp := LLR4_reg;
    y_2 := L21y12_reg;
    y_6 := L21y34_reg;
    L22y12u12_reg_temp := L22y12u12_reg;
    L22y34u2_reg_temp := L22y34u2_reg;
    u1_reg_temp := u1_reg;
    L41y14_reg := soft1_reg;
    u2_reg_temp := u2_reg;
    L42y14u11_reg := soft2_reg;
    u3_reg_temp := u3_reg;
    L43y14u12_reg := soft3_reg;
    u4_reg_temp := u4_reg;
    L44y14u13_reg := soft4_reg;
    state_reg_not_empty_next <= state_reg_not_empty;
    --状态机默认状态是S1（为0）
    --每个输出都需要在每一个case里面定义值，或者一开始就定义初值。
    --思路：全部状态机操作的都是reg，到最后一个状态的时候统一把所有output都输出reg里面的值，在此之前output可以都为0；
    IF ( NOT state_reg_not_empty) = '1' THEN 
      state_reg_temp := to_unsigned(16#0#, 3);
      state_reg_not_empty_next <= '1';
      LLR1_reg_temp := LLR1_signed;
      LLR2_reg_temp := LLR2_signed;
      LLR3_reg_temp := LLR3_signed;
      LLR4_reg_temp := LLR4_signed;
      --初始化计算u1需要的LLR
      y_2 := to_signed(16#00000000#, 32);
      y_6 := to_signed(16#00000000#, 32);
      --初始化计算u2需要的LLR
      --初始化计算u3需要的LLR
      L22y12u12_reg_temp := to_signed(16#00000000#, 32);
      L22y34u2_reg_temp := to_signed(16#00000000#, 32);
      --初始化计算u4需要的LLR
      --初始化output的寄存器
      u1_reg_temp := '0';
      L41y14_reg := to_signed(16#00000000#, 32);
      u2_reg_temp := '0';
      L42y14u11_reg := to_signed(16#00000000#, 32);
      u3_reg_temp := '0';
      L43y14u12_reg := to_signed(16#00000000#, 32);
      u4_reg_temp := '0';
      L44y14u13_reg := to_signed(16#00000000#, 32);
    END IF;
    soft11 := L41y14_reg;
    u1 <= u1_reg_temp;
    soft2_tmp <= L42y14u11_reg;
    u2 <= u2_reg_temp;
    soft3_tmp <= L43y14u12_reg;
    u3 <= u3_reg_temp;
    soft4_tmp <= L44y14u13_reg;
    u4 <= u4_reg_temp;
    --有限状态机
    CASE state_reg_temp IS
      WHEN "000" =>
        --判定输出u函数结束
        --f函数开始
        IF ((LLR1_reg_temp > to_signed(16#00000000#, 32)) AND (LLR2_reg_temp > to_signed(16#00000000#, 32))) OR ((LLR1_reg_temp < to_signed(16#00000000#, 32)) AND (LLR2_reg_temp < to_signed(16#00000000#, 32))) THEN 
          IF LLR1_reg_temp < to_signed(16#00000000#, 32) THEN 
            llr1_reg_temp_1 :=  - (resize(LLR1_reg_temp, 33));
            y_1 := llr1_reg_temp_1(31 DOWNTO 0);
          ELSE 
            y_1 := LLR1_reg_temp;
          END IF;
          IF LLR2_reg_temp < to_signed(16#00000000#, 32) THEN 
            llr2_reg_temp_1 :=  - (resize(LLR2_reg_temp, 33));
            y_2 := llr2_reg_temp_1(31 DOWNTO 0);
          ELSE 
            y_2 := LLR2_reg_temp;
          END IF;
          IF y_1 < y_2 THEN 
            y_2 := y_1;
          END IF;
          --f函数当符号为正时结束
        ELSE 
          IF LLR1_reg_temp < to_signed(16#00000000#, 32) THEN 
            llr1_reg_temp_0 :=  - (resize(LLR1_reg_temp, 33));
            y := llr1_reg_temp_0(31 DOWNTO 0);
          ELSE 
            y := LLR1_reg_temp;
          END IF;
          IF LLR2_reg_temp < to_signed(16#00000000#, 32) THEN 
            llr2_reg_temp_0 :=  - (resize(LLR2_reg_temp, 33));
            y_0 := llr2_reg_temp_0(31 DOWNTO 0);
          ELSE 
            y_0 := LLR2_reg_temp;
          END IF;
          IF y < y_0 THEN 
            y_0 := y;
          END IF;
          y_17 :=  - (resize(y_0, 33));
          y_2 := y_17(31 DOWNTO 0);
          --f函数当符号为负时结束
        END IF;
        --判定输出u函数结束
        --f函数开始
        IF ((LLR3_reg_temp > to_signed(16#00000000#, 32)) AND (LLR4_reg_temp > to_signed(16#00000000#, 32))) OR ((LLR3_reg_temp < to_signed(16#00000000#, 32)) AND (LLR4_reg_temp < to_signed(16#00000000#, 32))) THEN 
          IF LLR3_reg_temp < to_signed(16#00000000#, 32) THEN 
            llr3_reg_temp_1 :=  - (resize(LLR3_reg_temp, 33));
            y_5 := llr3_reg_temp_1(31 DOWNTO 0);
          ELSE 
            y_5 := LLR3_reg_temp;
          END IF;
          IF LLR4_reg_temp < to_signed(16#00000000#, 32) THEN 
            llr4_reg_temp_1 :=  - (resize(LLR4_reg_temp, 33));
            y_6 := llr4_reg_temp_1(31 DOWNTO 0);
          ELSE 
            y_6 := LLR4_reg_temp;
          END IF;
          IF y_5 < y_6 THEN 
            y_6 := y_5;
          END IF;
          --f函数当符号为正时结束
        ELSE 
          IF LLR3_reg_temp < to_signed(16#00000000#, 32) THEN 
            llr3_reg_temp_0 :=  - (resize(LLR3_reg_temp, 33));
            y_3 := llr3_reg_temp_0(31 DOWNTO 0);
          ELSE 
            y_3 := LLR3_reg_temp;
          END IF;
          IF LLR4_reg_temp < to_signed(16#00000000#, 32) THEN 
            llr4_reg_temp_0 :=  - (resize(LLR4_reg_temp, 33));
            y_4 := llr4_reg_temp_0(31 DOWNTO 0);
          ELSE 
            y_4 := LLR4_reg_temp;
          END IF;
          IF y_3 < y_4 THEN 
            y_4 := y_3;
          END IF;
          y_20 :=  - (resize(y_4, 33));
          y_6 := y_20(31 DOWNTO 0);
          --f函数当符号为负时结束
        END IF;
        state_reg_temp := to_unsigned(16#1#, 3);
      WHEN "001" =>
        --判定输出u函数结束
        --f函数开始
        IF ((y_2 > to_signed(16#00000000#, 32)) AND (y_6 > to_signed(16#00000000#, 32))) OR ((y_2 < to_signed(16#00000000#, 32)) AND (y_6 < to_signed(16#00000000#, 32))) THEN 
          IF y_2 < to_signed(16#00000000#, 32) THEN 
            y_14 :=  - (resize(y_2, 33));
            y_9 := y_14(31 DOWNTO 0);
          ELSE 
            y_9 := y_2;
          END IF;
          IF y_6 < to_signed(16#00000000#, 32) THEN 
            y_16 :=  - (resize(y_6, 33));
            L41y14_reg := y_16(31 DOWNTO 0);
          ELSE 
            L41y14_reg := y_6;
          END IF;
          IF y_9 < L41y14_reg THEN 
            L41y14_reg := y_9;
          END IF;
          --f函数当符号为正时结束
        ELSE 
          IF y_2 < to_signed(16#00000000#, 32) THEN 
            y_13 :=  - (resize(y_2, 33));
            y_7 := y_13(31 DOWNTO 0);
          ELSE 
            y_7 := y_2;
          END IF;
          IF y_6 < to_signed(16#00000000#, 32) THEN 
            y_15 :=  - (resize(y_6, 33));
            y_8 := y_15(31 DOWNTO 0);
          ELSE 
            y_8 := y_6;
          END IF;
          IF y_7 < y_8 THEN 
            y_8 := y_7;
          END IF;
          y_18 :=  - (resize(y_8, 33));
          L41y14_reg := y_18(31 DOWNTO 0);
          --f函数当符号为负时结束
        END IF;
        --判定输出u函数开始；根据软信息和冻结比特位信息；FZlookup是冻结比特位置信息，false代表这一位是冻结比特
        IF FZlookup(0) = '1' THEN 
          IF soft11 > to_signed(16#00000000#, 32) THEN 
            --PCparams.LLR(1) 就是根据最左边的LLR硬裁决
            u1_reg_temp := '0';
          ELSE 
            u1_reg_temp := '1';
          END IF;
        ELSE 
          u1_reg_temp := FZlookup(0);
        END IF;
        state_reg_temp := to_unsigned(16#2#, 3);
      WHEN "010" =>
        --g函数开始
        IF ( NOT u1_reg_temp) = '1' THEN 
          L42y14u11_reg := y_2 + y_6;
          --g函数当b==0时结束
        ELSE 
          L42y14u11_reg := y_6 - y_2;
          --g函数当b==1时结束
        END IF;
        --判定输出u函数开始；根据软信息和冻结比特位信息；FZlookup是冻结比特位置信息，false代表这一位是冻结比特
        IF FZlookup(1) = '1' THEN 
          IF L42y14u11_reg > to_signed(16#00000000#, 32) THEN 
            --PCparams.LLR(1) 就是根据最左边的LLR硬裁决
            u2_reg_temp := '0';
          ELSE 
            u2_reg_temp := '1';
          END IF;
        ELSE 
          u2_reg_temp := FZlookup(1);
        END IF;
        state_reg_temp := to_unsigned(16#3#, 3);
      WHEN "011" =>
        --g函数开始
        cast := '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & u1_reg_temp;
        cast_0 := '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & u2_reg_temp;
        IF  NOT ((cast XOR cast_0) /= to_signed(16#00000000#, 32)) THEN 
          L22y12u12_reg_temp := LLR1_reg_temp + LLR2_reg_temp;
          --g函数当b==0时结束
        ELSE 
          L22y12u12_reg_temp := LLR2_reg_temp - LLR1_reg_temp;
          --g函数当b==1时结束
        END IF;
        --g函数开始
        IF ( NOT u2_reg_temp) = '1' THEN 
          L22y34u2_reg_temp := LLR3_reg_temp + LLR4_reg_temp;
          --g函数当b==0时结束
        ELSE 
          L22y34u2_reg_temp := LLR4_reg_temp - LLR3_reg_temp;
          --g函数当b==1时结束
        END IF;
        --判定输出u函数结束
        --f函数开始
        IF ((L22y12u12_reg_temp > to_signed(16#00000000#, 32)) AND (L22y34u2_reg_temp > to_signed(16#00000000#, 32))) OR ((L22y12u12_reg_temp < to_signed(16#00000000#, 32)) AND (L22y34u2_reg_temp < to_signed(16#00000000#, 32))) THEN 
          IF L22y12u12_reg_temp < to_signed(16#00000000#, 32) THEN 
            l22y12u12_reg_temp_1 :=  - (resize(L22y12u12_reg_temp, 33));
            y_12 := l22y12u12_reg_temp_1(31 DOWNTO 0);
          ELSE 
            y_12 := L22y12u12_reg_temp;
          END IF;
          IF L22y34u2_reg_temp < to_signed(16#00000000#, 32) THEN 
            l22y34u2_reg_temp_1 :=  - (resize(L22y34u2_reg_temp, 33));
            L43y14u12_reg := l22y34u2_reg_temp_1(31 DOWNTO 0);
          ELSE 
            L43y14u12_reg := L22y34u2_reg_temp;
          END IF;
          IF y_12 < L43y14u12_reg THEN 
            L43y14u12_reg := y_12;
          END IF;
          --f函数当符号为正时结束
        ELSE 
          IF L22y12u12_reg_temp < to_signed(16#00000000#, 32) THEN 
            l22y12u12_reg_temp_0 :=  - (resize(L22y12u12_reg_temp, 33));
            y_10 := l22y12u12_reg_temp_0(31 DOWNTO 0);
          ELSE 
            y_10 := L22y12u12_reg_temp;
          END IF;
          IF L22y34u2_reg_temp < to_signed(16#00000000#, 32) THEN 
            l22y34u2_reg_temp_0 :=  - (resize(L22y34u2_reg_temp, 33));
            y_11 := l22y34u2_reg_temp_0(31 DOWNTO 0);
          ELSE 
            y_11 := L22y34u2_reg_temp;
          END IF;
          IF y_10 < y_11 THEN 
            y_11 := y_10;
          END IF;
          y_19 :=  - (resize(y_11, 33));
          L43y14u12_reg := y_19(31 DOWNTO 0);
          --f函数当符号为负时结束
        END IF;
        --判定输出u函数开始；根据软信息和冻结比特位信息；FZlookup是冻结比特位置信息，false代表这一位是冻结比特
        IF FZlookup(2) = '1' THEN 
          IF L43y14u12_reg > to_signed(16#00000000#, 32) THEN 
            --PCparams.LLR(1) 就是根据最左边的LLR硬裁决
            u3_reg_temp := '0';
          ELSE 
            u3_reg_temp := '1';
          END IF;
        ELSE 
          u3_reg_temp := FZlookup(2);
        END IF;
        state_reg_temp := to_unsigned(16#4#, 3);
      WHEN "100" =>
        --g函数开始
        IF ( NOT u3_reg_temp) = '1' THEN 
          L44y14u13_reg := L22y12u12_reg_temp + L22y34u2_reg_temp;
          --g函数当b==0时结束
        ELSE 
          L44y14u13_reg := L22y34u2_reg_temp - L22y12u12_reg_temp;
          --g函数当b==1时结束
        END IF;
        --判定输出u函数开始；根据软信息和冻结比特位信息；FZlookup是冻结比特位置信息，false代表这一位是冻结比特
        IF FZlookup(3) = '1' THEN 
          IF L44y14u13_reg > to_signed(16#00000000#, 32) THEN 
            --PCparams.LLR(1) 就是根据最左边的LLR硬裁决
            u4_reg_temp := '0';
          ELSE 
            u4_reg_temp := '1';
          END IF;
        ELSE 
          u4_reg_temp := FZlookup(3);
        END IF;
      WHEN OTHERS => 
        NULL;
    END CASE;
    soft1_tmp <= soft11;
    state_reg_next <= state_reg_temp;
    LLR1_reg_next <= LLR1_reg_temp;
    LLR2_reg_next <= LLR2_reg_temp;
    LLR3_reg_next <= LLR3_reg_temp;
    LLR4_reg_next <= LLR4_reg_temp;
    L21y12_reg_next <= y_2;
    L21y34_reg_next <= y_6;
    L22y12u12_reg_next <= L22y12u12_reg_temp;
    L22y34u2_reg_next <= L22y34u2_reg_temp;
    u1_reg_next <= u1_reg_temp;
    soft1_reg_next <= L41y14_reg;
    u2_reg_next <= u2_reg_temp;
    soft2_reg_next <= L42y14u11_reg;
    u3_reg_next <= u3_reg_temp;
    soft3_reg_next <= L43y14u12_reg;
    u4_reg_next <= u4_reg_temp;
    soft4_reg_next <= L44y14u13_reg;
  END PROCESS N2decoder_1_output;


  soft1 <= std_logic_vector(soft1_tmp);

  soft2 <= std_logic_vector(soft2_tmp);

  soft3 <= std_logic_vector(soft3_tmp);

  soft4 <= std_logic_vector(soft4_tmp);

END rtl;

