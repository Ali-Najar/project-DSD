-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/25/2024 23:39:21"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ARRIAII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	parking IS
    PORT (
	car_entered : IN std_logic;
	is_uni_car_entered : IN std_logic;
	car_exited : IN std_logic;
	is_uni_car_exited : IN std_logic;
	clk : IN std_logic;
	uni_parked_car : OUT std_logic_vector(10 DOWNTO 0);
	parked_car : OUT std_logic_vector(10 DOWNTO 0);
	uni_vacated_space : OUT std_logic_vector(10 DOWNTO 0);
	vacated_space : OUT std_logic_vector(10 DOWNTO 0);
	uni_is_vacated_space : OUT std_logic;
	is_vacated_space : OUT std_logic
	);
END parking;

-- Design Ports Information
-- uni_parked_car[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[4]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[8]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[9]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_parked_car[10]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[2]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[4]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[5]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[6]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[7]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[8]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[9]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parked_car[10]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[5]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[8]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[9]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_vacated_space[10]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[2]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[5]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[8]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[9]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacated_space[10]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni_is_vacated_space	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_vacated_space	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- car_exited	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_uni_car_exited	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- car_entered	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_uni_car_entered	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parking IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_car_entered : std_logic;
SIGNAL ww_is_uni_car_entered : std_logic;
SIGNAL ww_car_exited : std_logic;
SIGNAL ww_is_uni_car_exited : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_uni_parked_car : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_parked_car : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_uni_vacated_space : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_vacated_space : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_uni_is_vacated_space : std_logic;
SIGNAL ww_is_vacated_space : std_logic;
SIGNAL \uni_parked_car[0]~output_o\ : std_logic;
SIGNAL \uni_parked_car[1]~output_o\ : std_logic;
SIGNAL \uni_parked_car[2]~output_o\ : std_logic;
SIGNAL \uni_parked_car[3]~output_o\ : std_logic;
SIGNAL \uni_parked_car[4]~output_o\ : std_logic;
SIGNAL \uni_parked_car[5]~output_o\ : std_logic;
SIGNAL \uni_parked_car[6]~output_o\ : std_logic;
SIGNAL \uni_parked_car[7]~output_o\ : std_logic;
SIGNAL \uni_parked_car[8]~output_o\ : std_logic;
SIGNAL \uni_parked_car[9]~output_o\ : std_logic;
SIGNAL \uni_parked_car[10]~output_o\ : std_logic;
SIGNAL \parked_car[0]~output_o\ : std_logic;
SIGNAL \parked_car[1]~output_o\ : std_logic;
SIGNAL \parked_car[2]~output_o\ : std_logic;
SIGNAL \parked_car[3]~output_o\ : std_logic;
SIGNAL \parked_car[4]~output_o\ : std_logic;
SIGNAL \parked_car[5]~output_o\ : std_logic;
SIGNAL \parked_car[6]~output_o\ : std_logic;
SIGNAL \parked_car[7]~output_o\ : std_logic;
SIGNAL \parked_car[8]~output_o\ : std_logic;
SIGNAL \parked_car[9]~output_o\ : std_logic;
SIGNAL \parked_car[10]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[0]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[1]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[2]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[3]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[4]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[5]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[6]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[7]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[8]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[9]~output_o\ : std_logic;
SIGNAL \uni_vacated_space[10]~output_o\ : std_logic;
SIGNAL \vacated_space[0]~output_o\ : std_logic;
SIGNAL \vacated_space[1]~output_o\ : std_logic;
SIGNAL \vacated_space[2]~output_o\ : std_logic;
SIGNAL \vacated_space[3]~output_o\ : std_logic;
SIGNAL \vacated_space[4]~output_o\ : std_logic;
SIGNAL \vacated_space[5]~output_o\ : std_logic;
SIGNAL \vacated_space[6]~output_o\ : std_logic;
SIGNAL \vacated_space[7]~output_o\ : std_logic;
SIGNAL \vacated_space[8]~output_o\ : std_logic;
SIGNAL \vacated_space[9]~output_o\ : std_logic;
SIGNAL \vacated_space[10]~output_o\ : std_logic;
SIGNAL \uni_is_vacated_space~output_o\ : std_logic;
SIGNAL \is_vacated_space~output_o\ : std_logic;
SIGNAL \car_entered~input_o\ : std_logic;
SIGNAL \car_entered~inputclkctrl_outclk\ : std_logic;
SIGNAL \cars_entered_uni[0]~0_combout\ : std_logic;
SIGNAL \is_uni_car_entered~input_o\ : std_logic;
SIGNAL \car_exited~input_o\ : std_logic;
SIGNAL \car_exited~inputclkctrl_outclk\ : std_logic;
SIGNAL \cars_exited_uni[0]~0_combout\ : std_logic;
SIGNAL \is_uni_car_exited~input_o\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \cars_entered[0]~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~14DUPLICATE_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6DUPLICATE_combout\ : std_logic;
SIGNAL \hour~1_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \hour~0_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \hour~39_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \hour~34_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \hour~35_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \hour~37_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \hour~36_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \hour~19_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \hour~18_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \hour~17_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \hour~20_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \hour~16_combout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \hour~15_combout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \hour~14_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \hour~13_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \hour~12_combout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \hour~11_combout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \hour~10_combout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \hour~9_combout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \hour~8_combout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \hour~7_combout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \hour~21_combout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \hour~6_combout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \hour~5_combout\ : std_logic;
SIGNAL \hour[24]~feeder_combout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \hour~4_combout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \hour~3_combout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \hour~2_combout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \hour~25_combout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \hour~24_combout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \hour~23_combout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \hour~22_combout\ : std_logic;
SIGNAL \hour~26_combout\ : std_logic;
SIGNAL \hour~29_combout\ : std_logic;
SIGNAL \hour~30_combout\ : std_logic;
SIGNAL \hour~31_combout\ : std_logic;
SIGNAL \hour~28_combout\ : std_logic;
SIGNAL \hour~27_combout\ : std_logic;
SIGNAL \hour~32_combout\ : std_logic;
SIGNAL \hour~33_combout\ : std_logic;
SIGNAL \hour~38_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \hour~0DUPLICATE_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \capacity_free~0_combout\ : std_logic;
SIGNAL \Equal3~12_combout\ : std_logic;
SIGNAL \Equal3~13_combout\ : std_logic;
SIGNAL \Equal3~11_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \Equal3~10_combout\ : std_logic;
SIGNAL \Equal3~14_combout\ : std_logic;
SIGNAL \Equal3~16_combout\ : std_logic;
SIGNAL \Equal3~17_combout\ : std_logic;
SIGNAL \Equal3~15_combout\ : std_logic;
SIGNAL \Equal3~18DUPLICATE_combout\ : std_logic;
SIGNAL \capacity_free~1_combout\ : std_logic;
SIGNAL \Equal3~18_combout\ : std_logic;
SIGNAL \Equal3~19_combout\ : std_logic;
SIGNAL \capacity_free~5_combout\ : std_logic;
SIGNAL \capacity_free~3_combout\ : std_logic;
SIGNAL \capacity_free~4_combout\ : std_logic;
SIGNAL \capacity_free~2_combout\ : std_logic;
SIGNAL \Add10~2_cout\ : std_logic;
SIGNAL \Add10~6\ : std_logic;
SIGNAL \Add10~10\ : std_logic;
SIGNAL \Add10~14\ : std_logic;
SIGNAL \Add10~18\ : std_logic;
SIGNAL \Add10~22\ : std_logic;
SIGNAL \Add10~26\ : std_logic;
SIGNAL \Add10~29_sumout\ : std_logic;
SIGNAL \LessThan6~5_combout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \Add10~25_sumout\ : std_logic;
SIGNAL \LessThan6~10_combout\ : std_logic;
SIGNAL \LessThan6~7_combout\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \Add10~13_sumout\ : std_logic;
SIGNAL \Add10~9_sumout\ : std_logic;
SIGNAL \LessThan6~13_combout\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \Add10~5_sumout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~11_combout\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \Add10~17_sumout\ : std_logic;
SIGNAL \Add10~21_sumout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \LessThan6~12_combout\ : std_logic;
SIGNAL \LessThan6~14_combout\ : std_logic;
SIGNAL \Add10~30\ : std_logic;
SIGNAL \Add10~34\ : std_logic;
SIGNAL \Add10~37_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~41_sumout\ : std_logic;
SIGNAL \Add10~38\ : std_logic;
SIGNAL \Add10~41_sumout\ : std_logic;
SIGNAL \Add10~33_sumout\ : std_logic;
SIGNAL \LessThan6~15_combout\ : std_logic;
SIGNAL \LessThan6~9_combout\ : std_logic;
SIGNAL \LessThan6~16DUPLICATE_combout\ : std_logic;
SIGNAL \cars_exited[0]~3_combout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~30\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~33_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \cars_exited[0]~1_combout\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \cars_exited[0]~0_combout\ : std_logic;
SIGNAL \cars_exited[0]~2_combout\ : std_logic;
SIGNAL \Add6~34\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~37_sumout\ : std_logic;
SIGNAL \cars_exited[0]~2DUPLICATE_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~6\ : std_logic;
SIGNAL \Add11~10\ : std_logic;
SIGNAL \Add11~14\ : std_logic;
SIGNAL \Add11~18\ : std_logic;
SIGNAL \Add11~22\ : std_logic;
SIGNAL \Add11~25_sumout\ : std_logic;
SIGNAL \Add11~21_sumout\ : std_logic;
SIGNAL \Add11~26\ : std_logic;
SIGNAL \Add11~29_sumout\ : std_logic;
SIGNAL \Add11~30\ : std_logic;
SIGNAL \Add11~34\ : std_logic;
SIGNAL \Add11~37_sumout\ : std_logic;
SIGNAL \Add11~9_sumout\ : std_logic;
SIGNAL \Add11~5_sumout\ : std_logic;
SIGNAL \Add11~13_sumout\ : std_logic;
SIGNAL \Add11~1_sumout\ : std_logic;
SIGNAL \Add11~17_sumout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Add11~33_sumout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~6\ : std_logic;
SIGNAL \Add9~10\ : std_logic;
SIGNAL \Add9~14\ : std_logic;
SIGNAL \Add9~17_sumout\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \Add9~18\ : std_logic;
SIGNAL \Add9~21_sumout\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \Add9~22\ : std_logic;
SIGNAL \Add9~25_sumout\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \Add9~5_sumout\ : std_logic;
SIGNAL \Add9~1_sumout\ : std_logic;
SIGNAL \Add9~9_sumout\ : std_logic;
SIGNAL \Add9~13_sumout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \Add8~30\ : std_logic;
SIGNAL \Add8~34\ : std_logic;
SIGNAL \Add8~37_sumout\ : std_logic;
SIGNAL \Add9~26\ : std_logic;
SIGNAL \Add9~30\ : std_logic;
SIGNAL \Add9~33_sumout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~5_combout\ : std_logic;
SIGNAL \LessThan7~6_combout\ : std_logic;
SIGNAL \LessThan7~7_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~8_combout\ : std_logic;
SIGNAL \Add11~38\ : std_logic;
SIGNAL \Add11~41_sumout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan6~4_combout\ : std_logic;
SIGNAL \LessThan6~6DUPLICATE_combout\ : std_logic;
SIGNAL \LessThan6~8_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \cars_entered[0]~0_combout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add6~38\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~41_sumout\ : std_logic;
SIGNAL \Add8~38\ : std_logic;
SIGNAL \Add8~41_sumout\ : std_logic;
SIGNAL \Add9~34\ : std_logic;
SIGNAL \Add9~37_sumout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~4_combout\ : std_logic;
SIGNAL \always1~0_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add7~37_sumout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \Add8~33_sumout\ : std_logic;
SIGNAL \Add9~29_sumout\ : std_logic;
SIGNAL \always1~0DUPLICATE_combout\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \LessThan6~6_combout\ : std_logic;
SIGNAL \vacated_space~0_combout\ : std_logic;
SIGNAL \vacated_space~1_combout\ : std_logic;
SIGNAL \vacated_space~2_combout\ : std_logic;
SIGNAL \vacated_space~3_combout\ : std_logic;
SIGNAL \vacated_space~4_combout\ : std_logic;
SIGNAL \vacated_space~5_combout\ : std_logic;
SIGNAL \vacated_space~6_combout\ : std_logic;
SIGNAL \vacated_space~7_combout\ : std_logic;
SIGNAL \vacated_space~8_combout\ : std_logic;
SIGNAL \vacated_space~9_combout\ : std_logic;
SIGNAL \vacated_space~10_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan6~16_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL hour : std_logic_vector(31 DOWNTO 0);
SIGNAL clock_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL cars_exited_uni : std_logic_vector(31 DOWNTO 0);
SIGNAL cars_exited : std_logic_vector(31 DOWNTO 0);
SIGNAL cars_entered_uni : std_logic_vector(31 DOWNTO 0);
SIGNAL cars_entered : std_logic_vector(31 DOWNTO 0);
SIGNAL capacity_free : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_Equal3~18DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~14DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_hour~0DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~16DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~6DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_is_uni_car_entered~input_o\ : std_logic;
SIGNAL \ALT_INV_is_uni_car_exited~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~16_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~15_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~18_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~17_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~16_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~15_combout\ : std_logic;
SIGNAL \ALT_INV_hour~35_combout\ : std_logic;
SIGNAL \ALT_INV_hour~34_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~14_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~13_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~8_combout\ : std_logic;
SIGNAL \ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~5_combout\ : std_logic;
SIGNAL \ALT_INV_hour~33_combout\ : std_logic;
SIGNAL \ALT_INV_hour~32_combout\ : std_logic;
SIGNAL \ALT_INV_hour~31_combout\ : std_logic;
SIGNAL \ALT_INV_hour~30_combout\ : std_logic;
SIGNAL \ALT_INV_hour~29_combout\ : std_logic;
SIGNAL \ALT_INV_hour~28_combout\ : std_logic;
SIGNAL \ALT_INV_hour~27_combout\ : std_logic;
SIGNAL \ALT_INV_hour~26_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~14_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \ALT_INV_hour~25_combout\ : std_logic;
SIGNAL \ALT_INV_hour~24_combout\ : std_logic;
SIGNAL \ALT_INV_hour~23_combout\ : std_logic;
SIGNAL \ALT_INV_hour~22_combout\ : std_logic;
SIGNAL ALT_INV_hour : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_hour~21_combout\ : std_logic;
SIGNAL \ALT_INV_hour~20_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \ALT_INV_hour~19_combout\ : std_logic;
SIGNAL \ALT_INV_hour~18_combout\ : std_logic;
SIGNAL \ALT_INV_hour~17_combout\ : std_logic;
SIGNAL \ALT_INV_hour~16_combout\ : std_logic;
SIGNAL \ALT_INV_hour~15_combout\ : std_logic;
SIGNAL \ALT_INV_hour~14_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_hour~13_combout\ : std_logic;
SIGNAL \ALT_INV_hour~12_combout\ : std_logic;
SIGNAL \ALT_INV_hour~11_combout\ : std_logic;
SIGNAL \ALT_INV_hour~10_combout\ : std_logic;
SIGNAL \ALT_INV_hour~9_combout\ : std_logic;
SIGNAL \ALT_INV_hour~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_hour~7_combout\ : std_logic;
SIGNAL \ALT_INV_hour~6_combout\ : std_logic;
SIGNAL \ALT_INV_hour~5_combout\ : std_logic;
SIGNAL \ALT_INV_hour~4_combout\ : std_logic;
SIGNAL \ALT_INV_hour~3_combout\ : std_logic;
SIGNAL \ALT_INV_hour~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_hour~1_combout\ : std_logic;
SIGNAL \ALT_INV_hour~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~3_combout\ : std_logic;
SIGNAL \ALT_INV_cars_exited[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_cars_exited[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~4_combout\ : std_logic;
SIGNAL ALT_INV_capacity_free : std_logic_vector(7 DOWNTO 1);
SIGNAL \ALT_INV_LessThan7~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL ALT_INV_cars_entered : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_cars_exited : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_cars_entered_uni : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_cars_exited_uni : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_Add11~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL ALT_INV_clock_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;

BEGIN

ww_car_entered <= car_entered;
ww_is_uni_car_entered <= is_uni_car_entered;
ww_car_exited <= car_exited;
ww_is_uni_car_exited <= is_uni_car_exited;
ww_clk <= clk;
uni_parked_car <= ww_uni_parked_car;
parked_car <= ww_parked_car;
uni_vacated_space <= ww_uni_vacated_space;
vacated_space <= ww_vacated_space;
uni_is_vacated_space <= ww_uni_is_vacated_space;
is_vacated_space <= ww_is_vacated_space;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal3~18DUPLICATE_combout\ <= NOT \Equal3~18DUPLICATE_combout\;
\ALT_INV_Equal0~14DUPLICATE_combout\ <= NOT \Equal0~14DUPLICATE_combout\;
\ALT_INV_hour~0DUPLICATE_combout\ <= NOT \hour~0DUPLICATE_combout\;
\ALT_INV_Equal0~6DUPLICATE_combout\ <= NOT \Equal0~6DUPLICATE_combout\;
\ALT_INV_LessThan6~16DUPLICATE_combout\ <= NOT \LessThan6~16DUPLICATE_combout\;
\ALT_INV_LessThan6~6DUPLICATE_combout\ <= NOT \LessThan6~6DUPLICATE_combout\;
\ALT_INV_is_uni_car_entered~input_o\ <= NOT \is_uni_car_entered~input_o\;
\ALT_INV_is_uni_car_exited~input_o\ <= NOT \is_uni_car_exited~input_o\;
\ALT_INV_Equal0~16_combout\ <= NOT \Equal0~16_combout\;
\ALT_INV_Equal0~15_combout\ <= NOT \Equal0~15_combout\;
\ALT_INV_Equal3~18_combout\ <= NOT \Equal3~18_combout\;
\ALT_INV_Equal3~17_combout\ <= NOT \Equal3~17_combout\;
\ALT_INV_Equal3~16_combout\ <= NOT \Equal3~16_combout\;
\ALT_INV_Equal3~15_combout\ <= NOT \Equal3~15_combout\;
\ALT_INV_hour~35_combout\ <= NOT \hour~35_combout\;
\ALT_INV_hour~34_combout\ <= NOT \hour~34_combout\;
\ALT_INV_Equal3~14_combout\ <= NOT \Equal3~14_combout\;
\ALT_INV_Equal3~13_combout\ <= NOT \Equal3~13_combout\;
\ALT_INV_Equal3~12_combout\ <= NOT \Equal3~12_combout\;
\ALT_INV_Equal3~11_combout\ <= NOT \Equal3~11_combout\;
\ALT_INV_Equal3~10_combout\ <= NOT \Equal3~10_combout\;
\ALT_INV_Equal3~9_combout\ <= NOT \Equal3~9_combout\;
\ALT_INV_Equal3~8_combout\ <= NOT \Equal3~8_combout\;
\ALT_INV_always0~0_combout\ <= NOT \always0~0_combout\;
\ALT_INV_Equal3~7_combout\ <= NOT \Equal3~7_combout\;
\ALT_INV_Equal3~6_combout\ <= NOT \Equal3~6_combout\;
\ALT_INV_Equal3~5_combout\ <= NOT \Equal3~5_combout\;
\ALT_INV_hour~33_combout\ <= NOT \hour~33_combout\;
\ALT_INV_hour~32_combout\ <= NOT \hour~32_combout\;
\ALT_INV_hour~31_combout\ <= NOT \hour~31_combout\;
\ALT_INV_hour~30_combout\ <= NOT \hour~30_combout\;
\ALT_INV_hour~29_combout\ <= NOT \hour~29_combout\;
\ALT_INV_hour~28_combout\ <= NOT \hour~28_combout\;
\ALT_INV_hour~27_combout\ <= NOT \hour~27_combout\;
\ALT_INV_hour~26_combout\ <= NOT \hour~26_combout\;
\ALT_INV_Equal0~14_combout\ <= NOT \Equal0~14_combout\;
\ALT_INV_Equal0~13_combout\ <= NOT \Equal0~13_combout\;
\ALT_INV_Equal3~4_combout\ <= NOT \Equal3~4_combout\;
\ALT_INV_Equal3~3_combout\ <= NOT \Equal3~3_combout\;
\ALT_INV_hour~25_combout\ <= NOT \hour~25_combout\;
\ALT_INV_hour~24_combout\ <= NOT \hour~24_combout\;
\ALT_INV_hour~23_combout\ <= NOT \hour~23_combout\;
\ALT_INV_hour~22_combout\ <= NOT \hour~22_combout\;
ALT_INV_hour(28) <= NOT hour(28);
ALT_INV_hour(29) <= NOT hour(29);
ALT_INV_hour(30) <= NOT hour(30);
ALT_INV_hour(31) <= NOT hour(31);
\ALT_INV_hour~21_combout\ <= NOT \hour~21_combout\;
\ALT_INV_hour~20_combout\ <= NOT \hour~20_combout\;
\ALT_INV_Equal3~2_combout\ <= NOT \Equal3~2_combout\;
\ALT_INV_hour~19_combout\ <= NOT \hour~19_combout\;
\ALT_INV_hour~18_combout\ <= NOT \hour~18_combout\;
\ALT_INV_hour~17_combout\ <= NOT \hour~17_combout\;
\ALT_INV_hour~16_combout\ <= NOT \hour~16_combout\;
\ALT_INV_hour~15_combout\ <= NOT \hour~15_combout\;
\ALT_INV_hour~14_combout\ <= NOT \hour~14_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_hour~13_combout\ <= NOT \hour~13_combout\;
\ALT_INV_hour~12_combout\ <= NOT \hour~12_combout\;
\ALT_INV_hour~11_combout\ <= NOT \hour~11_combout\;
\ALT_INV_hour~10_combout\ <= NOT \hour~10_combout\;
\ALT_INV_hour~9_combout\ <= NOT \hour~9_combout\;
\ALT_INV_hour~8_combout\ <= NOT \hour~8_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_hour~7_combout\ <= NOT \hour~7_combout\;
\ALT_INV_hour~6_combout\ <= NOT \hour~6_combout\;
\ALT_INV_hour~5_combout\ <= NOT \hour~5_combout\;
\ALT_INV_hour~4_combout\ <= NOT \hour~4_combout\;
\ALT_INV_hour~3_combout\ <= NOT \hour~3_combout\;
\ALT_INV_hour~2_combout\ <= NOT \hour~2_combout\;
ALT_INV_hour(2) <= NOT hour(2);
ALT_INV_hour(3) <= NOT hour(3);
ALT_INV_hour(4) <= NOT hour(4);
ALT_INV_hour(5) <= NOT hour(5);
ALT_INV_hour(6) <= NOT hour(6);
ALT_INV_hour(7) <= NOT hour(7);
ALT_INV_hour(8) <= NOT hour(8);
ALT_INV_hour(9) <= NOT hour(9);
ALT_INV_hour(10) <= NOT hour(10);
ALT_INV_hour(11) <= NOT hour(11);
ALT_INV_hour(12) <= NOT hour(12);
ALT_INV_hour(13) <= NOT hour(13);
ALT_INV_hour(14) <= NOT hour(14);
ALT_INV_hour(15) <= NOT hour(15);
ALT_INV_hour(16) <= NOT hour(16);
ALT_INV_hour(17) <= NOT hour(17);
ALT_INV_hour(18) <= NOT hour(18);
ALT_INV_hour(19) <= NOT hour(19);
ALT_INV_hour(20) <= NOT hour(20);
ALT_INV_hour(21) <= NOT hour(21);
ALT_INV_hour(22) <= NOT hour(22);
ALT_INV_hour(23) <= NOT hour(23);
ALT_INV_hour(24) <= NOT hour(24);
ALT_INV_hour(25) <= NOT hour(25);
ALT_INV_hour(26) <= NOT hour(26);
ALT_INV_hour(27) <= NOT hour(27);
\ALT_INV_Equal0~12_combout\ <= NOT \Equal0~12_combout\;
\ALT_INV_Equal0~11_combout\ <= NOT \Equal0~11_combout\;
\ALT_INV_Equal0~10_combout\ <= NOT \Equal0~10_combout\;
\ALT_INV_Equal0~9_combout\ <= NOT \Equal0~9_combout\;
\ALT_INV_Equal0~8_combout\ <= NOT \Equal0~8_combout\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_hour~1_combout\ <= NOT \hour~1_combout\;
\ALT_INV_hour~0_combout\ <= NOT \hour~0_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_hour(0) <= NOT hour(0);
ALT_INV_hour(1) <= NOT hour(1);
\ALT_INV_LessThan5~3_combout\ <= NOT \LessThan5~3_combout\;
\ALT_INV_cars_exited[0]~1_combout\ <= NOT \cars_exited[0]~1_combout\;
\ALT_INV_cars_exited[0]~0_combout\ <= NOT \cars_exited[0]~0_combout\;
\ALT_INV_LessThan4~4_combout\ <= NOT \LessThan4~4_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_LessThan5~1_combout\ <= NOT \LessThan5~1_combout\;
\ALT_INV_LessThan5~0_combout\ <= NOT \LessThan5~0_combout\;
\ALT_INV_LessThan4~3_combout\ <= NOT \LessThan4~3_combout\;
\ALT_INV_LessThan4~2_combout\ <= NOT \LessThan4~2_combout\;
\ALT_INV_LessThan6~16_combout\ <= NOT \LessThan6~16_combout\;
\ALT_INV_LessThan6~15_combout\ <= NOT \LessThan6~15_combout\;
\ALT_INV_LessThan6~14_combout\ <= NOT \LessThan6~14_combout\;
\ALT_INV_LessThan6~13_combout\ <= NOT \LessThan6~13_combout\;
\ALT_INV_LessThan6~12_combout\ <= NOT \LessThan6~12_combout\;
\ALT_INV_LessThan6~11_combout\ <= NOT \LessThan6~11_combout\;
\ALT_INV_LessThan6~10_combout\ <= NOT \LessThan6~10_combout\;
\ALT_INV_LessThan6~9_combout\ <= NOT \LessThan6~9_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_LessThan6~8_combout\ <= NOT \LessThan6~8_combout\;
\ALT_INV_LessThan6~7_combout\ <= NOT \LessThan6~7_combout\;
\ALT_INV_LessThan6~6_combout\ <= NOT \LessThan6~6_combout\;
\ALT_INV_LessThan6~5_combout\ <= NOT \LessThan6~5_combout\;
\ALT_INV_LessThan6~4_combout\ <= NOT \LessThan6~4_combout\;
\ALT_INV_LessThan6~3_combout\ <= NOT \LessThan6~3_combout\;
\ALT_INV_LessThan6~2_combout\ <= NOT \LessThan6~2_combout\;
\ALT_INV_LessThan6~1_combout\ <= NOT \LessThan6~1_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_LessThan7~8_combout\ <= NOT \LessThan7~8_combout\;
\ALT_INV_LessThan7~7_combout\ <= NOT \LessThan7~7_combout\;
\ALT_INV_LessThan7~6_combout\ <= NOT \LessThan7~6_combout\;
\ALT_INV_LessThan7~5_combout\ <= NOT \LessThan7~5_combout\;
\ALT_INV_LessThan7~4_combout\ <= NOT \LessThan7~4_combout\;
ALT_INV_capacity_free(5) <= NOT capacity_free(5);
ALT_INV_capacity_free(6) <= NOT capacity_free(6);
\ALT_INV_LessThan7~3_combout\ <= NOT \LessThan7~3_combout\;
\ALT_INV_LessThan7~2_combout\ <= NOT \LessThan7~2_combout\;
ALT_INV_capacity_free(3) <= NOT capacity_free(3);
ALT_INV_capacity_free(4) <= NOT capacity_free(4);
\ALT_INV_LessThan7~1_combout\ <= NOT \LessThan7~1_combout\;
ALT_INV_capacity_free(1) <= NOT capacity_free(1);
ALT_INV_capacity_free(7) <= NOT capacity_free(7);
\ALT_INV_LessThan7~0_combout\ <= NOT \LessThan7~0_combout\;
ALT_INV_capacity_free(2) <= NOT capacity_free(2);
ALT_INV_cars_entered(10) <= NOT cars_entered(10);
ALT_INV_cars_exited(10) <= NOT cars_exited(10);
ALT_INV_cars_entered(9) <= NOT cars_entered(9);
ALT_INV_cars_exited(9) <= NOT cars_exited(9);
ALT_INV_cars_entered(8) <= NOT cars_entered(8);
ALT_INV_cars_exited(8) <= NOT cars_exited(8);
ALT_INV_cars_entered(7) <= NOT cars_entered(7);
ALT_INV_cars_exited(7) <= NOT cars_exited(7);
ALT_INV_cars_entered(6) <= NOT cars_entered(6);
ALT_INV_cars_exited(6) <= NOT cars_exited(6);
ALT_INV_cars_entered(5) <= NOT cars_entered(5);
ALT_INV_cars_exited(5) <= NOT cars_exited(5);
ALT_INV_cars_entered(4) <= NOT cars_entered(4);
ALT_INV_cars_exited(4) <= NOT cars_exited(4);
ALT_INV_cars_entered(3) <= NOT cars_entered(3);
ALT_INV_cars_exited(3) <= NOT cars_exited(3);
ALT_INV_cars_entered(2) <= NOT cars_entered(2);
ALT_INV_cars_exited(2) <= NOT cars_exited(2);
ALT_INV_cars_entered(1) <= NOT cars_entered(1);
ALT_INV_cars_exited(1) <= NOT cars_exited(1);
ALT_INV_cars_entered(0) <= NOT cars_entered(0);
ALT_INV_cars_exited(0) <= NOT cars_exited(0);
ALT_INV_cars_entered_uni(10) <= NOT cars_entered_uni(10);
ALT_INV_cars_exited_uni(10) <= NOT cars_exited_uni(10);
ALT_INV_cars_entered_uni(9) <= NOT cars_entered_uni(9);
ALT_INV_cars_exited_uni(9) <= NOT cars_exited_uni(9);
\ALT_INV_Add11~41_sumout\ <= NOT \Add11~41_sumout\;
\ALT_INV_Add11~37_sumout\ <= NOT \Add11~37_sumout\;
\ALT_INV_Add11~33_sumout\ <= NOT \Add11~33_sumout\;
\ALT_INV_Add11~29_sumout\ <= NOT \Add11~29_sumout\;
\ALT_INV_Add11~25_sumout\ <= NOT \Add11~25_sumout\;
\ALT_INV_Add11~21_sumout\ <= NOT \Add11~21_sumout\;
\ALT_INV_Add11~17_sumout\ <= NOT \Add11~17_sumout\;
\ALT_INV_Add11~13_sumout\ <= NOT \Add11~13_sumout\;
\ALT_INV_Add11~9_sumout\ <= NOT \Add11~9_sumout\;
\ALT_INV_Add11~5_sumout\ <= NOT \Add11~5_sumout\;
\ALT_INV_Add11~1_sumout\ <= NOT \Add11~1_sumout\;
\ALT_INV_Add10~41_sumout\ <= NOT \Add10~41_sumout\;
\ALT_INV_Add10~37_sumout\ <= NOT \Add10~37_sumout\;
\ALT_INV_Add10~33_sumout\ <= NOT \Add10~33_sumout\;
\ALT_INV_Add10~29_sumout\ <= NOT \Add10~29_sumout\;
\ALT_INV_Add10~25_sumout\ <= NOT \Add10~25_sumout\;
\ALT_INV_Add10~21_sumout\ <= NOT \Add10~21_sumout\;
\ALT_INV_Add10~17_sumout\ <= NOT \Add10~17_sumout\;
\ALT_INV_Add10~13_sumout\ <= NOT \Add10~13_sumout\;
\ALT_INV_Add10~9_sumout\ <= NOT \Add10~9_sumout\;
\ALT_INV_Add10~5_sumout\ <= NOT \Add10~5_sumout\;
\ALT_INV_Add9~37_sumout\ <= NOT \Add9~37_sumout\;
\ALT_INV_Add8~41_sumout\ <= NOT \Add8~41_sumout\;
\ALT_INV_Add9~33_sumout\ <= NOT \Add9~33_sumout\;
\ALT_INV_Add8~37_sumout\ <= NOT \Add8~37_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_clock_counter(0) <= NOT clock_counter(0);
ALT_INV_clock_counter(1) <= NOT clock_counter(1);
ALT_INV_clock_counter(2) <= NOT clock_counter(2);
ALT_INV_clock_counter(3) <= NOT clock_counter(3);
ALT_INV_clock_counter(4) <= NOT clock_counter(4);
ALT_INV_clock_counter(5) <= NOT clock_counter(5);
ALT_INV_clock_counter(6) <= NOT clock_counter(6);
ALT_INV_clock_counter(7) <= NOT clock_counter(7);
ALT_INV_clock_counter(8) <= NOT clock_counter(8);
ALT_INV_clock_counter(9) <= NOT clock_counter(9);
ALT_INV_clock_counter(10) <= NOT clock_counter(10);
ALT_INV_clock_counter(11) <= NOT clock_counter(11);
ALT_INV_clock_counter(12) <= NOT clock_counter(12);
ALT_INV_clock_counter(13) <= NOT clock_counter(13);
ALT_INV_clock_counter(14) <= NOT clock_counter(14);
ALT_INV_clock_counter(15) <= NOT clock_counter(15);
ALT_INV_clock_counter(16) <= NOT clock_counter(16);
ALT_INV_clock_counter(17) <= NOT clock_counter(17);
ALT_INV_clock_counter(18) <= NOT clock_counter(18);
ALT_INV_clock_counter(19) <= NOT clock_counter(19);
ALT_INV_clock_counter(20) <= NOT clock_counter(20);
ALT_INV_clock_counter(21) <= NOT clock_counter(21);
ALT_INV_clock_counter(22) <= NOT clock_counter(22);
ALT_INV_clock_counter(23) <= NOT clock_counter(23);
ALT_INV_clock_counter(24) <= NOT clock_counter(24);
ALT_INV_clock_counter(25) <= NOT clock_counter(25);
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add9~29_sumout\ <= NOT \Add9~29_sumout\;
\ALT_INV_Add8~33_sumout\ <= NOT \Add8~33_sumout\;
\ALT_INV_Add9~25_sumout\ <= NOT \Add9~25_sumout\;
\ALT_INV_Add8~29_sumout\ <= NOT \Add8~29_sumout\;
\ALT_INV_Add9~21_sumout\ <= NOT \Add9~21_sumout\;
\ALT_INV_Add8~25_sumout\ <= NOT \Add8~25_sumout\;
\ALT_INV_Add9~17_sumout\ <= NOT \Add9~17_sumout\;
\ALT_INV_Add8~21_sumout\ <= NOT \Add8~21_sumout\;
\ALT_INV_Add9~13_sumout\ <= NOT \Add9~13_sumout\;
\ALT_INV_Add8~17_sumout\ <= NOT \Add8~17_sumout\;
\ALT_INV_Add9~9_sumout\ <= NOT \Add9~9_sumout\;
\ALT_INV_Add8~13_sumout\ <= NOT \Add8~13_sumout\;
\ALT_INV_Add9~5_sumout\ <= NOT \Add9~5_sumout\;
\ALT_INV_Add8~9_sumout\ <= NOT \Add8~9_sumout\;
\ALT_INV_Add9~1_sumout\ <= NOT \Add9~1_sumout\;
\ALT_INV_Add8~5_sumout\ <= NOT \Add8~5_sumout\;
\ALT_INV_Add8~1_sumout\ <= NOT \Add8~1_sumout\;
\ALT_INV_Add6~41_sumout\ <= NOT \Add6~41_sumout\;
\ALT_INV_Add6~37_sumout\ <= NOT \Add6~37_sumout\;
\ALT_INV_Add6~33_sumout\ <= NOT \Add6~33_sumout\;
\ALT_INV_Add6~29_sumout\ <= NOT \Add6~29_sumout\;
\ALT_INV_Add6~25_sumout\ <= NOT \Add6~25_sumout\;
\ALT_INV_Add6~21_sumout\ <= NOT \Add6~21_sumout\;
\ALT_INV_Add6~17_sumout\ <= NOT \Add6~17_sumout\;
\ALT_INV_Add6~13_sumout\ <= NOT \Add6~13_sumout\;
\ALT_INV_Add6~9_sumout\ <= NOT \Add6~9_sumout\;
\ALT_INV_Add6~5_sumout\ <= NOT \Add6~5_sumout\;
\ALT_INV_Add6~1_sumout\ <= NOT \Add6~1_sumout\;
\ALT_INV_Add7~41_sumout\ <= NOT \Add7~41_sumout\;
\ALT_INV_Add7~37_sumout\ <= NOT \Add7~37_sumout\;
\ALT_INV_Add7~33_sumout\ <= NOT \Add7~33_sumout\;
\ALT_INV_Add7~29_sumout\ <= NOT \Add7~29_sumout\;
\ALT_INV_Add7~25_sumout\ <= NOT \Add7~25_sumout\;
\ALT_INV_Add7~21_sumout\ <= NOT \Add7~21_sumout\;
\ALT_INV_Add7~17_sumout\ <= NOT \Add7~17_sumout\;
\ALT_INV_Add7~13_sumout\ <= NOT \Add7~13_sumout\;
\ALT_INV_Add7~9_sumout\ <= NOT \Add7~9_sumout\;
\ALT_INV_Add7~5_sumout\ <= NOT \Add7~5_sumout\;
\ALT_INV_Add7~1_sumout\ <= NOT \Add7~1_sumout\;
ALT_INV_cars_entered_uni(8) <= NOT cars_entered_uni(8);
ALT_INV_cars_exited_uni(8) <= NOT cars_exited_uni(8);
ALT_INV_cars_entered_uni(7) <= NOT cars_entered_uni(7);
ALT_INV_cars_exited_uni(7) <= NOT cars_exited_uni(7);
ALT_INV_cars_entered_uni(6) <= NOT cars_entered_uni(6);
ALT_INV_cars_exited_uni(6) <= NOT cars_exited_uni(6);
ALT_INV_cars_entered_uni(5) <= NOT cars_entered_uni(5);
ALT_INV_cars_exited_uni(5) <= NOT cars_exited_uni(5);
ALT_INV_cars_entered_uni(4) <= NOT cars_entered_uni(4);
ALT_INV_cars_exited_uni(4) <= NOT cars_exited_uni(4);
ALT_INV_cars_entered_uni(3) <= NOT cars_entered_uni(3);
ALT_INV_cars_exited_uni(3) <= NOT cars_exited_uni(3);
ALT_INV_cars_entered_uni(2) <= NOT cars_entered_uni(2);
ALT_INV_cars_exited_uni(2) <= NOT cars_exited_uni(2);
ALT_INV_cars_entered_uni(1) <= NOT cars_entered_uni(1);
ALT_INV_cars_exited_uni(1) <= NOT cars_exited_uni(1);
ALT_INV_cars_entered_uni(0) <= NOT cars_entered_uni(0);
ALT_INV_cars_exited_uni(0) <= NOT cars_exited_uni(0);
\ALT_INV_Add1~125_sumout\ <= NOT \Add1~125_sumout\;
\ALT_INV_Add1~121_sumout\ <= NOT \Add1~121_sumout\;
\ALT_INV_Add1~117_sumout\ <= NOT \Add1~117_sumout\;
\ALT_INV_Add1~113_sumout\ <= NOT \Add1~113_sumout\;
\ALT_INV_Add1~109_sumout\ <= NOT \Add1~109_sumout\;
\ALT_INV_Add1~105_sumout\ <= NOT \Add1~105_sumout\;
\ALT_INV_Add1~101_sumout\ <= NOT \Add1~101_sumout\;
\ALT_INV_Add1~97_sumout\ <= NOT \Add1~97_sumout\;
\ALT_INV_Add1~93_sumout\ <= NOT \Add1~93_sumout\;
\ALT_INV_Add1~89_sumout\ <= NOT \Add1~89_sumout\;
\ALT_INV_Add1~85_sumout\ <= NOT \Add1~85_sumout\;
\ALT_INV_Add1~81_sumout\ <= NOT \Add1~81_sumout\;
\ALT_INV_Add1~77_sumout\ <= NOT \Add1~77_sumout\;
\ALT_INV_Add1~73_sumout\ <= NOT \Add1~73_sumout\;
\ALT_INV_Add1~69_sumout\ <= NOT \Add1~69_sumout\;
\ALT_INV_Add1~65_sumout\ <= NOT \Add1~65_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add0~125_sumout\ <= NOT \Add0~125_sumout\;
ALT_INV_clock_counter(31) <= NOT clock_counter(31);
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
ALT_INV_clock_counter(30) <= NOT clock_counter(30);
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
ALT_INV_clock_counter(29) <= NOT clock_counter(29);
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
ALT_INV_clock_counter(28) <= NOT clock_counter(28);
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
ALT_INV_clock_counter(26) <= NOT clock_counter(26);
ALT_INV_clock_counter(27) <= NOT clock_counter(27);
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;

-- Location: IOOBUF_X45_Y0_N2
\uni_parked_car[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~1_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N98
\uni_parked_car[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~5_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[1]~output_o\);

-- Location: IOOBUF_X28_Y56_N67
\uni_parked_car[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~9_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\uni_parked_car[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~13_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N67
\uni_parked_car[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~17_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[4]~output_o\);

-- Location: IOOBUF_X28_Y56_N98
\uni_parked_car[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~21_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[5]~output_o\);

-- Location: IOOBUF_X28_Y56_N2
\uni_parked_car[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~25_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N36
\uni_parked_car[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~29_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[7]~output_o\);

-- Location: IOOBUF_X28_Y56_N36
\uni_parked_car[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~33_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[8]~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\uni_parked_car[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~37_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[9]~output_o\);

-- Location: IOOBUF_X31_Y56_N2
\uni_parked_car[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~41_sumout\,
	devoe => ww_devoe,
	o => \uni_parked_car[10]~output_o\);

-- Location: IOOBUF_X33_Y56_N98
\parked_car[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~1_sumout\,
	devoe => ww_devoe,
	o => \parked_car[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N98
\parked_car[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~5_sumout\,
	devoe => ww_devoe,
	o => \parked_car[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N67
\parked_car[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~9_sumout\,
	devoe => ww_devoe,
	o => \parked_car[2]~output_o\);

-- Location: IOOBUF_X59_Y46_N98
\parked_car[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~13_sumout\,
	devoe => ww_devoe,
	o => \parked_car[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N67
\parked_car[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~17_sumout\,
	devoe => ww_devoe,
	o => \parked_car[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N67
\parked_car[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~21_sumout\,
	devoe => ww_devoe,
	o => \parked_car[5]~output_o\);

-- Location: IOOBUF_X33_Y0_N33
\parked_car[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~25_sumout\,
	devoe => ww_devoe,
	o => \parked_car[6]~output_o\);

-- Location: IOOBUF_X33_Y0_N67
\parked_car[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~29_sumout\,
	devoe => ww_devoe,
	o => \parked_car[7]~output_o\);

-- Location: IOOBUF_X33_Y56_N67
\parked_car[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~33_sumout\,
	devoe => ww_devoe,
	o => \parked_car[8]~output_o\);

-- Location: IOOBUF_X33_Y0_N5
\parked_car[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~37_sumout\,
	devoe => ww_devoe,
	o => \parked_car[9]~output_o\);

-- Location: IOOBUF_X33_Y56_N5
\parked_car[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~41_sumout\,
	devoe => ww_devoe,
	o => \parked_car[10]~output_o\);

-- Location: IOOBUF_X33_Y0_N98
\uni_vacated_space[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add8~1_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[0]~output_o\);

-- Location: IOOBUF_X31_Y56_N98
\uni_vacated_space[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~1_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[1]~output_o\);

-- Location: IOOBUF_X30_Y56_N98
\uni_vacated_space[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~5_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[2]~output_o\);

-- Location: IOOBUF_X30_Y56_N36
\uni_vacated_space[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~9_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[3]~output_o\);

-- Location: IOOBUF_X31_Y56_N36
\uni_vacated_space[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~13_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\uni_vacated_space[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~17_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N98
\uni_vacated_space[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~21_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[6]~output_o\);

-- Location: IOOBUF_X31_Y56_N67
\uni_vacated_space[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~25_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N36
\uni_vacated_space[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~29_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[8]~output_o\);

-- Location: IOOBUF_X33_Y56_N33
\uni_vacated_space[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add9~33_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[9]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\uni_vacated_space[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Add9~37_sumout\,
	devoe => ww_devoe,
	o => \uni_vacated_space[10]~output_o\);

-- Location: IOOBUF_X30_Y0_N36
\vacated_space[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~0_combout\,
	devoe => ww_devoe,
	o => \vacated_space[0]~output_o\);

-- Location: IOOBUF_X30_Y56_N67
\vacated_space[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~1_combout\,
	devoe => ww_devoe,
	o => \vacated_space[1]~output_o\);

-- Location: IOOBUF_X42_Y56_N2
\vacated_space[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~2_combout\,
	devoe => ww_devoe,
	o => \vacated_space[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N98
\vacated_space[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~3_combout\,
	devoe => ww_devoe,
	o => \vacated_space[3]~output_o\);

-- Location: IOOBUF_X42_Y56_N67
\vacated_space[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~4_combout\,
	devoe => ww_devoe,
	o => \vacated_space[4]~output_o\);

-- Location: IOOBUF_X42_Y56_N98
\vacated_space[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~5_combout\,
	devoe => ww_devoe,
	o => \vacated_space[5]~output_o\);

-- Location: IOOBUF_X30_Y56_N2
\vacated_space[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~6_combout\,
	devoe => ww_devoe,
	o => \vacated_space[6]~output_o\);

-- Location: IOOBUF_X10_Y56_N67
\vacated_space[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~7_combout\,
	devoe => ww_devoe,
	o => \vacated_space[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N33
\vacated_space[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~8_combout\,
	devoe => ww_devoe,
	o => \vacated_space[8]~output_o\);

-- Location: IOOBUF_X44_Y56_N67
\vacated_space[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~9_combout\,
	devoe => ww_devoe,
	o => \vacated_space[9]~output_o\);

-- Location: IOOBUF_X45_Y0_N36
\vacated_space[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vacated_space~10_combout\,
	devoe => ww_devoe,
	o => \vacated_space[10]~output_o\);

-- Location: IOOBUF_X45_Y0_N98
\uni_is_vacated_space~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan4~1_combout\,
	devoe => ww_devoe,
	o => \uni_is_vacated_space~output_o\);

-- Location: IOOBUF_X42_Y56_N36
\is_vacated_space~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan5~2_combout\,
	devoe => ww_devoe,
	o => \is_vacated_space~output_o\);

-- Location: IOIBUF_X26_Y0_N94
\car_entered~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_car_entered,
	o => \car_entered~input_o\);

-- Location: CLKCTRL_G6
\car_entered~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \car_entered~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \car_entered~inputclkctrl_outclk\);

-- Location: LABCELL_X32_Y30_N26
\cars_entered_uni[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \cars_entered_uni[0]~0_combout\ = !cars_entered_uni(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cars_entered_uni(0),
	combout => \cars_entered_uni[0]~0_combout\);

-- Location: IOIBUF_X43_Y0_N1
\is_uni_car_entered~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_uni_car_entered,
	o => \is_uni_car_entered~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\car_exited~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_car_exited,
	o => \car_exited~input_o\);

-- Location: CLKCTRL_G5
\car_exited~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \car_exited~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \car_exited~inputclkctrl_outclk\);

-- Location: LABCELL_X32_Y30_N34
\cars_exited_uni[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \cars_exited_uni[0]~0_combout\ = !cars_exited_uni(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited_uni(0),
	combout => \cars_exited_uni[0]~0_combout\);

-- Location: IOIBUF_X45_Y0_N63
\is_uni_car_exited~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_uni_car_exited,
	o => \is_uni_car_exited~input_o\);

-- Location: MLABCELL_X31_Y30_N0
\Add2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( cars_entered_uni(1) ) + ( cars_entered_uni(0) ) + ( !VCC ))
-- \Add2~2\ = CARRY(( cars_entered_uni(1) ) + ( cars_entered_uni(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered_uni(1),
	dataf => ALT_INV_cars_entered_uni(0),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: MLABCELL_X31_Y29_N28
\cars_entered[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \cars_entered[0]~1_combout\ = !cars_entered(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered(0),
	combout => \cars_entered[0]~1_combout\);

-- Location: IOIBUF_X26_Y0_N32
\clk~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G7
\clk~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: MLABCELL_X21_Y29_N0
\Add1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( VCC ) + ( hour(0) ) + ( !VCC ))
-- \Add1~2\ = CARRY(( VCC ) + ( hour(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X23_Y28_N3
\clock_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~117_sumout\,
	sclr => \Equal0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(29));

-- Location: MLABCELL_X23_Y29_N0
\Add0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( clock_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( clock_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X23_Y28_N23
\clock_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~125_sumout\,
	sclr => \Equal0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(31));

-- Location: MLABCELL_X23_Y28_N18
\Add0~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( clock_counter(29) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( clock_counter(29) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(29),
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: MLABCELL_X23_Y28_N20
\Add0~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( GND ) + ( clock_counter(30) ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( GND ) + ( clock_counter(30) ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_clock_counter(30),
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X23_Y28_N15
\clock_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~121_sumout\,
	sclr => \Equal0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(30));

-- Location: MLABCELL_X23_Y28_N22
\Add0~125\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( clock_counter(31) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(31),
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\);

-- Location: LABCELL_X24_Y28_N12
\Equal0~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = ( !\Add0~61_sumout\ & ( !\Add0~33_sumout\ & ( (!\Add0~25_sumout\ & (!\Add0~29_sumout\ & (\Add0~41_sumout\ & !\Add0~69_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~25_sumout\,
	datab => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_Add0~69_sumout\,
	datae => \ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \Equal0~15_combout\);

-- Location: LABCELL_X24_Y29_N16
\Equal0~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = ( \Add0~37_sumout\ & ( !\Add0~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \Equal0~16_combout\);

-- Location: LABCELL_X24_Y28_N18
\Equal0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = ( \Equal0~15_combout\ & ( \Equal0~16_combout\ & ( (!\Add0~81_sumout\ & (!\Add0~77_sumout\ & (!\Add0~101_sumout\ & !\Add0~109_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~81_sumout\,
	datab => \ALT_INV_Add0~77_sumout\,
	datac => \ALT_INV_Add0~101_sumout\,
	datad => \ALT_INV_Add0~109_sumout\,
	datae => \ALT_INV_Equal0~15_combout\,
	dataf => \ALT_INV_Equal0~16_combout\,
	combout => \Equal0~13_combout\);

-- Location: MLABCELL_X23_Y28_N30
\Equal0~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = ( \Add0~9_sumout\ & ( !\Add0~21_sumout\ & ( (\Add0~1_sumout\ & (\Add0~5_sumout\ & (\Add0~13_sumout\ & !\Add0~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_Add0~17_sumout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \Equal0~10_combout\);

-- Location: MLABCELL_X23_Y28_N36
\Equal0~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = ( \Add0~45_sumout\ & ( \Equal0~10_combout\ & ( (!\Add0~49_sumout\ & (!\Add0~65_sumout\ & (!\Add0~57_sumout\ & !\Add0~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~49_sumout\,
	datab => \ALT_INV_Add0~65_sumout\,
	datac => \ALT_INV_Add0~57_sumout\,
	datad => \ALT_INV_Add0~53_sumout\,
	datae => \ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_Equal0~10_combout\,
	combout => \Equal0~11_combout\);

-- Location: MLABCELL_X23_Y28_N26
\Equal0~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = ( \Equal0~11_combout\ & ( !\Add0~93_sumout\ & ( (!\Add0~97_sumout\ & (!\Add0~85_sumout\ & (!\Add0~105_sumout\ & !\Add0~89_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~97_sumout\,
	datab => \ALT_INV_Add0~85_sumout\,
	datac => \ALT_INV_Add0~105_sumout\,
	datad => \ALT_INV_Add0~89_sumout\,
	datae => \ALT_INV_Equal0~11_combout\,
	dataf => \ALT_INV_Add0~93_sumout\,
	combout => \Equal0~12_combout\);

-- Location: LABCELL_X24_Y28_N22
\Equal0~14DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~14DUPLICATE_combout\ = ( \Equal0~13_combout\ & ( \Equal0~12_combout\ & ( (!\Add0~117_sumout\ & (!\Add0~113_sumout\ & (!\Add0~125_sumout\ & !\Add0~121_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~117_sumout\,
	datab => \ALT_INV_Add0~113_sumout\,
	datac => \ALT_INV_Add0~125_sumout\,
	datad => \ALT_INV_Add0~121_sumout\,
	datae => \ALT_INV_Equal0~13_combout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \Equal0~14DUPLICATE_combout\);

-- Location: FF_X23_Y29_N1
\clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(0));

-- Location: MLABCELL_X23_Y29_N2
\Add0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( clock_counter(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( clock_counter(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X23_Y29_N3
\clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(1));

-- Location: MLABCELL_X23_Y29_N4
\Add0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( clock_counter(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( clock_counter(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X23_Y29_N5
\clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(2));

-- Location: MLABCELL_X23_Y29_N6
\Add0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( clock_counter(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( clock_counter(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X23_Y29_N7
\clock_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(3));

-- Location: MLABCELL_X23_Y29_N8
\Add0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( clock_counter(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( clock_counter(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X23_Y29_N9
\clock_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(4));

-- Location: MLABCELL_X23_Y29_N10
\Add0~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( clock_counter(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( clock_counter(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X23_Y29_N11
\clock_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(5));

-- Location: MLABCELL_X23_Y29_N12
\Add0~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( clock_counter(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( clock_counter(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X23_Y29_N13
\clock_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(6));

-- Location: MLABCELL_X23_Y29_N14
\Add0~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( clock_counter(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( clock_counter(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X23_Y29_N15
\clock_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(7));

-- Location: MLABCELL_X23_Y29_N16
\Add0~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( clock_counter(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( clock_counter(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X23_Y29_N17
\clock_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(8));

-- Location: MLABCELL_X23_Y29_N18
\Add0~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( clock_counter(9) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( clock_counter(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X23_Y29_N19
\clock_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(9));

-- Location: MLABCELL_X23_Y29_N20
\Add0~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( clock_counter(10) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( clock_counter(10) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X23_Y29_N21
\clock_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(10));

-- Location: MLABCELL_X23_Y29_N22
\Add0~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( clock_counter(11) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( clock_counter(11) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(11),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X23_Y29_N23
\clock_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(11));

-- Location: MLABCELL_X23_Y29_N24
\Add0~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( clock_counter(12) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( clock_counter(12) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(12),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X23_Y29_N25
\clock_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(12));

-- Location: MLABCELL_X23_Y29_N26
\Add0~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( clock_counter(13) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( clock_counter(13) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(13),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X23_Y29_N27
\clock_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(13));

-- Location: MLABCELL_X23_Y29_N28
\Add0~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( clock_counter(14) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( clock_counter(14) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(14),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X23_Y29_N29
\clock_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(14));

-- Location: MLABCELL_X23_Y29_N30
\Add0~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( clock_counter(15) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( clock_counter(15) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(15),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X23_Y29_N31
\clock_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(15));

-- Location: MLABCELL_X23_Y29_N32
\Add0~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( clock_counter(16) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( clock_counter(16) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(16),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X23_Y29_N33
\clock_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(16));

-- Location: MLABCELL_X23_Y29_N34
\Add0~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( clock_counter(17) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( clock_counter(17) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(17),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X23_Y29_N35
\clock_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(17));

-- Location: MLABCELL_X23_Y29_N36
\Add0~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( clock_counter(18) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( clock_counter(18) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(18),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X23_Y29_N37
\clock_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(18));

-- Location: MLABCELL_X23_Y29_N38
\Add0~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( clock_counter(19) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( clock_counter(19) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(19),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X23_Y29_N39
\clock_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~14DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(19));

-- Location: MLABCELL_X23_Y28_N0
\Add0~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( clock_counter(20) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( clock_counter(20) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(20),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X23_Y28_N35
\clock_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~81_sumout\,
	sclr => \Equal0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(20));

-- Location: MLABCELL_X23_Y28_N2
\Add0~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( clock_counter(21) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( clock_counter(21) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clock_counter(21),
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X23_Y28_N27
\clock_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~85_sumout\,
	sclr => \Equal0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(21));

-- Location: MLABCELL_X23_Y28_N4
\Add0~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( GND ) + ( clock_counter(22) ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( GND ) + ( clock_counter(22) ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_clock_counter(22),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X23_Y28_N29
\clock_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~89_sumout\,
	sclr => \Equal0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(22));

-- Location: MLABCELL_X23_Y28_N6
\Add0~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( GND ) + ( clock_counter(23) ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( GND ) + ( clock_counter(23) ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_clock_counter(23),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X23_Y28_N25
\clock_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~93_sumout\,
	sclr => \Equal0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(23));

-- Location: MLABCELL_X23_Y28_N8
\Add0~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( GND ) + ( clock_counter(24) ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( GND ) + ( clock_counter(24) ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_clock_counter(24),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X23_Y28_N39
\clock_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~97_sumout\,
	sclr => \Equal0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(24));

-- Location: MLABCELL_X23_Y28_N10
\Add0~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( GND ) + ( clock_counter(25) ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( GND ) + ( clock_counter(25) ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_clock_counter(25),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X23_Y28_N33
\clock_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~101_sumout\,
	sclr => \Equal0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(25));

-- Location: MLABCELL_X23_Y28_N12
\Add0~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( clock_counter(26) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( clock_counter(26) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clock_counter(26),
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X23_Y28_N31
\clock_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~105_sumout\,
	sclr => \Equal0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(26));

-- Location: MLABCELL_X23_Y28_N14
\Add0~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( GND ) + ( clock_counter(27) ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( GND ) + ( clock_counter(27) ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_clock_counter(27),
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X23_Y28_N37
\clock_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~109_sumout\,
	sclr => \Equal0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(27));

-- Location: MLABCELL_X23_Y28_N16
\Add0~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( GND ) + ( clock_counter(28) ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( GND ) + ( clock_counter(28) ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_clock_counter(28),
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X24_Y28_N20
\Equal0~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = ( \Equal0~13_combout\ & ( \Equal0~12_combout\ & ( (!\Add0~117_sumout\ & (!\Add0~113_sumout\ & (!\Add0~121_sumout\ & !\Add0~125_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~117_sumout\,
	datab => \ALT_INV_Add0~113_sumout\,
	datac => \ALT_INV_Add0~121_sumout\,
	datad => \ALT_INV_Add0~125_sumout\,
	datae => \ALT_INV_Equal0~13_combout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \Equal0~14_combout\);

-- Location: FF_X23_Y28_N11
\clock_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~113_sumout\,
	sclr => \Equal0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_counter(28));

-- Location: LABCELL_X22_Y29_N26
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \Add0~41_sumout\ & ( !\Add0~33_sumout\ & ( (!\Add0~25_sumout\ & (!\Add0~29_sumout\ & \Add0~37_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Add0~37_sumout\,
	datae => \ALT_INV_Add0~41_sumout\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X22_Y29_N20
\Equal0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \Equal0~0_combout\ & ( !\Add0~81_sumout\ & ( (!\Add0~73_sumout\ & (!\Add0~61_sumout\ & (!\Add0~69_sumout\ & !\Add0~77_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~73_sumout\,
	datab => \ALT_INV_Add0~61_sumout\,
	datac => \ALT_INV_Add0~69_sumout\,
	datad => \ALT_INV_Add0~77_sumout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Add0~81_sumout\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X22_Y29_N8
\Equal0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\Add0~121_sumout\ & ( \Equal0~1_combout\ & ( (!\Add0~113_sumout\ & (!\Add0~109_sumout\ & (!\Add0~101_sumout\ & !\Add0~117_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~113_sumout\,
	datab => \ALT_INV_Add0~109_sumout\,
	datac => \ALT_INV_Add0~101_sumout\,
	datad => \ALT_INV_Add0~117_sumout\,
	datae => \ALT_INV_Add0~121_sumout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X27_Y28_N0
\Equal0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Add0~1_sumout\ & ( \Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X27_Y28_N6
\Equal0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Equal0~3_combout\ & ( \Add0~45_sumout\ & ( (\Add0~13_sumout\ & (!\Add0~21_sumout\ & (!\Add0~17_sumout\ & \Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datab => \ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Add0~45_sumout\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X27_Y28_N10
\Equal0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !\Add0~57_sumout\ & ( \Equal0~4_combout\ & ( (!\Add0~85_sumout\ & (!\Add0~65_sumout\ & (!\Add0~49_sumout\ & !\Add0~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~85_sumout\,
	datab => \ALT_INV_Add0~65_sumout\,
	datac => \ALT_INV_Add0~49_sumout\,
	datad => \ALT_INV_Add0~53_sumout\,
	datae => \ALT_INV_Add0~57_sumout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X26_Y28_N6
\Equal0~6DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~6DUPLICATE_combout\ = ( !\Add0~125_sumout\ & ( \Equal0~5_combout\ & ( (!\Add0~97_sumout\ & (!\Add0~89_sumout\ & (!\Add0~93_sumout\ & !\Add0~105_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~97_sumout\,
	datab => \ALT_INV_Add0~89_sumout\,
	datac => \ALT_INV_Add0~93_sumout\,
	datad => \ALT_INV_Add0~105_sumout\,
	datae => \ALT_INV_Add0~125_sumout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6DUPLICATE_combout\);

-- Location: LABCELL_X24_Y29_N24
\hour~1\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~1_combout\ = ( \Equal0~2_combout\ & ( \Equal0~6DUPLICATE_combout\ & ( \Add1~1_sumout\ ) ) ) # ( !\Equal0~2_combout\ & ( \Equal0~6DUPLICATE_combout\ & ( hour(0) ) ) ) # ( \Equal0~2_combout\ & ( !\Equal0~6DUPLICATE_combout\ & ( hour(0) ) ) ) # ( 
-- !\Equal0~2_combout\ & ( !\Equal0~6DUPLICATE_combout\ & ( hour(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(0),
	datac => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~6DUPLICATE_combout\,
	combout => \hour~1_combout\);

-- Location: FF_X24_Y29_N27
\hour[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(0));

-- Location: MLABCELL_X21_Y29_N2
\Add1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( hour(1) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( hour(1) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: MLABCELL_X26_Y28_N4
\Equal0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( !\Add0~125_sumout\ & ( \Equal0~5_combout\ & ( (!\Add0~97_sumout\ & (!\Add0~89_sumout\ & (!\Add0~105_sumout\ & !\Add0~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~97_sumout\,
	datab => \ALT_INV_Add0~89_sumout\,
	datac => \ALT_INV_Add0~105_sumout\,
	datad => \ALT_INV_Add0~93_sumout\,
	datae => \ALT_INV_Add0~125_sumout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: MLABCELL_X26_Y28_N26
\hour~0\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~0_combout\ = ( \Equal0~6_combout\ & ( \Equal0~2_combout\ & ( \Add1~5_sumout\ ) ) ) # ( !\Equal0~6_combout\ & ( \Equal0~2_combout\ & ( hour(1) ) ) ) # ( \Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( hour(1) ) ) ) # ( !\Equal0~6_combout\ & ( 
-- !\Equal0~2_combout\ & ( hour(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(1),
	datac => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \hour~0_combout\);

-- Location: FF_X26_Y28_N19
\hour[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(1));

-- Location: MLABCELL_X21_Y29_N4
\Add1~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( GND ) + ( hour(2) ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( GND ) + ( hour(2) ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(2),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X24_Y28_N4
\hour~39\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~39_combout\ = ( \Equal0~14_combout\ & ( \Add1~9_sumout\ ) ) # ( !\Equal0~14_combout\ & ( hour(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~9_sumout\,
	datad => ALT_INV_hour(2),
	dataf => \ALT_INV_Equal0~14_combout\,
	combout => \hour~39_combout\);

-- Location: FF_X24_Y28_N5
\hour[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(2));

-- Location: MLABCELL_X21_Y29_N6
\Add1~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( hour(3) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( hour(3) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(3),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X22_Y29_N30
\Equal0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( !\Add0~33_sumout\ & ( (\Add0~37_sumout\ & (!\Add0~29_sumout\ & !\Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~37_sumout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \Equal0~7_combout\);

-- Location: LABCELL_X22_Y29_N2
\Equal0~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( \Equal0~7_combout\ & ( !\Add0~77_sumout\ & ( (!\Add0~69_sumout\ & (!\Add0~61_sumout\ & (\Add0~41_sumout\ & !\Add0~73_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~69_sumout\,
	datab => \ALT_INV_Add0~61_sumout\,
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_Add0~73_sumout\,
	datae => \ALT_INV_Equal0~7_combout\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \Equal0~8_combout\);

-- Location: LABCELL_X22_Y29_N38
\Equal0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = ( !\Add0~101_sumout\ & ( !\Add0~109_sumout\ & ( (!\Add0~81_sumout\ & (\Equal0~8_combout\ & (!\Add0~117_sumout\ & !\Add0~113_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~81_sumout\,
	datab => \ALT_INV_Equal0~8_combout\,
	datac => \ALT_INV_Add0~117_sumout\,
	datad => \ALT_INV_Add0~113_sumout\,
	datae => \ALT_INV_Add0~101_sumout\,
	dataf => \ALT_INV_Add0~109_sumout\,
	combout => \Equal0~9_combout\);

-- Location: MLABCELL_X21_Y29_N8
\Add1~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( GND ) + ( hour(4) ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( GND ) + ( hour(4) ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(4),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X24_Y28_N26
\hour~34\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~34_combout\ = ( hour(4) & ( \Equal0~2_combout\ & ( ((!\Equal0~12_combout\) # ((!\hour~33_combout\ & \Add1~17_sumout\))) # (\Add0~125_sumout\) ) ) ) # ( !hour(4) & ( \Equal0~2_combout\ & ( (!\hour~33_combout\ & (!\Add0~125_sumout\ & (\Add1~17_sumout\ 
-- & \Equal0~12_combout\))) ) ) ) # ( hour(4) & ( !\Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000010001111111100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hour~33_combout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => ALT_INV_hour(4),
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \hour~34_combout\);

-- Location: FF_X24_Y28_N11
\hour[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(4));

-- Location: MLABCELL_X21_Y29_N10
\Add1~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( GND ) + ( hour(5) ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( GND ) + ( hour(5) ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(5),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X24_Y29_N0
\hour~35\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~35_combout\ = ( hour(5) & ( \Add1~21_sumout\ ) ) # ( !hour(5) & ( \Add1~21_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~12_combout\ & \Equal0~9_combout\))) ) ) ) # ( hour(5) & ( !\Add1~21_sumout\ & ( (((!\Equal0~12_combout\) # 
-- (!\Equal0~9_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Equal0~9_combout\,
	datae => ALT_INV_hour(5),
	dataf => \ALT_INV_Add1~21_sumout\,
	combout => \hour~35_combout\);

-- Location: FF_X24_Y29_N19
\hour[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(5));

-- Location: MLABCELL_X21_Y29_N12
\Add1~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( GND ) + ( hour(6) ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( GND ) + ( hour(6) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(6),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X24_Y29_N20
\hour~37\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~37_combout\ = ( \Equal0~14DUPLICATE_combout\ & ( \Add1~25_sumout\ ) ) # ( !\Equal0~14DUPLICATE_combout\ & ( hour(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~25_sumout\,
	datad => ALT_INV_hour(6),
	dataf => \ALT_INV_Equal0~14DUPLICATE_combout\,
	combout => \hour~37_combout\);

-- Location: FF_X24_Y29_N21
\hour[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(6));

-- Location: MLABCELL_X21_Y29_N14
\Add1~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( hour(7) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( hour(7) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(7),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X22_Y29_N28
\hour~36\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~36_combout\ = ( \Equal0~14DUPLICATE_combout\ & ( \Add1~29_sumout\ ) ) # ( !\Equal0~14DUPLICATE_combout\ & ( hour(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~29_sumout\,
	datad => ALT_INV_hour(7),
	dataf => \ALT_INV_Equal0~14DUPLICATE_combout\,
	combout => \hour~36_combout\);

-- Location: FF_X22_Y29_N29
\hour[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(7));

-- Location: MLABCELL_X21_Y29_N16
\Add1~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( hour(8) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( hour(8) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(8),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X24_Y29_N14
\hour~19\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~19_combout\ = ( hour(8) & ( \Add1~33_sumout\ ) ) # ( !hour(8) & ( \Add1~33_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~9_combout\ & \Equal0~12_combout\))) ) ) ) # ( hour(8) & ( !\Add1~33_sumout\ & ( (((!\Equal0~9_combout\) # 
-- (!\Equal0~12_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~9_combout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => ALT_INV_hour(8),
	dataf => \ALT_INV_Add1~33_sumout\,
	combout => \hour~19_combout\);

-- Location: FF_X24_Y29_N9
\hour[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(8));

-- Location: MLABCELL_X21_Y29_N18
\Add1~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( GND ) + ( hour(9) ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( GND ) + ( hour(9) ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(9),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: LABCELL_X24_Y29_N30
\hour~18\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~18_combout\ = ( hour(9) & ( \Add1~37_sumout\ ) ) # ( !hour(9) & ( \Add1~37_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~9_combout\ & \Equal0~12_combout\))) ) ) ) # ( hour(9) & ( !\Add1~37_sumout\ & ( (((!\Equal0~9_combout\) # 
-- (!\Equal0~12_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~9_combout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => ALT_INV_hour(9),
	dataf => \ALT_INV_Add1~37_sumout\,
	combout => \hour~18_combout\);

-- Location: FF_X24_Y29_N39
\hour[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(9));

-- Location: MLABCELL_X21_Y29_N20
\Add1~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( GND ) + ( hour(10) ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( GND ) + ( hour(10) ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(10),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: LABCELL_X24_Y29_N28
\hour~17\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~17_combout\ = ( hour(10) & ( \Add1~41_sumout\ ) ) # ( !hour(10) & ( \Add1~41_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~12_combout\ & \Equal0~9_combout\))) ) ) ) # ( hour(10) & ( !\Add1~41_sumout\ & ( (((!\Equal0~12_combout\) # 
-- (!\Equal0~9_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Equal0~9_combout\,
	datae => ALT_INV_hour(10),
	dataf => \ALT_INV_Add1~41_sumout\,
	combout => \hour~17_combout\);

-- Location: FF_X24_Y29_N35
\hour[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(10));

-- Location: MLABCELL_X21_Y29_N22
\Add1~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( GND ) + ( hour(11) ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( GND ) + ( hour(11) ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(11),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: LABCELL_X22_Y29_N4
\hour~20\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~20_combout\ = ( hour(11) & ( \Add1~45_sumout\ ) ) # ( !hour(11) & ( \Add1~45_sumout\ & ( (\Equal0~9_combout\ & (!\Add0~125_sumout\ & (\Equal0~12_combout\ & !\Add0~121_sumout\))) ) ) ) # ( hour(11) & ( !\Add1~45_sumout\ & ( (!\Equal0~9_combout\) # 
-- (((!\Equal0~12_combout\) # (\Add0~121_sumout\)) # (\Add0~125_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111111111100000100000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~9_combout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Add0~121_sumout\,
	datae => ALT_INV_hour(11),
	dataf => \ALT_INV_Add1~45_sumout\,
	combout => \hour~20_combout\);

-- Location: FF_X22_Y29_N37
\hour[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(11));

-- Location: MLABCELL_X21_Y29_N24
\Add1~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( GND ) + ( hour(12) ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( GND ) + ( hour(12) ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(12),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: LABCELL_X24_Y29_N12
\hour~16\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~16_combout\ = ( hour(12) & ( \Add1~49_sumout\ ) ) # ( !hour(12) & ( \Add1~49_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~12_combout\ & \Equal0~9_combout\))) ) ) ) # ( hour(12) & ( !\Add1~49_sumout\ & ( (((!\Equal0~12_combout\) # 
-- (!\Equal0~9_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Equal0~9_combout\,
	datae => ALT_INV_hour(12),
	dataf => \ALT_INV_Add1~49_sumout\,
	combout => \hour~16_combout\);

-- Location: FF_X24_Y29_N13
\hour[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(12));

-- Location: MLABCELL_X21_Y29_N26
\Add1~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( GND ) + ( hour(13) ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( GND ) + ( hour(13) ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(13),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: LABCELL_X24_Y29_N2
\hour~15\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~15_combout\ = ( hour(13) & ( \Add1~53_sumout\ ) ) # ( !hour(13) & ( \Add1~53_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~9_combout\ & \Equal0~12_combout\))) ) ) ) # ( hour(13) & ( !\Add1~53_sumout\ & ( (((!\Equal0~9_combout\) # 
-- (!\Equal0~12_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~9_combout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => ALT_INV_hour(13),
	dataf => \ALT_INV_Add1~53_sumout\,
	combout => \hour~15_combout\);

-- Location: FF_X24_Y29_N3
\hour[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(13));

-- Location: MLABCELL_X21_Y29_N28
\Add1~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( GND ) + ( hour(14) ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( GND ) + ( hour(14) ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(14),
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: LABCELL_X24_Y29_N4
\hour~14\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~14_combout\ = ( \Equal0~9_combout\ & ( \Equal0~12_combout\ & ( (!\Add0~121_sumout\ & ((!\Add0~125_sumout\ & (\Add1~57_sumout\)) # (\Add0~125_sumout\ & ((hour(14)))))) # (\Add0~121_sumout\ & (((hour(14))))) ) ) ) # ( !\Equal0~9_combout\ & ( 
-- \Equal0~12_combout\ & ( hour(14) ) ) ) # ( \Equal0~9_combout\ & ( !\Equal0~12_combout\ & ( hour(14) ) ) ) # ( !\Equal0~9_combout\ & ( !\Equal0~12_combout\ & ( hour(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110101001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~57_sumout\,
	datab => ALT_INV_hour(14),
	datac => \ALT_INV_Add0~121_sumout\,
	datad => \ALT_INV_Add0~125_sumout\,
	datae => \ALT_INV_Equal0~9_combout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \hour~14_combout\);

-- Location: FF_X24_Y29_N7
\hour[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(14));

-- Location: MLABCELL_X21_Y29_N30
\Add1~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( hour(15) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( hour(15) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(15),
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: MLABCELL_X26_Y29_N8
\hour~13\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~13_combout\ = ( hour(15) & ( \Add1~61_sumout\ ) ) # ( !hour(15) & ( \Add1~61_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~9_combout\ & \Equal0~12_combout\))) ) ) ) # ( hour(15) & ( !\Add1~61_sumout\ & ( (((!\Equal0~9_combout\) # 
-- (!\Equal0~12_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~9_combout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => ALT_INV_hour(15),
	dataf => \ALT_INV_Add1~61_sumout\,
	combout => \hour~13_combout\);

-- Location: FF_X26_Y29_N9
\hour[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(15));

-- Location: MLABCELL_X21_Y29_N32
\Add1~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( GND ) + ( hour(16) ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( GND ) + ( hour(16) ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(16),
	cin => \Add1~62\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: MLABCELL_X26_Y29_N22
\hour~12\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~12_combout\ = ( hour(16) & ( \Add1~65_sumout\ ) ) # ( !hour(16) & ( \Add1~65_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~12_combout\ & \Equal0~9_combout\))) ) ) ) # ( hour(16) & ( !\Add1~65_sumout\ & ( (((!\Equal0~12_combout\) # 
-- (!\Equal0~9_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Equal0~9_combout\,
	datae => ALT_INV_hour(16),
	dataf => \ALT_INV_Add1~65_sumout\,
	combout => \hour~12_combout\);

-- Location: FF_X26_Y29_N37
\hour[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(16));

-- Location: MLABCELL_X21_Y29_N34
\Add1~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( hour(17) ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( hour(17) ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(17),
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: LABCELL_X22_Y29_N34
\hour~11\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~11_combout\ = ( hour(17) & ( \Add1~69_sumout\ ) ) # ( !hour(17) & ( \Add1~69_sumout\ & ( (\Equal0~9_combout\ & (!\Add0~125_sumout\ & (!\Add0~121_sumout\ & \Equal0~12_combout\))) ) ) ) # ( hour(17) & ( !\Add1~69_sumout\ & ( (!\Equal0~9_combout\) # 
-- (((!\Equal0~12_combout\) # (\Add0~121_sumout\)) # (\Add0~125_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000010000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~9_combout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Add0~121_sumout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => ALT_INV_hour(17),
	dataf => \ALT_INV_Add1~69_sumout\,
	combout => \hour~11_combout\);

-- Location: FF_X22_Y29_N19
\hour[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(17));

-- Location: MLABCELL_X21_Y29_N36
\Add1~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( GND ) + ( hour(18) ) + ( \Add1~70\ ))
-- \Add1~74\ = CARRY(( GND ) + ( hour(18) ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(18),
	cin => \Add1~70\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: MLABCELL_X26_Y29_N4
\hour~10\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~10_combout\ = ( hour(18) & ( \Add1~73_sumout\ ) ) # ( !hour(18) & ( \Add1~73_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~9_combout\ & \Equal0~12_combout\))) ) ) ) # ( hour(18) & ( !\Add1~73_sumout\ & ( (((!\Equal0~9_combout\) # 
-- (!\Equal0~12_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~9_combout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => ALT_INV_hour(18),
	dataf => \ALT_INV_Add1~73_sumout\,
	combout => \hour~10_combout\);

-- Location: FF_X26_Y29_N3
\hour[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(18));

-- Location: MLABCELL_X21_Y29_N38
\Add1~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( GND ) + ( hour(19) ) + ( \Add1~74\ ))
-- \Add1~78\ = CARRY(( GND ) + ( hour(19) ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(19),
	cin => \Add1~74\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: LABCELL_X22_Y29_N16
\hour~9\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~9_combout\ = ( \Add0~125_sumout\ & ( \Equal0~12_combout\ & ( hour(19) ) ) ) # ( !\Add0~125_sumout\ & ( \Equal0~12_combout\ & ( (!\Equal0~9_combout\ & (hour(19))) # (\Equal0~9_combout\ & ((!\Add0~121_sumout\ & ((\Add1~77_sumout\))) # 
-- (\Add0~121_sumout\ & (hour(19))))) ) ) ) # ( \Add0~125_sumout\ & ( !\Equal0~12_combout\ & ( hour(19) ) ) ) # ( !\Add0~125_sumout\ & ( !\Equal0~12_combout\ & ( hour(19) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010011010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(19),
	datab => \ALT_INV_Add1~77_sumout\,
	datac => \ALT_INV_Equal0~9_combout\,
	datad => \ALT_INV_Add0~121_sumout\,
	datae => \ALT_INV_Add0~125_sumout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \hour~9_combout\);

-- Location: FF_X22_Y29_N11
\hour[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(19));

-- Location: MLABCELL_X21_Y28_N0
\Add1~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( GND ) + ( hour(20) ) + ( \Add1~78\ ))
-- \Add1~82\ = CARRY(( GND ) + ( hour(20) ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(20),
	cin => \Add1~78\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: LABCELL_X22_Y29_N12
\hour~8\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~8_combout\ = ( hour(20) & ( \Add1~81_sumout\ ) ) # ( !hour(20) & ( \Add1~81_sumout\ & ( (\Equal0~9_combout\ & (!\Add0~125_sumout\ & (\Equal0~12_combout\ & !\Add0~121_sumout\))) ) ) ) # ( hour(20) & ( !\Add1~81_sumout\ & ( (!\Equal0~9_combout\) # 
-- (((!\Equal0~12_combout\) # (\Add0~121_sumout\)) # (\Add0~125_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111111111100000100000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~9_combout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Add0~121_sumout\,
	datae => ALT_INV_hour(20),
	dataf => \ALT_INV_Add1~81_sumout\,
	combout => \hour~8_combout\);

-- Location: FF_X22_Y29_N25
\hour[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(20));

-- Location: MLABCELL_X21_Y28_N2
\Add1~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( GND ) + ( hour(21) ) + ( \Add1~82\ ))
-- \Add1~86\ = CARRY(( GND ) + ( hour(21) ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(21),
	cin => \Add1~82\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: MLABCELL_X26_Y29_N20
\hour~7\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~7_combout\ = ( hour(21) & ( \Add1~85_sumout\ ) ) # ( !hour(21) & ( \Add1~85_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~9_combout\ & \Equal0~12_combout\))) ) ) ) # ( hour(21) & ( !\Add1~85_sumout\ & ( (((!\Equal0~9_combout\) # 
-- (!\Equal0~12_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~9_combout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => ALT_INV_hour(21),
	dataf => \ALT_INV_Add1~85_sumout\,
	combout => \hour~7_combout\);

-- Location: FF_X26_Y29_N21
\hour[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(21));

-- Location: MLABCELL_X21_Y28_N4
\Add1~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( GND ) + ( hour(22) ) + ( \Add1~86\ ))
-- \Add1~90\ = CARRY(( GND ) + ( hour(22) ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(22),
	cin => \Add1~86\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: LABCELL_X22_Y29_N32
\hour~21\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~21_combout\ = ( hour(22) & ( \Add1~89_sumout\ ) ) # ( !hour(22) & ( \Add1~89_sumout\ & ( (\Equal0~9_combout\ & (!\Add0~125_sumout\ & (\Equal0~12_combout\ & !\Add0~121_sumout\))) ) ) ) # ( hour(22) & ( !\Add1~89_sumout\ & ( (!\Equal0~9_combout\) # 
-- (((!\Equal0~12_combout\) # (\Add0~121_sumout\)) # (\Add0~125_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111111111100000100000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~9_combout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Add0~121_sumout\,
	datae => ALT_INV_hour(22),
	dataf => \ALT_INV_Add1~89_sumout\,
	combout => \hour~21_combout\);

-- Location: FF_X22_Y29_N1
\hour[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(22));

-- Location: MLABCELL_X21_Y28_N6
\Add1~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( GND ) + ( hour(23) ) + ( \Add1~90\ ))
-- \Add1~94\ = CARRY(( GND ) + ( hour(23) ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(23),
	cin => \Add1~90\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: MLABCELL_X26_Y29_N12
\hour~6\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~6_combout\ = ( hour(23) & ( \Add1~93_sumout\ ) ) # ( !hour(23) & ( \Add1~93_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~9_combout\ & \Equal0~12_combout\))) ) ) ) # ( hour(23) & ( !\Add1~93_sumout\ & ( (((!\Equal0~9_combout\) # 
-- (!\Equal0~12_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~9_combout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => ALT_INV_hour(23),
	dataf => \ALT_INV_Add1~93_sumout\,
	combout => \hour~6_combout\);

-- Location: FF_X26_Y29_N27
\hour[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(23));

-- Location: MLABCELL_X21_Y28_N8
\Add1~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( GND ) + ( hour(24) ) + ( \Add1~94\ ))
-- \Add1~98\ = CARRY(( GND ) + ( hour(24) ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(24),
	cin => \Add1~94\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: LABCELL_X22_Y28_N24
\hour~5\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~5_combout\ = ( \Equal0~9_combout\ & ( \Equal0~12_combout\ & ( (!\Add0~125_sumout\ & ((!\Add0~121_sumout\ & ((\Add1~97_sumout\))) # (\Add0~121_sumout\ & (hour(24))))) # (\Add0~125_sumout\ & (hour(24))) ) ) ) # ( !\Equal0~9_combout\ & ( 
-- \Equal0~12_combout\ & ( hour(24) ) ) ) # ( \Equal0~9_combout\ & ( !\Equal0~12_combout\ & ( hour(24) ) ) ) # ( !\Equal0~9_combout\ & ( !\Equal0~12_combout\ & ( hour(24) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110001101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~125_sumout\,
	datab => ALT_INV_hour(24),
	datac => \ALT_INV_Add1~97_sumout\,
	datad => \ALT_INV_Add0~121_sumout\,
	datae => \ALT_INV_Equal0~9_combout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \hour~5_combout\);

-- Location: LABCELL_X22_Y28_N32
\hour[24]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \hour[24]~feeder_combout\ = ( \hour~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_hour~5_combout\,
	combout => \hour[24]~feeder_combout\);

-- Location: FF_X22_Y28_N33
\hour[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(24));

-- Location: MLABCELL_X21_Y28_N10
\Add1~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( hour(25) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~102\ = CARRY(( hour(25) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(25),
	cin => \Add1~98\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: MLABCELL_X26_Y29_N6
\hour~4\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~4_combout\ = ( hour(25) & ( \Add1~101_sumout\ ) ) # ( !hour(25) & ( \Add1~101_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~12_combout\ & \Equal0~9_combout\))) ) ) ) # ( hour(25) & ( !\Add1~101_sumout\ & ( (((!\Equal0~12_combout\) 
-- # (!\Equal0~9_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Equal0~9_combout\,
	datae => ALT_INV_hour(25),
	dataf => \ALT_INV_Add1~101_sumout\,
	combout => \hour~4_combout\);

-- Location: FF_X26_Y29_N7
\hour[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(25));

-- Location: MLABCELL_X21_Y28_N12
\Add1~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( hour(26) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~106\ = CARRY(( hour(26) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(26),
	cin => \Add1~102\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: MLABCELL_X26_Y29_N34
\hour~3\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~3_combout\ = ( hour(26) & ( \Add1~105_sumout\ ) ) # ( !hour(26) & ( \Add1~105_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~12_combout\ & \Equal0~9_combout\))) ) ) ) # ( hour(26) & ( !\Add1~105_sumout\ & ( (((!\Equal0~12_combout\) 
-- # (!\Equal0~9_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Equal0~9_combout\,
	datae => ALT_INV_hour(26),
	dataf => \ALT_INV_Add1~105_sumout\,
	combout => \hour~3_combout\);

-- Location: FF_X26_Y29_N35
\hour[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(26));

-- Location: MLABCELL_X21_Y28_N14
\Add1~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( GND ) + ( hour(27) ) + ( \Add1~106\ ))
-- \Add1~110\ = CARRY(( GND ) + ( hour(27) ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_hour(27),
	cin => \Add1~106\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: MLABCELL_X26_Y29_N14
\hour~2\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~2_combout\ = ( hour(27) & ( \Add1~109_sumout\ ) ) # ( !hour(27) & ( \Add1~109_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~12_combout\ & \Equal0~9_combout\))) ) ) ) # ( hour(27) & ( !\Add1~109_sumout\ & ( (((!\Equal0~12_combout\) 
-- # (!\Equal0~9_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Equal0~9_combout\,
	datae => ALT_INV_hour(27),
	dataf => \ALT_INV_Add1~109_sumout\,
	combout => \hour~2_combout\);

-- Location: FF_X26_Y29_N15
\hour[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(27));

-- Location: MLABCELL_X21_Y28_N16
\Add1~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( hour(28) ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~114\ = CARRY(( hour(28) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(28),
	cin => \Add1~110\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: LABCELL_X22_Y29_N6
\hour~25\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~25_combout\ = ( hour(28) & ( \Add1~113_sumout\ ) ) # ( !hour(28) & ( \Add1~113_sumout\ & ( (\Equal0~9_combout\ & (!\Add0~125_sumout\ & (!\Add0~121_sumout\ & \Equal0~12_combout\))) ) ) ) # ( hour(28) & ( !\Add1~113_sumout\ & ( (!\Equal0~9_combout\) # 
-- (((!\Equal0~12_combout\) # (\Add0~121_sumout\)) # (\Add0~125_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000010000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~9_combout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Add0~121_sumout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => ALT_INV_hour(28),
	dataf => \ALT_INV_Add1~113_sumout\,
	combout => \hour~25_combout\);

-- Location: FF_X22_Y29_N23
\hour[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(28));

-- Location: MLABCELL_X21_Y28_N18
\Add1~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( hour(29) ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~118\ = CARRY(( hour(29) ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(29),
	cin => \Add1~114\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: MLABCELL_X26_Y29_N10
\hour~24\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~24_combout\ = ( hour(29) & ( \Add1~117_sumout\ ) ) # ( !hour(29) & ( \Add1~117_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~12_combout\ & \Equal0~9_combout\))) ) ) ) # ( hour(29) & ( !\Add1~117_sumout\ & ( 
-- (((!\Equal0~12_combout\) # (!\Equal0~9_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Equal0~9_combout\,
	datae => ALT_INV_hour(29),
	dataf => \ALT_INV_Add1~117_sumout\,
	combout => \hour~24_combout\);

-- Location: FF_X26_Y29_N31
\hour[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \hour~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(29));

-- Location: MLABCELL_X21_Y28_N20
\Add1~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( hour(30) ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~122\ = CARRY(( hour(30) ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(30),
	cin => \Add1~118\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: MLABCELL_X26_Y29_N32
\hour~23\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~23_combout\ = ( hour(30) & ( \Add1~121_sumout\ ) ) # ( !hour(30) & ( \Add1~121_sumout\ & ( (!\Add0~121_sumout\ & (!\Add0~125_sumout\ & (\Equal0~9_combout\ & \Equal0~12_combout\))) ) ) ) # ( hour(30) & ( !\Add1~121_sumout\ & ( (((!\Equal0~9_combout\) 
-- # (!\Equal0~12_combout\)) # (\Add0~125_sumout\)) # (\Add0~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~121_sumout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Equal0~9_combout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => ALT_INV_hour(30),
	dataf => \ALT_INV_Add1~121_sumout\,
	combout => \hour~23_combout\);

-- Location: FF_X26_Y29_N33
\hour[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(30));

-- Location: MLABCELL_X21_Y28_N22
\Add1~125\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( hour(31) ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(31),
	cin => \Add1~122\,
	sumout => \Add1~125_sumout\);

-- Location: LABCELL_X22_Y29_N14
\hour~22\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~22_combout\ = ( hour(31) & ( \Add1~125_sumout\ ) ) # ( !hour(31) & ( \Add1~125_sumout\ & ( (\Equal0~9_combout\ & (!\Add0~125_sumout\ & (!\Add0~121_sumout\ & \Equal0~12_combout\))) ) ) ) # ( hour(31) & ( !\Add1~125_sumout\ & ( (!\Equal0~9_combout\) # 
-- (((!\Equal0~12_combout\) # (\Add0~121_sumout\)) # (\Add0~125_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011111100000000010000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~9_combout\,
	datab => \ALT_INV_Add0~125_sumout\,
	datac => \ALT_INV_Add0~121_sumout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => ALT_INV_hour(31),
	dataf => \ALT_INV_Add1~125_sumout\,
	combout => \hour~22_combout\);

-- Location: FF_X22_Y29_N15
\hour[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(31));

-- Location: MLABCELL_X26_Y28_N16
\hour~26\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~26_combout\ = ( !hour(28) & ( !hour(26) & ( (!hour(24) & (!hour(27) & !hour(25))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(24),
	datac => ALT_INV_hour(27),
	datad => ALT_INV_hour(25),
	datae => ALT_INV_hour(28),
	dataf => ALT_INV_hour(26),
	combout => \hour~26_combout\);

-- Location: MLABCELL_X23_Y28_N34
\hour~29\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~29_combout\ = ( !hour(3) & ( hour(0) & ( (hour(4) & (hour(2) & hour(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(4),
	datac => ALT_INV_hour(2),
	datad => ALT_INV_hour(1),
	datae => ALT_INV_hour(3),
	dataf => ALT_INV_hour(0),
	combout => \hour~29_combout\);

-- Location: LABCELL_X24_Y29_N22
\hour~30\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~30_combout\ = ( !hour(7) & ( (!hour(9) & (!hour(6) & !hour(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(9),
	datac => ALT_INV_hour(6),
	datad => ALT_INV_hour(8),
	dataf => ALT_INV_hour(7),
	combout => \hour~30_combout\);

-- Location: LABCELL_X24_Y28_N6
\hour~31\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~31_combout\ = ( !hour(5) & ( (!hour(10) & (!hour(11) & (\hour~29_combout\ & \hour~30_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(10),
	datab => ALT_INV_hour(11),
	datac => \ALT_INV_hour~29_combout\,
	datad => \ALT_INV_hour~30_combout\,
	dataf => ALT_INV_hour(5),
	combout => \hour~31_combout\);

-- Location: LABCELL_X24_Y29_N18
\hour~28\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~28_combout\ = ( !hour(14) & ( (!hour(15) & (!hour(12) & !hour(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(15),
	datab => ALT_INV_hour(12),
	datac => ALT_INV_hour(13),
	dataf => ALT_INV_hour(14),
	combout => \hour~28_combout\);

-- Location: MLABCELL_X29_Y29_N20
\hour~27\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~27_combout\ = ( !hour(20) & ( !hour(22) & ( (!hour(21) & (!hour(19) & !hour(18))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(21),
	datac => ALT_INV_hour(19),
	datad => ALT_INV_hour(18),
	datae => ALT_INV_hour(20),
	dataf => ALT_INV_hour(22),
	combout => \hour~27_combout\);

-- Location: LABCELL_X24_Y28_N2
\hour~32\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~32_combout\ = ( \hour~27_combout\ & ( !hour(16) & ( (!hour(17) & (!hour(23) & (\hour~31_combout\ & \hour~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(17),
	datab => ALT_INV_hour(23),
	datac => \ALT_INV_hour~31_combout\,
	datad => \ALT_INV_hour~28_combout\,
	datae => \ALT_INV_hour~27_combout\,
	dataf => ALT_INV_hour(16),
	combout => \hour~32_combout\);

-- Location: LABCELL_X24_Y28_N38
\hour~33\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~33_combout\ = ( \hour~26_combout\ & ( \hour~32_combout\ & ( (!hour(29) & (!hour(30) & !hour(31))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(29),
	datac => ALT_INV_hour(30),
	datad => ALT_INV_hour(31),
	datae => \ALT_INV_hour~26_combout\,
	dataf => \ALT_INV_hour~32_combout\,
	combout => \hour~33_combout\);

-- Location: LABCELL_X22_Y28_N30
\hour~38\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~38_combout\ = ( hour(3) & ( \Equal0~14DUPLICATE_combout\ & ( (\Add1~13_sumout\ & !\hour~33_combout\) ) ) ) # ( !hour(3) & ( \Equal0~14DUPLICATE_combout\ & ( (\Add1~13_sumout\ & !\hour~33_combout\) ) ) ) # ( hour(3) & ( !\Equal0~14DUPLICATE_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~13_sumout\,
	datad => \ALT_INV_hour~33_combout\,
	datae => ALT_INV_hour(3),
	dataf => \ALT_INV_Equal0~14DUPLICATE_combout\,
	combout => \hour~38_combout\);

-- Location: FF_X22_Y28_N31
\hour[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hour~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(3));

-- Location: LABCELL_X24_Y28_N30
\Equal3~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = ( hour(2) & ( \Equal0~14_combout\ & ( (\Add1~9_sumout\ & (\Add1~13_sumout\ & !\hour~33_combout\)) ) ) ) # ( !hour(2) & ( \Equal0~14_combout\ & ( (\Add1~9_sumout\ & (\Add1~13_sumout\ & !\hour~33_combout\)) ) ) ) # ( hour(2) & ( 
-- !\Equal0~14_combout\ & ( hour(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(3),
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Add1~13_sumout\,
	datad => \ALT_INV_hour~33_combout\,
	datae => ALT_INV_hour(2),
	dataf => \ALT_INV_Equal0~14_combout\,
	combout => \Equal3~7_combout\);

-- Location: MLABCELL_X26_Y28_N24
\hour~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \hour~0DUPLICATE_combout\ = ( \Equal0~6_combout\ & ( \Equal0~2_combout\ & ( \Add1~5_sumout\ ) ) ) # ( !\Equal0~6_combout\ & ( \Equal0~2_combout\ & ( hour(1) ) ) ) # ( \Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( hour(1) ) ) ) # ( !\Equal0~6_combout\ & ( 
-- !\Equal0~2_combout\ & ( hour(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(1),
	datad => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \hour~0DUPLICATE_combout\);

-- Location: LABCELL_X24_Y28_N8
\always0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = ( \Equal0~14DUPLICATE_combout\ & ( \Add1~13_sumout\ & ( \hour~33_combout\ ) ) ) # ( !\Equal0~14DUPLICATE_combout\ & ( \Add1~13_sumout\ & ( (!hour(3) & !hour(4)) ) ) ) # ( \Equal0~14DUPLICATE_combout\ & ( !\Add1~13_sumout\ & ( 
-- (!\Add1~17_sumout\) # (\hour~33_combout\) ) ) ) # ( !\Equal0~14DUPLICATE_combout\ & ( !\Add1~13_sumout\ & ( (!hour(3) & !hour(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000111111110000111110001000100010000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(3),
	datab => ALT_INV_hour(4),
	datac => \ALT_INV_hour~33_combout\,
	datad => \ALT_INV_Add1~17_sumout\,
	datae => \ALT_INV_Equal0~14DUPLICATE_combout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \always0~0_combout\);

-- Location: LABCELL_X24_Y29_N32
\Equal3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ( !\hour~18_combout\ & ( !\hour~17_combout\ & ( (!\hour~14_combout\ & (!\hour~19_combout\ & (!\hour~16_combout\ & !\hour~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hour~14_combout\,
	datab => \ALT_INV_hour~19_combout\,
	datac => \ALT_INV_hour~16_combout\,
	datad => \ALT_INV_hour~15_combout\,
	datae => \ALT_INV_hour~18_combout\,
	dataf => \ALT_INV_hour~17_combout\,
	combout => \Equal3~2_combout\);

-- Location: LABCELL_X24_Y28_N34
\Equal3~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = ( !\Add1~21_sumout\ & ( \Equal0~14_combout\ & ( (!\Add1~17_sumout\) # (\hour~33_combout\) ) ) ) # ( \Add1~21_sumout\ & ( !\Equal0~14_combout\ & ( (!hour(4) & !hour(5)) ) ) ) # ( !\Add1~21_sumout\ & ( !\Equal0~14_combout\ & ( (!hour(4) 
-- & !hour(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100011110000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(4),
	datab => ALT_INV_hour(5),
	datac => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_hour~33_combout\,
	datae => \ALT_INV_Add1~21_sumout\,
	dataf => \ALT_INV_Equal0~14_combout\,
	combout => \Equal3~5_combout\);

-- Location: MLABCELL_X26_Y29_N24
\Equal3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( !\hour~8_combout\ & ( !\hour~11_combout\ & ( (!\hour~13_combout\ & (!\hour~12_combout\ & (!\hour~10_combout\ & !\hour~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hour~13_combout\,
	datab => \ALT_INV_hour~12_combout\,
	datac => \ALT_INV_hour~10_combout\,
	datad => \ALT_INV_hour~9_combout\,
	datae => \ALT_INV_hour~8_combout\,
	dataf => \ALT_INV_hour~11_combout\,
	combout => \Equal3~1_combout\);

-- Location: LABCELL_X24_Y29_N10
\Equal3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = ( \Add1~29_sumout\ & ( \Equal0~6DUPLICATE_combout\ & ( (!hour(6) & (!hour(7) & !\Equal0~2_combout\)) ) ) ) # ( !\Add1~29_sumout\ & ( \Equal0~6DUPLICATE_combout\ & ( (!\Equal0~2_combout\ & (!hour(6) & (!hour(7)))) # (\Equal0~2_combout\ 
-- & (((!\Add1~25_sumout\)))) ) ) ) # ( \Add1~29_sumout\ & ( !\Equal0~6DUPLICATE_combout\ & ( (!hour(6) & !hour(7)) ) ) ) # ( !\Add1~29_sumout\ & ( !\Equal0~6DUPLICATE_combout\ & ( (!hour(6) & !hour(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000111100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(6),
	datab => ALT_INV_hour(7),
	datac => \ALT_INV_Add1~25_sumout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Add1~29_sumout\,
	dataf => \ALT_INV_Equal0~6DUPLICATE_combout\,
	combout => \Equal3~4_combout\);

-- Location: MLABCELL_X26_Y29_N0
\Equal3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = ( !\hour~25_combout\ & ( !\hour~21_combout\ & ( (!\hour~23_combout\ & (!\hour~24_combout\ & (!\hour~20_combout\ & !\hour~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hour~23_combout\,
	datab => \ALT_INV_hour~24_combout\,
	datac => \ALT_INV_hour~20_combout\,
	datad => \ALT_INV_hour~22_combout\,
	datae => \ALT_INV_hour~25_combout\,
	dataf => \ALT_INV_hour~21_combout\,
	combout => \Equal3~3_combout\);

-- Location: MLABCELL_X26_Y29_N38
\Equal3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !\hour~5_combout\ & ( !\hour~2_combout\ & ( (!\hour~7_combout\ & (!\hour~3_combout\ & (!\hour~4_combout\ & !\hour~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hour~7_combout\,
	datab => \ALT_INV_hour~3_combout\,
	datac => \ALT_INV_hour~4_combout\,
	datad => \ALT_INV_hour~6_combout\,
	datae => \ALT_INV_hour~5_combout\,
	dataf => \ALT_INV_hour~2_combout\,
	combout => \Equal3~0_combout\);

-- Location: MLABCELL_X26_Y29_N28
\Equal3~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = ( \Equal3~3_combout\ & ( \Equal3~0_combout\ & ( (\Equal3~2_combout\ & (\Equal3~5_combout\ & (\Equal3~1_combout\ & \Equal3~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~2_combout\,
	datab => \ALT_INV_Equal3~5_combout\,
	datac => \ALT_INV_Equal3~1_combout\,
	datad => \ALT_INV_Equal3~4_combout\,
	datae => \ALT_INV_Equal3~3_combout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Equal3~6_combout\);

-- Location: LABCELL_X27_Y29_N34
\capacity_free~0\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity_free~0_combout\ = ( \Equal3~6_combout\ & ( (!\Equal3~7_combout\ & (((!\always0~0_combout\)))) # (\Equal3~7_combout\ & (!\hour~0DUPLICATE_combout\ & ((!\always0~0_combout\) # (\hour~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010000100001111101000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~7_combout\,
	datab => \ALT_INV_hour~1_combout\,
	datac => \ALT_INV_hour~0DUPLICATE_combout\,
	datad => \ALT_INV_always0~0_combout\,
	dataf => \ALT_INV_Equal3~6_combout\,
	combout => \capacity_free~0_combout\);

-- Location: FF_X27_Y29_N35
\capacity_free[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity_free~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity_free(2));

-- Location: MLABCELL_X26_Y28_N12
\Equal3~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~12_combout\ = ( \Equal0~6_combout\ & ( \Equal0~2_combout\ & ( (!\Add1~81_sumout\ & !\Add1~77_sumout\) ) ) ) # ( !\Equal0~6_combout\ & ( \Equal0~2_combout\ & ( (!hour(20) & !hour(19)) ) ) ) # ( \Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( 
-- (!hour(20) & !hour(19)) ) ) ) # ( !\Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( (!hour(20) & !hour(19)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(20),
	datab => ALT_INV_hour(19),
	datac => \ALT_INV_Add1~81_sumout\,
	datad => \ALT_INV_Add1~77_sumout\,
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal3~12_combout\);

-- Location: MLABCELL_X26_Y28_N10
\Equal3~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~13_combout\ = ( \Equal0~6_combout\ & ( \Equal0~2_combout\ & ( (!\Add1~73_sumout\ & !\Add1~69_sumout\) ) ) ) # ( !\Equal0~6_combout\ & ( \Equal0~2_combout\ & ( (!hour(17) & !hour(18)) ) ) ) # ( \Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( 
-- (!hour(17) & !hour(18)) ) ) ) # ( !\Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( (!hour(17) & !hour(18)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(17),
	datab => ALT_INV_hour(18),
	datac => \ALT_INV_Add1~73_sumout\,
	datad => \ALT_INV_Add1~69_sumout\,
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal3~13_combout\);

-- Location: MLABCELL_X26_Y28_N2
\Equal3~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~11_combout\ = ( \Equal0~6_combout\ & ( \Equal0~2_combout\ & ( (!\Add1~61_sumout\ & !\Add1~65_sumout\) ) ) ) # ( !\Equal0~6_combout\ & ( \Equal0~2_combout\ & ( (!hour(15) & !hour(16)) ) ) ) # ( \Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( 
-- (!hour(15) & !hour(16)) ) ) ) # ( !\Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( (!hour(15) & !hour(16)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(15),
	datab => ALT_INV_hour(16),
	datac => \ALT_INV_Add1~61_sumout\,
	datad => \ALT_INV_Add1~65_sumout\,
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal3~11_combout\);

-- Location: MLABCELL_X26_Y28_N38
\Equal3~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = ( \Equal0~6_combout\ & ( \Equal0~2_combout\ & ( (!\Add1~93_sumout\ & !\Add1~85_sumout\) ) ) ) # ( !\Equal0~6_combout\ & ( \Equal0~2_combout\ & ( (!hour(21) & !hour(23)) ) ) ) # ( \Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( 
-- (!hour(21) & !hour(23)) ) ) ) # ( !\Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( (!hour(21) & !hour(23)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(21),
	datab => ALT_INV_hour(23),
	datac => \ALT_INV_Add1~93_sumout\,
	datad => \ALT_INV_Add1~85_sumout\,
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal3~8_combout\);

-- Location: MLABCELL_X26_Y28_N34
\Equal3~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = ( \Equal0~6_combout\ & ( \Equal0~2_combout\ & ( (!\Add1~105_sumout\ & !\Add1~109_sumout\) ) ) ) # ( !\Equal0~6_combout\ & ( \Equal0~2_combout\ & ( (!hour(27) & !hour(26)) ) ) ) # ( \Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( 
-- (!hour(27) & !hour(26)) ) ) ) # ( !\Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( (!hour(27) & !hour(26)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(27),
	datab => ALT_INV_hour(26),
	datac => \ALT_INV_Add1~105_sumout\,
	datad => \ALT_INV_Add1~109_sumout\,
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal3~9_combout\);

-- Location: MLABCELL_X26_Y28_N28
\Equal3~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~10_combout\ = ( \Equal0~6_combout\ & ( \Equal0~2_combout\ & ( (!\Add1~101_sumout\ & !\Add1~97_sumout\) ) ) ) # ( !\Equal0~6_combout\ & ( \Equal0~2_combout\ & ( (!hour(24) & !hour(25)) ) ) ) # ( \Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( 
-- (!hour(24) & !hour(25)) ) ) ) # ( !\Equal0~6_combout\ & ( !\Equal0~2_combout\ & ( (!hour(24) & !hour(25)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(24),
	datab => ALT_INV_hour(25),
	datac => \ALT_INV_Add1~101_sumout\,
	datad => \ALT_INV_Add1~97_sumout\,
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal3~10_combout\);

-- Location: MLABCELL_X26_Y28_N22
\Equal3~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~14_combout\ = ( \Equal3~9_combout\ & ( \Equal3~10_combout\ & ( (\Equal3~12_combout\ & (\Equal3~13_combout\ & (\Equal3~11_combout\ & \Equal3~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~12_combout\,
	datab => \ALT_INV_Equal3~13_combout\,
	datac => \ALT_INV_Equal3~11_combout\,
	datad => \ALT_INV_Equal3~8_combout\,
	datae => \ALT_INV_Equal3~9_combout\,
	dataf => \ALT_INV_Equal3~10_combout\,
	combout => \Equal3~14_combout\);

-- Location: LABCELL_X24_Y29_N36
\Equal3~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~16_combout\ = ( \Equal0~2_combout\ & ( \Equal0~6DUPLICATE_combout\ & ( (!\Add1~45_sumout\ & !\Add1~89_sumout\) ) ) ) # ( !\Equal0~2_combout\ & ( \Equal0~6DUPLICATE_combout\ & ( (!hour(11) & !hour(22)) ) ) ) # ( \Equal0~2_combout\ & ( 
-- !\Equal0~6DUPLICATE_combout\ & ( (!hour(11) & !hour(22)) ) ) ) # ( !\Equal0~2_combout\ & ( !\Equal0~6DUPLICATE_combout\ & ( (!hour(11) & !hour(22)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~45_sumout\,
	datab => ALT_INV_hour(11),
	datac => ALT_INV_hour(22),
	datad => \ALT_INV_Add1~89_sumout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~6DUPLICATE_combout\,
	combout => \Equal3~16_combout\);

-- Location: MLABCELL_X29_Y29_N4
\Equal3~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~17_combout\ = ( \Add1~125_sumout\ & ( \Equal0~6DUPLICATE_combout\ & ( (!hour(30) & (!hour(31) & !\Equal0~2_combout\)) ) ) ) # ( !\Add1~125_sumout\ & ( \Equal0~6DUPLICATE_combout\ & ( (!\Equal0~2_combout\ & (!hour(30) & (!hour(31)))) # 
-- (\Equal0~2_combout\ & (((!\Add1~121_sumout\)))) ) ) ) # ( \Add1~125_sumout\ & ( !\Equal0~6DUPLICATE_combout\ & ( (!hour(30) & !hour(31)) ) ) ) # ( !\Add1~125_sumout\ & ( !\Equal0~6DUPLICATE_combout\ & ( (!hour(30) & !hour(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000111100001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(30),
	datab => ALT_INV_hour(31),
	datac => \ALT_INV_Add1~121_sumout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Add1~125_sumout\,
	dataf => \ALT_INV_Equal0~6DUPLICATE_combout\,
	combout => \Equal3~17_combout\);

-- Location: MLABCELL_X29_Y29_N18
\Equal3~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~15_combout\ = ( \Add1~113_sumout\ & ( \Equal0~6DUPLICATE_combout\ & ( (!hour(28) & (!hour(29) & !\Equal0~2_combout\)) ) ) ) # ( !\Add1~113_sumout\ & ( \Equal0~6DUPLICATE_combout\ & ( (!\Equal0~2_combout\ & (!hour(28) & (!hour(29)))) # 
-- (\Equal0~2_combout\ & (((!\Add1~117_sumout\)))) ) ) ) # ( \Add1~113_sumout\ & ( !\Equal0~6DUPLICATE_combout\ & ( (!hour(28) & !hour(29)) ) ) ) # ( !\Add1~113_sumout\ & ( !\Equal0~6DUPLICATE_combout\ & ( (!hour(28) & !hour(29)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001111100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(28),
	datab => ALT_INV_hour(29),
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Add1~117_sumout\,
	datae => \ALT_INV_Add1~113_sumout\,
	dataf => \ALT_INV_Equal0~6DUPLICATE_combout\,
	combout => \Equal3~15_combout\);

-- Location: LABCELL_X27_Y29_N38
\Equal3~18DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~18DUPLICATE_combout\ = ( \Equal3~17_combout\ & ( \Equal3~15_combout\ & ( (!\hour~35_combout\ & (\Equal3~4_combout\ & (\Equal3~16_combout\ & !\hour~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hour~35_combout\,
	datab => \ALT_INV_Equal3~4_combout\,
	datac => \ALT_INV_Equal3~16_combout\,
	datad => \ALT_INV_hour~34_combout\,
	datae => \ALT_INV_Equal3~17_combout\,
	dataf => \ALT_INV_Equal3~15_combout\,
	combout => \Equal3~18DUPLICATE_combout\);

-- Location: LABCELL_X27_Y29_N28
\capacity_free~1\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity_free~1_combout\ = ( \Equal3~18DUPLICATE_combout\ & ( (\hour~0_combout\ & (\Equal3~2_combout\ & (\Equal3~14_combout\ & \Equal3~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hour~0_combout\,
	datab => \ALT_INV_Equal3~2_combout\,
	datac => \ALT_INV_Equal3~14_combout\,
	datad => \ALT_INV_Equal3~7_combout\,
	dataf => \ALT_INV_Equal3~18DUPLICATE_combout\,
	combout => \capacity_free~1_combout\);

-- Location: FF_X27_Y29_N29
\capacity_free[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity_free~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity_free(7));

-- Location: LABCELL_X27_Y29_N36
\Equal3~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~18_combout\ = ( \Equal3~17_combout\ & ( \Equal3~15_combout\ & ( (!\hour~35_combout\ & (\Equal3~4_combout\ & (!\hour~34_combout\ & \Equal3~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hour~35_combout\,
	datab => \ALT_INV_Equal3~4_combout\,
	datac => \ALT_INV_hour~34_combout\,
	datad => \ALT_INV_Equal3~16_combout\,
	datae => \ALT_INV_Equal3~17_combout\,
	dataf => \ALT_INV_Equal3~15_combout\,
	combout => \Equal3~18_combout\);

-- Location: LABCELL_X27_Y29_N26
\Equal3~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~19_combout\ = ( \Equal3~18_combout\ & ( \Equal3~14_combout\ & ( (\hour~0_combout\ & (\Equal3~2_combout\ & (!\hour~1_combout\ & \Equal3~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hour~0_combout\,
	datab => \ALT_INV_Equal3~2_combout\,
	datac => \ALT_INV_hour~1_combout\,
	datad => \ALT_INV_Equal3~7_combout\,
	datae => \ALT_INV_Equal3~18_combout\,
	dataf => \ALT_INV_Equal3~14_combout\,
	combout => \Equal3~19_combout\);

-- Location: FF_X27_Y29_N27
\capacity_free[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity_free(6));

-- Location: LABCELL_X27_Y29_N22
\capacity_free~5\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity_free~5_combout\ = ( \Equal3~6_combout\ & ( (!\Equal3~7_combout\ & (((!\always0~0_combout\)))) # (\Equal3~7_combout\ & ((!\hour~0_combout\ & (!\hour~1_combout\ & !\always0~0_combout\)) # (\hour~0_combout\ & (\hour~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101101000000011110110100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hour~0_combout\,
	datab => \ALT_INV_Equal3~7_combout\,
	datac => \ALT_INV_hour~1_combout\,
	datad => \ALT_INV_always0~0_combout\,
	dataf => \ALT_INV_Equal3~6_combout\,
	combout => \capacity_free~5_combout\);

-- Location: FF_X27_Y29_N23
\capacity_free[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity_free~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity_free(5));

-- Location: MLABCELL_X26_Y29_N16
\capacity_free~3\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity_free~3_combout\ = ( \Equal3~6_combout\ & ( (!\Equal3~7_combout\ & (!\always0~0_combout\)) # (\Equal3~7_combout\ & (!\hour~1_combout\ & ((!\always0~0_combout\) # (\hour~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101000101110001010100010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_always0~0_combout\,
	datab => \ALT_INV_Equal3~7_combout\,
	datac => \ALT_INV_hour~1_combout\,
	datad => \ALT_INV_hour~0_combout\,
	dataf => \ALT_INV_Equal3~6_combout\,
	combout => \capacity_free~3_combout\);

-- Location: FF_X26_Y29_N17
\capacity_free[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity_free~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity_free(4));

-- Location: MLABCELL_X26_Y29_N18
\capacity_free~4\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity_free~4_combout\ = ( \Equal3~6_combout\ & ( (!\always0~0_combout\) # ((\Equal3~7_combout\ & ((\hour~1_combout\) # (\hour~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101011101110111010101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_always0~0_combout\,
	datab => \ALT_INV_Equal3~7_combout\,
	datac => \ALT_INV_hour~0_combout\,
	datad => \ALT_INV_hour~1_combout\,
	dataf => \ALT_INV_Equal3~6_combout\,
	combout => \capacity_free~4_combout\);

-- Location: FF_X26_Y29_N19
\capacity_free[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity_free~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity_free(3));

-- Location: LABCELL_X27_Y29_N32
\capacity_free~2\ : arriaii_lcell_comb
-- Equation(s):
-- \capacity_free~2_combout\ = ( \Equal3~18DUPLICATE_combout\ & ( (\Equal3~7_combout\ & (\hour~1_combout\ & (\Equal3~14_combout\ & \Equal3~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~7_combout\,
	datab => \ALT_INV_hour~1_combout\,
	datac => \ALT_INV_Equal3~14_combout\,
	datad => \ALT_INV_Equal3~2_combout\,
	dataf => \ALT_INV_Equal3~18DUPLICATE_combout\,
	combout => \capacity_free~2_combout\);

-- Location: FF_X27_Y29_N33
\capacity_free[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \capacity_free~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => capacity_free(1));

-- Location: LABCELL_X27_Y29_N0
\Add10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~2_cout\ = CARRY(( VCC ) + ( !capacity_free(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_capacity_free(1),
	cin => GND,
	cout => \Add10~2_cout\);

-- Location: LABCELL_X27_Y29_N2
\Add10~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~5_sumout\ = SUM(( capacity_free(2) ) + ( VCC ) + ( \Add10~2_cout\ ))
-- \Add10~6\ = CARRY(( capacity_free(2) ) + ( VCC ) + ( \Add10~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity_free(2),
	cin => \Add10~2_cout\,
	sumout => \Add10~5_sumout\,
	cout => \Add10~6\);

-- Location: LABCELL_X27_Y29_N4
\Add10~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~9_sumout\ = SUM(( VCC ) + ( !capacity_free(3) ) + ( \Add10~6\ ))
-- \Add10~10\ = CARRY(( VCC ) + ( !capacity_free(3) ) + ( \Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_capacity_free(3),
	cin => \Add10~6\,
	sumout => \Add10~9_sumout\,
	cout => \Add10~10\);

-- Location: LABCELL_X27_Y29_N6
\Add10~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~13_sumout\ = SUM(( VCC ) + ( capacity_free(4) ) + ( \Add10~10\ ))
-- \Add10~14\ = CARRY(( VCC ) + ( capacity_free(4) ) + ( \Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_capacity_free(4),
	cin => \Add10~10\,
	sumout => \Add10~13_sumout\,
	cout => \Add10~14\);

-- Location: LABCELL_X27_Y29_N8
\Add10~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~17_sumout\ = SUM(( capacity_free(5) ) + ( VCC ) + ( \Add10~14\ ))
-- \Add10~18\ = CARRY(( capacity_free(5) ) + ( VCC ) + ( \Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity_free(5),
	cin => \Add10~14\,
	sumout => \Add10~17_sumout\,
	cout => \Add10~18\);

-- Location: LABCELL_X27_Y29_N10
\Add10~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~21_sumout\ = SUM(( capacity_free(6) ) + ( GND ) + ( \Add10~18\ ))
-- \Add10~22\ = CARRY(( capacity_free(6) ) + ( GND ) + ( \Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity_free(6),
	cin => \Add10~18\,
	sumout => \Add10~21_sumout\,
	cout => \Add10~22\);

-- Location: LABCELL_X27_Y29_N12
\Add10~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~25_sumout\ = SUM(( VCC ) + ( capacity_free(7) ) + ( \Add10~22\ ))
-- \Add10~26\ = CARRY(( VCC ) + ( capacity_free(7) ) + ( \Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_capacity_free(7),
	cin => \Add10~22\,
	sumout => \Add10~25_sumout\,
	cout => \Add10~26\);

-- Location: LABCELL_X27_Y29_N14
\Add10~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~29_sumout\ = SUM(( GND ) + ( capacity_free(2) ) + ( \Add10~26\ ))
-- \Add10~30\ = CARRY(( GND ) + ( capacity_free(2) ) + ( \Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_capacity_free(2),
	cin => \Add10~26\,
	sumout => \Add10~29_sumout\,
	cout => \Add10~30\);

-- Location: LABCELL_X27_Y29_N30
\LessThan6~5\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~5_combout\ = ( \Add10~29_sumout\ & ( !\Add7~33_sumout\ ) ) # ( !\Add10~29_sumout\ & ( \Add7~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~33_sumout\,
	dataf => \ALT_INV_Add10~29_sumout\,
	combout => \LessThan6~5_combout\);

-- Location: MLABCELL_X31_Y30_N20
\Add4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( cars_exited_uni(0) ) + ( cars_exited_uni(1) ) + ( !VCC ))
-- \Add4~2\ = CARRY(( cars_exited_uni(0) ) + ( cars_exited_uni(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited_uni(0),
	dataf => ALT_INV_cars_exited_uni(1),
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: FF_X32_Y30_N37
\cars_exited_uni[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add4~1_sumout\,
	sload => VCC,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited_uni(1));

-- Location: LABCELL_X32_Y30_N0
\Add7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( !cars_entered_uni(0) $ (!cars_exited_uni(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add7~2\ = CARRY(( !cars_entered_uni(0) $ (!cars_exited_uni(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add7~3\ = SHARE((!cars_exited_uni(0)) # (cars_entered_uni(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_entered_uni(0),
	datad => ALT_INV_cars_exited_uni(0),
	cin => GND,
	sharein => GND,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\,
	shareout => \Add7~3\);

-- Location: LABCELL_X32_Y30_N2
\Add7~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( !cars_exited_uni(1) $ (cars_entered_uni(1)) ) + ( \Add7~3\ ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( !cars_exited_uni(1) $ (cars_entered_uni(1)) ) + ( \Add7~3\ ) + ( \Add7~2\ ))
-- \Add7~7\ = SHARE((!cars_exited_uni(1) & cars_entered_uni(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited_uni(1),
	datad => ALT_INV_cars_entered_uni(1),
	cin => \Add7~2\,
	sharein => \Add7~3\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\,
	shareout => \Add7~7\);

-- Location: LABCELL_X32_Y30_N4
\Add7~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( !cars_entered_uni(2) $ (cars_exited_uni(2)) ) + ( \Add7~7\ ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( !cars_entered_uni(2) $ (cars_exited_uni(2)) ) + ( \Add7~7\ ) + ( \Add7~6\ ))
-- \Add7~11\ = SHARE((cars_entered_uni(2) & !cars_exited_uni(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_entered_uni(2),
	datad => ALT_INV_cars_exited_uni(2),
	cin => \Add7~6\,
	sharein => \Add7~7\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\,
	shareout => \Add7~11\);

-- Location: LABCELL_X32_Y30_N6
\Add7~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( !cars_exited_uni(3) $ (cars_entered_uni(3)) ) + ( \Add7~11\ ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( !cars_exited_uni(3) $ (cars_entered_uni(3)) ) + ( \Add7~11\ ) + ( \Add7~10\ ))
-- \Add7~15\ = SHARE((!cars_exited_uni(3) & cars_entered_uni(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited_uni(3),
	datad => ALT_INV_cars_entered_uni(3),
	cin => \Add7~10\,
	sharein => \Add7~11\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\,
	shareout => \Add7~15\);

-- Location: LABCELL_X32_Y30_N8
\Add7~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( !cars_exited_uni(4) $ (cars_entered_uni(4)) ) + ( \Add7~15\ ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( !cars_exited_uni(4) $ (cars_entered_uni(4)) ) + ( \Add7~15\ ) + ( \Add7~14\ ))
-- \Add7~19\ = SHARE((!cars_exited_uni(4) & cars_entered_uni(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited_uni(4),
	datad => ALT_INV_cars_entered_uni(4),
	cin => \Add7~14\,
	sharein => \Add7~15\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\,
	shareout => \Add7~19\);

-- Location: LABCELL_X32_Y30_N10
\Add7~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( !cars_exited_uni(5) $ (cars_entered_uni(5)) ) + ( \Add7~19\ ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( !cars_exited_uni(5) $ (cars_entered_uni(5)) ) + ( \Add7~19\ ) + ( \Add7~18\ ))
-- \Add7~23\ = SHARE((!cars_exited_uni(5) & cars_entered_uni(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited_uni(5),
	datad => ALT_INV_cars_entered_uni(5),
	cin => \Add7~18\,
	sharein => \Add7~19\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\,
	shareout => \Add7~23\);

-- Location: LABCELL_X32_Y30_N12
\Add7~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( !cars_entered_uni(6) $ (cars_exited_uni(6)) ) + ( \Add7~23\ ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( !cars_entered_uni(6) $ (cars_exited_uni(6)) ) + ( \Add7~23\ ) + ( \Add7~22\ ))
-- \Add7~27\ = SHARE((cars_entered_uni(6) & !cars_exited_uni(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_entered_uni(6),
	datad => ALT_INV_cars_exited_uni(6),
	cin => \Add7~22\,
	sharein => \Add7~23\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\,
	shareout => \Add7~27\);

-- Location: LABCELL_X32_Y30_N14
\Add7~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( !cars_exited_uni(7) $ (cars_entered_uni(7)) ) + ( \Add7~27\ ) + ( \Add7~26\ ))
-- \Add7~30\ = CARRY(( !cars_exited_uni(7) $ (cars_entered_uni(7)) ) + ( \Add7~27\ ) + ( \Add7~26\ ))
-- \Add7~31\ = SHARE((!cars_exited_uni(7) & cars_entered_uni(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited_uni(7),
	datad => ALT_INV_cars_entered_uni(7),
	cin => \Add7~26\,
	sharein => \Add7~27\,
	sumout => \Add7~29_sumout\,
	cout => \Add7~30\,
	shareout => \Add7~31\);

-- Location: MLABCELL_X29_Y29_N30
\LessThan6~10\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~10_combout\ = ( !\Add10~25_sumout\ & ( \Add7~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~29_sumout\,
	dataf => \ALT_INV_Add10~25_sumout\,
	combout => \LessThan6~10_combout\);

-- Location: MLABCELL_X29_Y29_N38
\LessThan6~7\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~7_combout\ = ( \Add7~33_sumout\ & ( !\Add10~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add7~33_sumout\,
	dataf => \ALT_INV_Add10~29_sumout\,
	combout => \LessThan6~7_combout\);

-- Location: MLABCELL_X29_Y29_N24
\LessThan6~13\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~13_combout\ = ( \Add10~9_sumout\ & ( (\Add7~17_sumout\ & !\Add10~13_sumout\) ) ) # ( !\Add10~9_sumout\ & ( (!\Add7~13_sumout\ & (\Add7~17_sumout\ & !\Add10~13_sumout\)) # (\Add7~13_sumout\ & ((!\Add10~13_sumout\) # (\Add7~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add7~13_sumout\,
	datac => \ALT_INV_Add7~17_sumout\,
	datad => \ALT_INV_Add10~13_sumout\,
	dataf => \ALT_INV_Add10~9_sumout\,
	combout => \LessThan6~13_combout\);

-- Location: MLABCELL_X29_Y29_N10
\LessThan6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( \Add10~5_sumout\ & ( (\Add7~9_sumout\ & ((!capacity_free(1) & ((\Add7~5_sumout\) # (\Add7~1_sumout\))) # (capacity_free(1) & (\Add7~1_sumout\ & \Add7~5_sumout\)))) ) ) # ( !\Add10~5_sumout\ & ( ((!capacity_free(1) & 
-- ((\Add7~5_sumout\) # (\Add7~1_sumout\))) # (capacity_free(1) & (\Add7~1_sumout\ & \Add7~5_sumout\))) # (\Add7~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101110111111001110111011111100000010001000110000001000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity_free(1),
	datab => \ALT_INV_Add7~9_sumout\,
	datac => \ALT_INV_Add7~1_sumout\,
	datad => \ALT_INV_Add7~5_sumout\,
	dataf => \ALT_INV_Add10~5_sumout\,
	combout => \LessThan6~0_combout\);

-- Location: MLABCELL_X29_Y29_N8
\LessThan6~11\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~11_combout\ = ( \Add10~25_sumout\ & ( !\Add7~29_sumout\ ) ) # ( !\Add10~25_sumout\ & ( \Add7~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add7~29_sumout\,
	dataf => \ALT_INV_Add10~25_sumout\,
	combout => \LessThan6~11_combout\);

-- Location: MLABCELL_X29_Y29_N26
\LessThan6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = ( \Add10~21_sumout\ & ( (\Add7~25_sumout\ & (!\Add7~21_sumout\ $ (\Add10~17_sumout\))) ) ) # ( !\Add10~21_sumout\ & ( (!\Add7~25_sumout\ & (!\Add7~21_sumout\ $ (\Add10~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~21_sumout\,
	datac => \ALT_INV_Add7~25_sumout\,
	datad => \ALT_INV_Add10~17_sumout\,
	dataf => \ALT_INV_Add10~21_sumout\,
	combout => \LessThan6~2_combout\);

-- Location: MLABCELL_X29_Y29_N12
\LessThan6~3\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = ( \Add10~21_sumout\ & ( (\Add7~25_sumout\ & (\Add7~21_sumout\ & !\Add10~17_sumout\)) ) ) # ( !\Add10~21_sumout\ & ( ((\Add7~21_sumout\ & !\Add10~17_sumout\)) # (\Add7~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add7~25_sumout\,
	datac => \ALT_INV_Add7~21_sumout\,
	datad => \ALT_INV_Add10~17_sumout\,
	dataf => \ALT_INV_Add10~21_sumout\,
	combout => \LessThan6~3_combout\);

-- Location: MLABCELL_X29_Y29_N14
\LessThan6~12\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~12_combout\ = ( \Add10~9_sumout\ & ( (\Add7~13_sumout\ & (!\Add7~17_sumout\ $ (\Add10~13_sumout\))) ) ) # ( !\Add10~9_sumout\ & ( (!\Add7~13_sumout\ & (!\Add7~17_sumout\ $ (\Add10~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~17_sumout\,
	datac => \ALT_INV_Add7~13_sumout\,
	datad => \ALT_INV_Add10~13_sumout\,
	dataf => \ALT_INV_Add10~9_sumout\,
	combout => \LessThan6~12_combout\);

-- Location: MLABCELL_X29_Y29_N0
\LessThan6~14\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~14_combout\ = ( \LessThan6~3_combout\ & ( \LessThan6~12_combout\ & ( !\LessThan6~11_combout\ ) ) ) # ( !\LessThan6~3_combout\ & ( \LessThan6~12_combout\ & ( (!\LessThan6~11_combout\ & (\LessThan6~2_combout\ & ((\LessThan6~0_combout\) # 
-- (\LessThan6~13_combout\)))) ) ) ) # ( \LessThan6~3_combout\ & ( !\LessThan6~12_combout\ & ( !\LessThan6~11_combout\ ) ) ) # ( !\LessThan6~3_combout\ & ( !\LessThan6~12_combout\ & ( (\LessThan6~13_combout\ & (!\LessThan6~11_combout\ & 
-- \LessThan6~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000111100001111000000000000011100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~13_combout\,
	datab => \ALT_INV_LessThan6~0_combout\,
	datac => \ALT_INV_LessThan6~11_combout\,
	datad => \ALT_INV_LessThan6~2_combout\,
	datae => \ALT_INV_LessThan6~3_combout\,
	dataf => \ALT_INV_LessThan6~12_combout\,
	combout => \LessThan6~14_combout\);

-- Location: LABCELL_X27_Y29_N16
\Add10~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~33_sumout\ = SUM(( VCC ) + ( VCC ) + ( \Add10~30\ ))
-- \Add10~34\ = CARRY(( VCC ) + ( VCC ) + ( \Add10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add10~30\,
	sumout => \Add10~33_sumout\,
	cout => \Add10~34\);

-- Location: LABCELL_X27_Y29_N18
\Add10~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~37_sumout\ = SUM(( VCC ) + ( GND ) + ( \Add10~34\ ))
-- \Add10~38\ = CARRY(( VCC ) + ( GND ) + ( \Add10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add10~34\,
	sumout => \Add10~37_sumout\,
	cout => \Add10~38\);

-- Location: MLABCELL_X31_Y30_N16
\Add2~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( cars_entered_uni(9) ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( cars_entered_uni(9) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered_uni(9),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: MLABCELL_X31_Y30_N18
\Add2~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( cars_entered_uni(10) ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered_uni(10),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\);

-- Location: FF_X31_Y30_N19
\cars_entered_uni[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add2~37_sumout\,
	ena => \always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered_uni(10));

-- Location: MLABCELL_X31_Y30_N34
\Add4~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( cars_exited_uni(8) ) + ( GND ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( cars_exited_uni(8) ) + ( GND ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited_uni(8),
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: MLABCELL_X31_Y30_N36
\Add4~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( cars_exited_uni(9) ) + ( GND ) + ( \Add4~30\ ))
-- \Add4~34\ = CARRY(( cars_exited_uni(9) ) + ( GND ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited_uni(9),
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: FF_X31_Y30_N37
\cars_exited_uni[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add4~33_sumout\,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited_uni(9));

-- Location: MLABCELL_X31_Y30_N38
\Add4~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( cars_exited_uni(10) ) + ( GND ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited_uni(10),
	cin => \Add4~34\,
	sumout => \Add4~37_sumout\);

-- Location: FF_X31_Y30_N39
\cars_exited_uni[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add4~37_sumout\,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited_uni(10));

-- Location: LABCELL_X32_Y30_N16
\Add7~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( !cars_exited_uni(8) $ (cars_entered_uni(8)) ) + ( \Add7~31\ ) + ( \Add7~30\ ))
-- \Add7~34\ = CARRY(( !cars_exited_uni(8) $ (cars_entered_uni(8)) ) + ( \Add7~31\ ) + ( \Add7~30\ ))
-- \Add7~35\ = SHARE((!cars_exited_uni(8) & cars_entered_uni(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited_uni(8),
	datad => ALT_INV_cars_entered_uni(8),
	cin => \Add7~30\,
	sharein => \Add7~31\,
	sumout => \Add7~33_sumout\,
	cout => \Add7~34\,
	shareout => \Add7~35\);

-- Location: LABCELL_X32_Y30_N18
\Add7~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~37_sumout\ = SUM(( !cars_entered_uni(9) $ (cars_exited_uni(9)) ) + ( \Add7~35\ ) + ( \Add7~34\ ))
-- \Add7~38\ = CARRY(( !cars_entered_uni(9) $ (cars_exited_uni(9)) ) + ( \Add7~35\ ) + ( \Add7~34\ ))
-- \Add7~39\ = SHARE((cars_entered_uni(9) & !cars_exited_uni(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_entered_uni(9),
	datad => ALT_INV_cars_exited_uni(9),
	cin => \Add7~34\,
	sharein => \Add7~35\,
	sumout => \Add7~37_sumout\,
	cout => \Add7~38\,
	shareout => \Add7~39\);

-- Location: LABCELL_X32_Y30_N20
\Add7~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add7~41_sumout\ = SUM(( !cars_entered_uni(10) $ (cars_exited_uni(10)) ) + ( \Add7~39\ ) + ( \Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_entered_uni(10),
	datad => ALT_INV_cars_exited_uni(10),
	cin => \Add7~38\,
	sharein => \Add7~39\,
	sumout => \Add7~41_sumout\);

-- Location: LABCELL_X27_Y29_N20
\Add10~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add10~41_sumout\ = SUM(( VCC ) + ( GND ) + ( \Add10~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add10~38\,
	sumout => \Add10~41_sumout\);

-- Location: LABCELL_X32_Y30_N32
\LessThan6~15\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~15_combout\ = ( \Add10~33_sumout\ & ( (\Add10~41_sumout\ & ((!\Add10~37_sumout\) # (!\Add7~41_sumout\))) ) ) # ( !\Add10~33_sumout\ & ( (!\Add7~37_sumout\ & (\Add10~41_sumout\ & ((!\Add10~37_sumout\) # (!\Add7~41_sumout\)))) # (\Add7~37_sumout\ 
-- & (((!\Add10~37_sumout\ & !\Add7~41_sumout\)) # (\Add10~41_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011111101010000001111110100000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~37_sumout\,
	datab => \ALT_INV_Add10~37_sumout\,
	datac => \ALT_INV_Add7~41_sumout\,
	datad => \ALT_INV_Add10~41_sumout\,
	dataf => \ALT_INV_Add10~33_sumout\,
	combout => \LessThan6~15_combout\);

-- Location: LABCELL_X32_Y30_N22
\LessThan6~9\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~9_combout\ = ( \Add10~33_sumout\ & ( (\Add7~37_sumout\ & ((!\Add7~41_sumout\ & (!\Add10~41_sumout\ & !\Add10~37_sumout\)) # (\Add7~41_sumout\ & (\Add10~41_sumout\ & \Add10~37_sumout\)))) ) ) # ( !\Add10~33_sumout\ & ( (!\Add7~37_sumout\ & 
-- ((!\Add7~41_sumout\ & (!\Add10~41_sumout\ & !\Add10~37_sumout\)) # (\Add7~41_sumout\ & (\Add10~41_sumout\ & \Add10~37_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100000000100000010000000000000000100000010000000010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~41_sumout\,
	datab => \ALT_INV_Add10~41_sumout\,
	datac => \ALT_INV_Add10~37_sumout\,
	datad => \ALT_INV_Add7~37_sumout\,
	dataf => \ALT_INV_Add10~33_sumout\,
	combout => \LessThan6~9_combout\);

-- Location: MLABCELL_X31_Y29_N38
\LessThan6~16DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~16DUPLICATE_combout\ = ( !\LessThan6~15_combout\ & ( \LessThan6~9_combout\ & ( (!\LessThan6~7_combout\ & (((!\LessThan6~10_combout\ & !\LessThan6~14_combout\)) # (\LessThan6~5_combout\))) ) ) ) # ( !\LessThan6~15_combout\ & ( 
-- !\LessThan6~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~5_combout\,
	datab => \ALT_INV_LessThan6~10_combout\,
	datac => \ALT_INV_LessThan6~7_combout\,
	datad => \ALT_INV_LessThan6~14_combout\,
	datae => \ALT_INV_LessThan6~15_combout\,
	dataf => \ALT_INV_LessThan6~9_combout\,
	combout => \LessThan6~16DUPLICATE_combout\);

-- Location: MLABCELL_X34_Y29_N18
\cars_exited[0]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \cars_exited[0]~3_combout\ = ( !cars_exited(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_cars_exited(0),
	combout => \cars_exited[0]~3_combout\);

-- Location: MLABCELL_X34_Y29_N30
\Add5~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( cars_exited(6) ) + ( GND ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( cars_exited(6) ) + ( GND ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited(6),
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: MLABCELL_X34_Y29_N32
\Add5~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( cars_exited(7) ) + ( GND ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( cars_exited(7) ) + ( GND ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited(7),
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X34_Y29_N33
\cars_exited[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add5~25_sumout\,
	ena => \cars_exited[0]~2DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited(7));

-- Location: MLABCELL_X34_Y29_N34
\Add5~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( cars_exited(8) ) + ( GND ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( cars_exited(8) ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited(8),
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X34_Y29_N35
\cars_exited[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add5~29_sumout\,
	ena => \cars_exited[0]~2DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited(8));

-- Location: MLABCELL_X34_Y29_N20
\Add5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( cars_exited(1) ) + ( cars_exited(0) ) + ( !VCC ))
-- \Add5~2\ = CARRY(( cars_exited(1) ) + ( cars_exited(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited(0),
	datad => ALT_INV_cars_exited(1),
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: FF_X34_Y29_N21
\cars_exited[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add5~1_sumout\,
	ena => \cars_exited[0]~2DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited(1));

-- Location: LABCELL_X32_Y29_N0
\Add6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( !cars_entered(0) $ (!cars_exited(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add6~2\ = CARRY(( !cars_entered(0) $ (!cars_exited(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add6~3\ = SHARE((!cars_exited(0)) # (cars_entered(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_entered(0),
	datad => ALT_INV_cars_exited(0),
	cin => GND,
	sharein => GND,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\,
	shareout => \Add6~3\);

-- Location: LABCELL_X32_Y29_N2
\Add6~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( !cars_exited(1) $ (cars_entered(1)) ) + ( \Add6~3\ ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( !cars_exited(1) $ (cars_entered(1)) ) + ( \Add6~3\ ) + ( \Add6~2\ ))
-- \Add6~7\ = SHARE((!cars_exited(1) & cars_entered(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited(1),
	datad => ALT_INV_cars_entered(1),
	cin => \Add6~2\,
	sharein => \Add6~3\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\,
	shareout => \Add6~7\);

-- Location: LABCELL_X32_Y29_N4
\Add6~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( !cars_entered(2) $ (cars_exited(2)) ) + ( \Add6~7\ ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( !cars_entered(2) $ (cars_exited(2)) ) + ( \Add6~7\ ) + ( \Add6~6\ ))
-- \Add6~11\ = SHARE((cars_entered(2) & !cars_exited(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_entered(2),
	datad => ALT_INV_cars_exited(2),
	cin => \Add6~6\,
	sharein => \Add6~7\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\,
	shareout => \Add6~11\);

-- Location: LABCELL_X32_Y29_N6
\Add6~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( !cars_exited(3) $ (cars_entered(3)) ) + ( \Add6~11\ ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( !cars_exited(3) $ (cars_entered(3)) ) + ( \Add6~11\ ) + ( \Add6~10\ ))
-- \Add6~15\ = SHARE((!cars_exited(3) & cars_entered(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited(3),
	datad => ALT_INV_cars_entered(3),
	cin => \Add6~10\,
	sharein => \Add6~11\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\,
	shareout => \Add6~15\);

-- Location: LABCELL_X32_Y29_N8
\Add6~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( !cars_entered(4) $ (cars_exited(4)) ) + ( \Add6~15\ ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( !cars_entered(4) $ (cars_exited(4)) ) + ( \Add6~15\ ) + ( \Add6~14\ ))
-- \Add6~19\ = SHARE((cars_entered(4) & !cars_exited(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_entered(4),
	datad => ALT_INV_cars_exited(4),
	cin => \Add6~14\,
	sharein => \Add6~15\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\,
	shareout => \Add6~19\);

-- Location: LABCELL_X32_Y29_N10
\Add6~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( !cars_exited(5) $ (cars_entered(5)) ) + ( \Add6~19\ ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( !cars_exited(5) $ (cars_entered(5)) ) + ( \Add6~19\ ) + ( \Add6~18\ ))
-- \Add6~23\ = SHARE((!cars_exited(5) & cars_entered(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited(5),
	datad => ALT_INV_cars_entered(5),
	cin => \Add6~18\,
	sharein => \Add6~19\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\,
	shareout => \Add6~23\);

-- Location: LABCELL_X32_Y29_N12
\Add6~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( !cars_entered(6) $ (cars_exited(6)) ) + ( \Add6~23\ ) + ( \Add6~22\ ))
-- \Add6~26\ = CARRY(( !cars_entered(6) $ (cars_exited(6)) ) + ( \Add6~23\ ) + ( \Add6~22\ ))
-- \Add6~27\ = SHARE((cars_entered(6) & !cars_exited(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_entered(6),
	datad => ALT_INV_cars_exited(6),
	cin => \Add6~22\,
	sharein => \Add6~23\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\,
	shareout => \Add6~27\);

-- Location: LABCELL_X32_Y29_N14
\Add6~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( !cars_exited(7) $ (cars_entered(7)) ) + ( \Add6~27\ ) + ( \Add6~26\ ))
-- \Add6~30\ = CARRY(( !cars_exited(7) $ (cars_entered(7)) ) + ( \Add6~27\ ) + ( \Add6~26\ ))
-- \Add6~31\ = SHARE((!cars_exited(7) & cars_entered(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited(7),
	datad => ALT_INV_cars_entered(7),
	cin => \Add6~26\,
	sharein => \Add6~27\,
	sumout => \Add6~29_sumout\,
	cout => \Add6~30\,
	shareout => \Add6~31\);

-- Location: LABCELL_X32_Y29_N16
\Add6~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~33_sumout\ = SUM(( !cars_exited(8) $ (cars_entered(8)) ) + ( \Add6~31\ ) + ( \Add6~30\ ))
-- \Add6~34\ = CARRY(( !cars_exited(8) $ (cars_entered(8)) ) + ( \Add6~31\ ) + ( \Add6~30\ ))
-- \Add6~35\ = SHARE((!cars_exited(8) & cars_entered(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_exited(8),
	datad => ALT_INV_cars_entered(8),
	cin => \Add6~30\,
	sharein => \Add6~31\,
	sumout => \Add6~33_sumout\,
	cout => \Add6~34\,
	shareout => \Add6~35\);

-- Location: MLABCELL_X34_Y29_N36
\Add5~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( cars_exited(9) ) + ( GND ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( cars_exited(9) ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited(9),
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: MLABCELL_X34_Y29_N4
\cars_exited[0]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \cars_exited[0]~1_combout\ = ( !\Add6~25_sumout\ & ( !\Add6~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add6~25_sumout\,
	dataf => \ALT_INV_Add6~29_sumout\,
	combout => \cars_exited[0]~1_combout\);

-- Location: LABCELL_X32_Y29_N38
\cars_exited[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \cars_exited[0]~0_combout\ = ( !\Add6~17_sumout\ & ( !\Add6~21_sumout\ & ( (!\Add6~1_sumout\ & (!\Add6~5_sumout\ & (!\Add6~13_sumout\ & !\Add6~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~1_sumout\,
	datab => \ALT_INV_Add6~5_sumout\,
	datac => \ALT_INV_Add6~13_sumout\,
	datad => \ALT_INV_Add6~9_sumout\,
	datae => \ALT_INV_Add6~17_sumout\,
	dataf => \ALT_INV_Add6~21_sumout\,
	combout => \cars_exited[0]~0_combout\);

-- Location: MLABCELL_X34_Y29_N8
\cars_exited[0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \cars_exited[0]~2_combout\ = ( \cars_exited[0]~1_combout\ & ( \cars_exited[0]~0_combout\ & ( (!\is_uni_car_exited~input_o\ & (!\Add6~41_sumout\ & ((\Add6~37_sumout\) # (\Add6~33_sumout\)))) ) ) ) # ( !\cars_exited[0]~1_combout\ & ( 
-- \cars_exited[0]~0_combout\ & ( (!\is_uni_car_exited~input_o\ & !\Add6~41_sumout\) ) ) ) # ( \cars_exited[0]~1_combout\ & ( !\cars_exited[0]~0_combout\ & ( (!\is_uni_car_exited~input_o\ & !\Add6~41_sumout\) ) ) ) # ( !\cars_exited[0]~1_combout\ & ( 
-- !\cars_exited[0]~0_combout\ & ( (!\is_uni_car_exited~input_o\ & !\Add6~41_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000000010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_uni_car_exited~input_o\,
	datab => \ALT_INV_Add6~33_sumout\,
	datac => \ALT_INV_Add6~41_sumout\,
	datad => \ALT_INV_Add6~37_sumout\,
	datae => \ALT_INV_cars_exited[0]~1_combout\,
	dataf => \ALT_INV_cars_exited[0]~0_combout\,
	combout => \cars_exited[0]~2_combout\);

-- Location: FF_X34_Y29_N37
\cars_exited[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add5~33_sumout\,
	ena => \cars_exited[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited(9));

-- Location: LABCELL_X32_Y29_N18
\Add6~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~37_sumout\ = SUM(( !cars_entered(9) $ (cars_exited(9)) ) + ( \Add6~35\ ) + ( \Add6~34\ ))
-- \Add6~38\ = CARRY(( !cars_entered(9) $ (cars_exited(9)) ) + ( \Add6~35\ ) + ( \Add6~34\ ))
-- \Add6~39\ = SHARE((cars_entered(9) & !cars_exited(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_entered(9),
	datad => ALT_INV_cars_exited(9),
	cin => \Add6~34\,
	sharein => \Add6~35\,
	sumout => \Add6~37_sumout\,
	cout => \Add6~38\,
	shareout => \Add6~39\);

-- Location: MLABCELL_X34_Y29_N10
\cars_exited[0]~2DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \cars_exited[0]~2DUPLICATE_combout\ = ( \cars_exited[0]~1_combout\ & ( \cars_exited[0]~0_combout\ & ( (!\is_uni_car_exited~input_o\ & (!\Add6~41_sumout\ & ((\Add6~37_sumout\) # (\Add6~33_sumout\)))) ) ) ) # ( !\cars_exited[0]~1_combout\ & ( 
-- \cars_exited[0]~0_combout\ & ( (!\is_uni_car_exited~input_o\ & !\Add6~41_sumout\) ) ) ) # ( \cars_exited[0]~1_combout\ & ( !\cars_exited[0]~0_combout\ & ( (!\is_uni_car_exited~input_o\ & !\Add6~41_sumout\) ) ) ) # ( !\cars_exited[0]~1_combout\ & ( 
-- !\cars_exited[0]~0_combout\ & ( (!\is_uni_car_exited~input_o\ & !\Add6~41_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_uni_car_exited~input_o\,
	datab => \ALT_INV_Add6~33_sumout\,
	datac => \ALT_INV_Add6~37_sumout\,
	datad => \ALT_INV_Add6~41_sumout\,
	datae => \ALT_INV_cars_exited[0]~1_combout\,
	dataf => \ALT_INV_cars_exited[0]~0_combout\,
	combout => \cars_exited[0]~2DUPLICATE_combout\);

-- Location: FF_X34_Y29_N19
\cars_exited[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \cars_exited[0]~3_combout\,
	ena => \cars_exited[0]~2DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited(0));

-- Location: MLABCELL_X34_Y29_N22
\Add5~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( cars_exited(2) ) + ( GND ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( cars_exited(2) ) + ( GND ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited(2),
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X34_Y29_N23
\cars_exited[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add5~5_sumout\,
	ena => \cars_exited[0]~2DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited(2));

-- Location: MLABCELL_X34_Y29_N24
\Add5~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( cars_exited(3) ) + ( GND ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( cars_exited(3) ) + ( GND ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited(3),
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: FF_X34_Y29_N25
\cars_exited[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add5~9_sumout\,
	ena => \cars_exited[0]~2DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited(3));

-- Location: MLABCELL_X34_Y29_N26
\Add5~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( cars_exited(4) ) + ( GND ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( cars_exited(4) ) + ( GND ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited(4),
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X34_Y29_N27
\cars_exited[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add5~13_sumout\,
	ena => \cars_exited[0]~2DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited(4));

-- Location: MLABCELL_X34_Y29_N28
\Add5~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( cars_exited(5) ) + ( GND ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( cars_exited(5) ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited(5),
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X34_Y29_N29
\cars_exited[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add5~17_sumout\,
	ena => \cars_exited[0]~2DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited(5));

-- Location: FF_X34_Y29_N31
\cars_exited[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add5~21_sumout\,
	ena => \cars_exited[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited(6));

-- Location: LABCELL_X30_Y29_N0
\Add11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~1_sumout\ = SUM(( VCC ) + ( !\Add6~1_sumout\ ) + ( !VCC ))
-- \Add11~2\ = CARRY(( VCC ) + ( !\Add6~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add6~1_sumout\,
	cin => GND,
	sumout => \Add11~1_sumout\,
	cout => \Add11~2\);

-- Location: LABCELL_X30_Y29_N2
\Add11~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~5_sumout\ = SUM(( capacity_free(1) ) + ( !\Add6~5_sumout\ ) + ( \Add11~2\ ))
-- \Add11~6\ = CARRY(( capacity_free(1) ) + ( !\Add6~5_sumout\ ) + ( \Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity_free(1),
	dataf => \ALT_INV_Add6~5_sumout\,
	cin => \Add11~2\,
	sumout => \Add11~5_sumout\,
	cout => \Add11~6\);

-- Location: LABCELL_X30_Y29_N4
\Add11~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~9_sumout\ = SUM(( !capacity_free(2) ) + ( !\Add6~9_sumout\ ) + ( \Add11~6\ ))
-- \Add11~10\ = CARRY(( !capacity_free(2) ) + ( !\Add6~9_sumout\ ) + ( \Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity_free(2),
	dataf => \ALT_INV_Add6~9_sumout\,
	cin => \Add11~6\,
	sumout => \Add11~9_sumout\,
	cout => \Add11~10\);

-- Location: LABCELL_X30_Y29_N6
\Add11~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~13_sumout\ = SUM(( capacity_free(3) ) + ( !\Add6~13_sumout\ ) + ( \Add11~10\ ))
-- \Add11~14\ = CARRY(( capacity_free(3) ) + ( !\Add6~13_sumout\ ) + ( \Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add6~13_sumout\,
	datad => ALT_INV_capacity_free(3),
	cin => \Add11~10\,
	sumout => \Add11~13_sumout\,
	cout => \Add11~14\);

-- Location: LABCELL_X30_Y29_N8
\Add11~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~17_sumout\ = SUM(( !\Add6~17_sumout\ ) + ( !capacity_free(4) ) + ( \Add11~14\ ))
-- \Add11~18\ = CARRY(( !\Add6~17_sumout\ ) + ( !capacity_free(4) ) + ( \Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add6~17_sumout\,
	dataf => ALT_INV_capacity_free(4),
	cin => \Add11~14\,
	sumout => \Add11~17_sumout\,
	cout => \Add11~18\);

-- Location: LABCELL_X30_Y29_N10
\Add11~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~21_sumout\ = SUM(( !\Add6~21_sumout\ ) + ( !capacity_free(5) ) + ( \Add11~18\ ))
-- \Add11~22\ = CARRY(( !\Add6~21_sumout\ ) + ( !capacity_free(5) ) + ( \Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add6~21_sumout\,
	dataf => ALT_INV_capacity_free(5),
	cin => \Add11~18\,
	sumout => \Add11~21_sumout\,
	cout => \Add11~22\);

-- Location: LABCELL_X30_Y29_N12
\Add11~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~25_sumout\ = SUM(( !\Add6~25_sumout\ ) + ( !capacity_free(6) ) + ( \Add11~22\ ))
-- \Add11~26\ = CARRY(( !\Add6~25_sumout\ ) + ( !capacity_free(6) ) + ( \Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add6~25_sumout\,
	dataf => ALT_INV_capacity_free(6),
	cin => \Add11~22\,
	sumout => \Add11~25_sumout\,
	cout => \Add11~26\);

-- Location: LABCELL_X30_Y29_N14
\Add11~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~29_sumout\ = SUM(( !capacity_free(7) ) + ( !\Add6~29_sumout\ ) + ( \Add11~26\ ))
-- \Add11~30\ = CARRY(( !capacity_free(7) ) + ( !\Add6~29_sumout\ ) + ( \Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity_free(7),
	dataf => \ALT_INV_Add6~29_sumout\,
	cin => \Add11~26\,
	sumout => \Add11~29_sumout\,
	cout => \Add11~30\);

-- Location: LABCELL_X30_Y29_N16
\Add11~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~33_sumout\ = SUM(( !capacity_free(2) ) + ( !\Add6~33_sumout\ ) + ( \Add11~30\ ))
-- \Add11~34\ = CARRY(( !capacity_free(2) ) + ( !\Add6~33_sumout\ ) + ( \Add11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_capacity_free(2),
	dataf => \ALT_INV_Add6~33_sumout\,
	cin => \Add11~30\,
	sumout => \Add11~33_sumout\,
	cout => \Add11~34\);

-- Location: LABCELL_X30_Y29_N18
\Add11~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~37_sumout\ = SUM(( !\Add6~37_sumout\ ) + ( GND ) + ( \Add11~34\ ))
-- \Add11~38\ = CARRY(( !\Add6~37_sumout\ ) + ( GND ) + ( \Add11~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add6~37_sumout\,
	cin => \Add11~34\,
	sumout => \Add11~37_sumout\,
	cout => \Add11~38\);

-- Location: LABCELL_X30_Y29_N22
\LessThan5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ( !\Add11~17_sumout\ & ( (!\Add11~9_sumout\ & (!\Add11~5_sumout\ & (!\Add11~13_sumout\ & !\Add11~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~9_sumout\,
	datab => \ALT_INV_Add11~5_sumout\,
	datac => \ALT_INV_Add11~13_sumout\,
	datad => \ALT_INV_Add11~1_sumout\,
	dataf => \ALT_INV_Add11~17_sumout\,
	combout => \LessThan5~0_combout\);

-- Location: LABCELL_X30_Y29_N38
\LessThan5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = ( \LessThan5~0_combout\ & ( !\Add11~33_sumout\ & ( (!\Add11~25_sumout\ & (!\Add11~21_sumout\ & (!\Add11~29_sumout\ & !\Add11~37_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~25_sumout\,
	datab => \ALT_INV_Add11~21_sumout\,
	datac => \ALT_INV_Add11~29_sumout\,
	datad => \ALT_INV_Add11~37_sumout\,
	datae => \ALT_INV_LessThan5~0_combout\,
	dataf => \ALT_INV_Add11~33_sumout\,
	combout => \LessThan5~1_combout\);

-- Location: LABCELL_X32_Y31_N0
\Add8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( !\Add6~1_sumout\ ) + ( !\Add7~1_sumout\ ) + ( !VCC ))
-- \Add8~2\ = CARRY(( !\Add6~1_sumout\ ) + ( !\Add7~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add6~1_sumout\,
	dataf => \ALT_INV_Add7~1_sumout\,
	cin => GND,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\);

-- Location: LABCELL_X32_Y31_N2
\Add8~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( !\Add7~5_sumout\ ) + ( !\Add6~5_sumout\ ) + ( \Add8~2\ ))
-- \Add8~6\ = CARRY(( !\Add7~5_sumout\ ) + ( !\Add6~5_sumout\ ) + ( \Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add7~5_sumout\,
	dataf => \ALT_INV_Add6~5_sumout\,
	cin => \Add8~2\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

-- Location: LABCELL_X32_Y31_N4
\Add8~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( !\Add7~9_sumout\ ) + ( !\Add6~9_sumout\ ) + ( \Add8~6\ ))
-- \Add8~10\ = CARRY(( !\Add7~9_sumout\ ) + ( !\Add6~9_sumout\ ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add7~9_sumout\,
	dataf => \ALT_INV_Add6~9_sumout\,
	cin => \Add8~6\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\);

-- Location: LABCELL_X32_Y31_N6
\Add8~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( !\Add7~13_sumout\ ) + ( !\Add6~13_sumout\ ) + ( \Add8~10\ ))
-- \Add8~14\ = CARRY(( !\Add7~13_sumout\ ) + ( !\Add6~13_sumout\ ) + ( \Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~13_sumout\,
	dataf => \ALT_INV_Add6~13_sumout\,
	cin => \Add8~10\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\);

-- Location: LABCELL_X32_Y31_N8
\Add8~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( !\Add7~17_sumout\ ) + ( !\Add6~17_sumout\ ) + ( \Add8~14\ ))
-- \Add8~18\ = CARRY(( !\Add7~17_sumout\ ) + ( !\Add6~17_sumout\ ) + ( \Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add7~17_sumout\,
	dataf => \ALT_INV_Add6~17_sumout\,
	cin => \Add8~14\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

-- Location: LABCELL_X32_Y31_N10
\Add8~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( !\Add6~21_sumout\ ) + ( !\Add7~21_sumout\ ) + ( \Add8~18\ ))
-- \Add8~22\ = CARRY(( !\Add6~21_sumout\ ) + ( !\Add7~21_sumout\ ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add6~21_sumout\,
	dataf => \ALT_INV_Add7~21_sumout\,
	cin => \Add8~18\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\);

-- Location: MLABCELL_X31_Y31_N0
\Add9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~1_sumout\ = SUM(( \Add8~5_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Add9~2\ = CARRY(( \Add8~5_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add8~5_sumout\,
	cin => GND,
	sumout => \Add9~1_sumout\,
	cout => \Add9~2\);

-- Location: MLABCELL_X31_Y31_N2
\Add9~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~5_sumout\ = SUM(( VCC ) + ( \Add8~9_sumout\ ) + ( \Add9~2\ ))
-- \Add9~6\ = CARRY(( VCC ) + ( \Add8~9_sumout\ ) + ( \Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add8~9_sumout\,
	cin => \Add9~2\,
	sumout => \Add9~5_sumout\,
	cout => \Add9~6\);

-- Location: MLABCELL_X31_Y31_N4
\Add9~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~9_sumout\ = SUM(( VCC ) + ( \Add8~13_sumout\ ) + ( \Add9~6\ ))
-- \Add9~10\ = CARRY(( VCC ) + ( \Add8~13_sumout\ ) + ( \Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add8~13_sumout\,
	cin => \Add9~6\,
	sumout => \Add9~9_sumout\,
	cout => \Add9~10\);

-- Location: MLABCELL_X31_Y31_N6
\Add9~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~13_sumout\ = SUM(( VCC ) + ( \Add8~17_sumout\ ) + ( \Add9~10\ ))
-- \Add9~14\ = CARRY(( VCC ) + ( \Add8~17_sumout\ ) + ( \Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add8~17_sumout\,
	cin => \Add9~10\,
	sumout => \Add9~13_sumout\,
	cout => \Add9~14\);

-- Location: MLABCELL_X31_Y31_N8
\Add9~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~17_sumout\ = SUM(( VCC ) + ( \Add8~21_sumout\ ) + ( \Add9~14\ ))
-- \Add9~18\ = CARRY(( VCC ) + ( \Add8~21_sumout\ ) + ( \Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add8~21_sumout\,
	cin => \Add9~14\,
	sumout => \Add9~17_sumout\,
	cout => \Add9~18\);

-- Location: LABCELL_X32_Y31_N12
\Add8~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( !\Add7~25_sumout\ ) + ( !\Add6~25_sumout\ ) + ( \Add8~22\ ))
-- \Add8~26\ = CARRY(( !\Add7~25_sumout\ ) + ( !\Add6~25_sumout\ ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add7~25_sumout\,
	dataf => \ALT_INV_Add6~25_sumout\,
	cin => \Add8~22\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\);

-- Location: MLABCELL_X31_Y31_N10
\Add9~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~21_sumout\ = SUM(( \Add8~25_sumout\ ) + ( GND ) + ( \Add9~18\ ))
-- \Add9~22\ = CARRY(( \Add8~25_sumout\ ) + ( GND ) + ( \Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add8~25_sumout\,
	cin => \Add9~18\,
	sumout => \Add9~21_sumout\,
	cout => \Add9~22\);

-- Location: LABCELL_X32_Y31_N14
\Add8~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( !\Add7~29_sumout\ ) + ( !\Add6~29_sumout\ ) + ( \Add8~26\ ))
-- \Add8~30\ = CARRY(( !\Add7~29_sumout\ ) + ( !\Add6~29_sumout\ ) + ( \Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add7~29_sumout\,
	dataf => \ALT_INV_Add6~29_sumout\,
	cin => \Add8~26\,
	sumout => \Add8~29_sumout\,
	cout => \Add8~30\);

-- Location: MLABCELL_X31_Y31_N12
\Add9~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~25_sumout\ = SUM(( \Add8~29_sumout\ ) + ( VCC ) + ( \Add9~22\ ))
-- \Add9~26\ = CARRY(( \Add8~29_sumout\ ) + ( VCC ) + ( \Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add8~29_sumout\,
	cin => \Add9~22\,
	sumout => \Add9~25_sumout\,
	cout => \Add9~26\);

-- Location: MLABCELL_X31_Y31_N26
\LessThan4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = ( !\Add9~9_sumout\ & ( !\Add9~13_sumout\ & ( (!\Add8~1_sumout\ & (!\Add9~5_sumout\ & !\Add9~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add8~1_sumout\,
	datac => \ALT_INV_Add9~5_sumout\,
	datad => \ALT_INV_Add9~1_sumout\,
	datae => \ALT_INV_Add9~9_sumout\,
	dataf => \ALT_INV_Add9~13_sumout\,
	combout => \LessThan4~2_combout\);

-- Location: LABCELL_X32_Y31_N16
\Add8~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~33_sumout\ = SUM(( !\Add7~33_sumout\ ) + ( !\Add6~33_sumout\ ) + ( \Add8~30\ ))
-- \Add8~34\ = CARRY(( !\Add7~33_sumout\ ) + ( !\Add6~33_sumout\ ) + ( \Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add7~33_sumout\,
	dataf => \ALT_INV_Add6~33_sumout\,
	cin => \Add8~30\,
	sumout => \Add8~33_sumout\,
	cout => \Add8~34\);

-- Location: LABCELL_X32_Y31_N18
\Add8~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~37_sumout\ = SUM(( !\Add7~37_sumout\ ) + ( !\Add6~37_sumout\ ) + ( \Add8~34\ ))
-- \Add8~38\ = CARRY(( !\Add7~37_sumout\ ) + ( !\Add6~37_sumout\ ) + ( \Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~37_sumout\,
	dataf => \ALT_INV_Add6~37_sumout\,
	cin => \Add8~34\,
	sumout => \Add8~37_sumout\,
	cout => \Add8~38\);

-- Location: MLABCELL_X31_Y31_N14
\Add9~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~29_sumout\ = SUM(( \Add8~33_sumout\ ) + ( GND ) + ( \Add9~26\ ))
-- \Add9~30\ = CARRY(( \Add8~33_sumout\ ) + ( GND ) + ( \Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add8~33_sumout\,
	cin => \Add9~26\,
	sumout => \Add9~29_sumout\,
	cout => \Add9~30\);

-- Location: MLABCELL_X31_Y31_N16
\Add9~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~33_sumout\ = SUM(( \Add8~37_sumout\ ) + ( VCC ) + ( \Add9~30\ ))
-- \Add9~34\ = CARRY(( \Add8~37_sumout\ ) + ( VCC ) + ( \Add9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add8~37_sumout\,
	cin => \Add9~30\,
	sumout => \Add9~33_sumout\,
	cout => \Add9~34\);

-- Location: MLABCELL_X31_Y31_N28
\LessThan4~3\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = ( \LessThan4~2_combout\ & ( !\Add9~33_sumout\ & ( (!\Add9~17_sumout\ & (!\Add9~21_sumout\ & (!\Add9~25_sumout\ & !\Add9~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~17_sumout\,
	datab => \ALT_INV_Add9~21_sumout\,
	datac => \ALT_INV_Add9~25_sumout\,
	datad => \ALT_INV_Add9~29_sumout\,
	datae => \ALT_INV_LessThan4~2_combout\,
	dataf => \ALT_INV_Add9~33_sumout\,
	combout => \LessThan4~3_combout\);

-- Location: LABCELL_X32_Y29_N32
\LessThan7~4\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan7~4_combout\ = ( capacity_free(6) & ( (!\Add6~25_sumout\ & (!\Add6~21_sumout\ $ (!capacity_free(5)))) ) ) # ( !capacity_free(6) & ( (\Add6~25_sumout\ & (!\Add6~21_sumout\ $ (!capacity_free(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add6~21_sumout\,
	datac => \ALT_INV_Add6~25_sumout\,
	datad => ALT_INV_capacity_free(5),
	dataf => ALT_INV_capacity_free(6),
	combout => \LessThan7~4_combout\);

-- Location: LABCELL_X32_Y29_N28
\LessThan7~2\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = ( \Add6~13_sumout\ & ( (capacity_free(3) & (!\Add6~17_sumout\ $ (!capacity_free(4)))) ) ) # ( !\Add6~13_sumout\ & ( (!capacity_free(3) & (!\Add6~17_sumout\ $ (!capacity_free(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~17_sumout\,
	datac => ALT_INV_capacity_free(3),
	datad => ALT_INV_capacity_free(4),
	dataf => \ALT_INV_Add6~13_sumout\,
	combout => \LessThan7~2_combout\);

-- Location: LABCELL_X32_Y29_N34
\LessThan7~3\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = ( capacity_free(3) & ( (capacity_free(4) & \Add6~17_sumout\) ) ) # ( !capacity_free(3) & ( (!capacity_free(4) & (\Add6~13_sumout\ & \Add6~17_sumout\)) # (capacity_free(4) & ((\Add6~17_sumout\) # (\Add6~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity_free(4),
	datac => \ALT_INV_Add6~13_sumout\,
	datad => \ALT_INV_Add6~17_sumout\,
	dataf => ALT_INV_capacity_free(3),
	combout => \LessThan7~3_combout\);

-- Location: LABCELL_X32_Y29_N26
\LessThan7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = ( capacity_free(1) & ( (!capacity_free(2) & (\Add6~9_sumout\ & (\Add6~1_sumout\ & \Add6~5_sumout\))) # (capacity_free(2) & (((\Add6~1_sumout\ & \Add6~5_sumout\)) # (\Add6~9_sumout\))) ) ) # ( !capacity_free(1) & ( 
-- (!capacity_free(2) & (\Add6~9_sumout\ & ((\Add6~5_sumout\) # (\Add6~1_sumout\)))) # (capacity_free(2) & (((\Add6~5_sumout\) # (\Add6~1_sumout\)) # (\Add6~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101110111000101110111011100010001000101110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity_free(2),
	datab => \ALT_INV_Add6~9_sumout\,
	datac => \ALT_INV_Add6~1_sumout\,
	datad => \ALT_INV_Add6~5_sumout\,
	dataf => ALT_INV_capacity_free(1),
	combout => \LessThan7~1_combout\);

-- Location: LABCELL_X32_Y29_N30
\LessThan7~5\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan7~5_combout\ = ( capacity_free(6) & ( ((capacity_free(5) & \Add6~21_sumout\)) # (\Add6~25_sumout\) ) ) # ( !capacity_free(6) & ( (capacity_free(5) & (\Add6~21_sumout\ & \Add6~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_capacity_free(5),
	datac => \ALT_INV_Add6~21_sumout\,
	datad => \ALT_INV_Add6~25_sumout\,
	dataf => ALT_INV_capacity_free(6),
	combout => \LessThan7~5_combout\);

-- Location: MLABCELL_X31_Y29_N30
\LessThan7~6\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan7~6_combout\ = ( !\LessThan7~5_combout\ & ( (!\LessThan7~4_combout\) # ((!\LessThan7~3_combout\ & ((!\LessThan7~2_combout\) # (!\LessThan7~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011101010111110101110101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan7~4_combout\,
	datab => \ALT_INV_LessThan7~2_combout\,
	datac => \ALT_INV_LessThan7~3_combout\,
	datad => \ALT_INV_LessThan7~1_combout\,
	dataf => \ALT_INV_LessThan7~5_combout\,
	combout => \LessThan7~6_combout\);

-- Location: LABCELL_X32_Y29_N24
\LessThan7~7\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan7~7_combout\ = ( \Add6~33_sumout\ & ( (!capacity_free(2) & !\Add6~37_sumout\) ) ) # ( !\Add6~33_sumout\ & ( !\Add6~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_capacity_free(2),
	datac => \ALT_INV_Add6~37_sumout\,
	dataf => \ALT_INV_Add6~33_sumout\,
	combout => \LessThan7~7_combout\);

-- Location: LABCELL_X32_Y29_N22
\LessThan7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = ( capacity_free(2) & ( \Add6~33_sumout\ ) ) # ( !capacity_free(2) & ( !\Add6~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add6~33_sumout\,
	dataf => ALT_INV_capacity_free(2),
	combout => \LessThan7~0_combout\);

-- Location: MLABCELL_X31_Y29_N32
\LessThan7~8\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan7~8_combout\ = ( !\LessThan7~7_combout\ & ( \LessThan7~0_combout\ & ( !\Add6~41_sumout\ ) ) ) # ( \LessThan7~7_combout\ & ( !\LessThan7~0_combout\ & ( (!\Add6~41_sumout\ & ((!\Add6~29_sumout\ & (capacity_free(7) & !\LessThan7~6_combout\)) # 
-- (\Add6~29_sumout\ & ((!\LessThan7~6_combout\) # (capacity_free(7)))))) ) ) ) # ( !\LessThan7~7_combout\ & ( !\LessThan7~0_combout\ & ( !\Add6~41_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000011100000001000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add6~29_sumout\,
	datab => ALT_INV_capacity_free(7),
	datac => \ALT_INV_Add6~41_sumout\,
	datad => \ALT_INV_LessThan7~6_combout\,
	datae => \ALT_INV_LessThan7~7_combout\,
	dataf => \ALT_INV_LessThan7~0_combout\,
	combout => \LessThan7~8_combout\);

-- Location: LABCELL_X30_Y29_N20
\Add11~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add11~41_sumout\ = SUM(( GND ) + ( !\Add6~41_sumout\ ) + ( \Add11~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add6~41_sumout\,
	cin => \Add11~38\,
	sumout => \Add11~41_sumout\);

-- Location: MLABCELL_X29_Y29_N28
\LessThan6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ( \LessThan6~0_combout\ & ( (!\Add10~13_sumout\ & (((!\Add10~9_sumout\) # (\Add7~17_sumout\)) # (\Add7~13_sumout\))) # (\Add10~13_sumout\ & (\Add7~17_sumout\ & ((!\Add10~9_sumout\) # (\Add7~13_sumout\)))) ) ) # ( 
-- !\LessThan6~0_combout\ & ( (!\Add10~13_sumout\ & (((\Add7~13_sumout\ & !\Add10~9_sumout\)) # (\Add7~17_sumout\))) # (\Add10~13_sumout\ & (\Add7~13_sumout\ & (!\Add10~9_sumout\ & \Add7~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010111010001000001011101010100010111110111010001011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~13_sumout\,
	datab => \ALT_INV_Add7~13_sumout\,
	datac => \ALT_INV_Add10~9_sumout\,
	datad => \ALT_INV_Add7~17_sumout\,
	dataf => \ALT_INV_LessThan6~0_combout\,
	combout => \LessThan6~1_combout\);

-- Location: MLABCELL_X29_Y29_N34
\LessThan6~4\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~4_combout\ = ( \LessThan6~2_combout\ & ( \LessThan6~1_combout\ & ( (\Add10~25_sumout\ & !\Add7~29_sumout\) ) ) ) # ( !\LessThan6~2_combout\ & ( \LessThan6~1_combout\ & ( (!\Add10~25_sumout\ & (!\Add7~29_sumout\ & !\LessThan6~3_combout\)) # 
-- (\Add10~25_sumout\ & ((!\Add7~29_sumout\) # (!\LessThan6~3_combout\))) ) ) ) # ( \LessThan6~2_combout\ & ( !\LessThan6~1_combout\ & ( (!\Add10~25_sumout\ & (!\Add7~29_sumout\ & !\LessThan6~3_combout\)) # (\Add10~25_sumout\ & ((!\Add7~29_sumout\) # 
-- (!\LessThan6~3_combout\))) ) ) ) # ( !\LessThan6~2_combout\ & ( !\LessThan6~1_combout\ & ( (!\Add10~25_sumout\ & (!\Add7~29_sumout\ & !\LessThan6~3_combout\)) # (\Add10~25_sumout\ & ((!\Add7~29_sumout\) # (!\LessThan6~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101010000111101010101000011110101010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~25_sumout\,
	datac => \ALT_INV_Add7~29_sumout\,
	datad => \ALT_INV_LessThan6~3_combout\,
	datae => \ALT_INV_LessThan6~2_combout\,
	dataf => \ALT_INV_LessThan6~1_combout\,
	combout => \LessThan6~4_combout\);

-- Location: LABCELL_X30_Y30_N18
\LessThan6~6DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~6DUPLICATE_combout\ = ( \Add10~33_sumout\ & ( !\LessThan6~5_combout\ & ( (\Add7~37_sumout\ & ((!\Add10~41_sumout\ & (!\Add10~37_sumout\ & !\Add7~41_sumout\)) # (\Add10~41_sumout\ & (\Add10~37_sumout\ & \Add7~41_sumout\)))) ) ) ) # ( 
-- !\Add10~33_sumout\ & ( !\LessThan6~5_combout\ & ( (!\Add7~37_sumout\ & ((!\Add10~41_sumout\ & (!\Add10~37_sumout\ & !\Add7~41_sumout\)) # (\Add10~41_sumout\ & (\Add10~37_sumout\ & \Add7~41_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100000000000000001000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~41_sumout\,
	datab => \ALT_INV_Add10~37_sumout\,
	datac => \ALT_INV_Add7~41_sumout\,
	datad => \ALT_INV_Add7~37_sumout\,
	datae => \ALT_INV_Add10~33_sumout\,
	dataf => \ALT_INV_LessThan6~5_combout\,
	combout => \LessThan6~6DUPLICATE_combout\);

-- Location: LABCELL_X30_Y30_N12
\LessThan6~8\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~8_combout\ = ( \LessThan6~7_combout\ & ( \Add10~33_sumout\ & ( (!\Add10~41_sumout\ & (!\Add10~37_sumout\ & (\Add7~37_sumout\ & !\Add7~41_sumout\))) # (\Add10~41_sumout\ & ((!\Add10~37_sumout\) # ((!\Add7~41_sumout\) # (\Add7~37_sumout\)))) ) ) 
-- ) # ( !\LessThan6~7_combout\ & ( \Add10~33_sumout\ & ( (\Add10~41_sumout\ & ((!\Add10~37_sumout\) # (!\Add7~41_sumout\))) ) ) ) # ( \LessThan6~7_combout\ & ( !\Add10~33_sumout\ & ( ((!\Add10~37_sumout\ & !\Add7~41_sumout\)) # (\Add10~41_sumout\) ) ) ) # ( 
-- !\LessThan6~7_combout\ & ( !\Add10~33_sumout\ & ( (!\Add10~41_sumout\ & (!\Add10~37_sumout\ & (\Add7~37_sumout\ & !\Add7~41_sumout\))) # (\Add10~41_sumout\ & ((!\Add10~37_sumout\) # ((!\Add7~41_sumout\) # (\Add7~37_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101000101110111010101010101010101010001000101110101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~41_sumout\,
	datab => \ALT_INV_Add10~37_sumout\,
	datac => \ALT_INV_Add7~37_sumout\,
	datad => \ALT_INV_Add7~41_sumout\,
	datae => \ALT_INV_LessThan6~7_combout\,
	dataf => \ALT_INV_Add10~33_sumout\,
	combout => \LessThan6~8_combout\);

-- Location: MLABCELL_X31_Y29_N24
\LessThan5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = ( \Add9~37_sumout\ & ( \LessThan6~8_combout\ ) ) # ( \Add9~37_sumout\ & ( !\LessThan6~8_combout\ & ( (!\LessThan7~8_combout\ & ((!\Add11~41_sumout\) # ((!\LessThan6~4_combout\ & \LessThan6~6DUPLICATE_combout\)))) # 
-- (\LessThan7~8_combout\ & (((!\LessThan6~4_combout\ & \LessThan6~6DUPLICATE_combout\)))) ) ) ) # ( !\Add9~37_sumout\ & ( !\LessThan6~8_combout\ & ( (!\LessThan7~8_combout\ & (!\Add11~41_sumout\ & ((!\LessThan6~6DUPLICATE_combout\) # 
-- (\LessThan6~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000001000100010001111100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan7~8_combout\,
	datab => \ALT_INV_Add11~41_sumout\,
	datac => \ALT_INV_LessThan6~4_combout\,
	datad => \ALT_INV_LessThan6~6DUPLICATE_combout\,
	datae => \ALT_INV_Add9~37_sumout\,
	dataf => \ALT_INV_LessThan6~8_combout\,
	combout => \LessThan5~3_combout\);

-- Location: MLABCELL_X31_Y29_N20
\cars_entered[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \cars_entered[0]~0_combout\ = ( \LessThan4~3_combout\ & ( \LessThan5~3_combout\ & ( (!\is_uni_car_entered~input_o\ & (\LessThan6~16DUPLICATE_combout\ & !\LessThan5~1_combout\)) ) ) ) # ( !\LessThan4~3_combout\ & ( \LessThan5~3_combout\ & ( 
-- (!\is_uni_car_entered~input_o\ & ((!\LessThan6~16DUPLICATE_combout\) # (!\LessThan5~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_uni_car_entered~input_o\,
	datac => \ALT_INV_LessThan6~16DUPLICATE_combout\,
	datad => \ALT_INV_LessThan5~1_combout\,
	datae => \ALT_INV_LessThan4~3_combout\,
	dataf => \ALT_INV_LessThan5~3_combout\,
	combout => \cars_entered[0]~0_combout\);

-- Location: FF_X31_Y29_N29
\cars_entered[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \cars_entered[0]~1_combout\,
	ena => \cars_entered[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered(0));

-- Location: MLABCELL_X31_Y29_N0
\Add3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( cars_entered(1) ) + ( cars_entered(0) ) + ( !VCC ))
-- \Add3~2\ = CARRY(( cars_entered(1) ) + ( cars_entered(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered(1),
	dataf => ALT_INV_cars_entered(0),
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: FF_X31_Y29_N1
\cars_entered[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add3~1_sumout\,
	ena => \cars_entered[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered(1));

-- Location: MLABCELL_X31_Y29_N2
\Add3~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( cars_entered(2) ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( cars_entered(2) ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered(2),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: FF_X31_Y29_N3
\cars_entered[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add3~5_sumout\,
	ena => \cars_entered[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered(2));

-- Location: MLABCELL_X31_Y29_N4
\Add3~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( cars_entered(3) ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( cars_entered(3) ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered(3),
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X31_Y29_N5
\cars_entered[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add3~9_sumout\,
	ena => \cars_entered[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered(3));

-- Location: MLABCELL_X31_Y29_N6
\Add3~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( cars_entered(4) ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( cars_entered(4) ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered(4),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: FF_X31_Y29_N7
\cars_entered[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add3~13_sumout\,
	ena => \cars_entered[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered(4));

-- Location: MLABCELL_X31_Y29_N8
\Add3~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( cars_entered(5) ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( cars_entered(5) ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered(5),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: FF_X31_Y29_N9
\cars_entered[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add3~17_sumout\,
	ena => \cars_entered[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered(5));

-- Location: MLABCELL_X31_Y29_N10
\Add3~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( cars_entered(6) ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( cars_entered(6) ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered(6),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X31_Y29_N11
\cars_entered[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add3~21_sumout\,
	ena => \cars_entered[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered(6));

-- Location: MLABCELL_X31_Y29_N12
\Add3~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( cars_entered(7) ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( cars_entered(7) ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered(7),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X31_Y29_N13
\cars_entered[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add3~25_sumout\,
	ena => \cars_entered[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered(7));

-- Location: MLABCELL_X31_Y29_N14
\Add3~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( cars_entered(8) ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( cars_entered(8) ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered(8),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: FF_X31_Y29_N15
\cars_entered[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add3~29_sumout\,
	ena => \cars_entered[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered(8));

-- Location: MLABCELL_X31_Y29_N16
\Add3~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( cars_entered(9) ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( cars_entered(9) ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered(9),
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: FF_X31_Y29_N17
\cars_entered[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add3~33_sumout\,
	ena => \cars_entered[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered(9));

-- Location: MLABCELL_X31_Y29_N18
\Add3~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( cars_entered(10) ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered(10),
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\);

-- Location: FF_X31_Y29_N19
\cars_entered[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add3~37_sumout\,
	ena => \cars_entered[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered(10));

-- Location: MLABCELL_X34_Y29_N38
\Add5~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( cars_exited(10) ) + ( GND ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited(10),
	cin => \Add5~34\,
	sumout => \Add5~37_sumout\);

-- Location: FF_X34_Y29_N39
\cars_exited[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add5~37_sumout\,
	ena => \cars_exited[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited(10));

-- Location: LABCELL_X32_Y29_N20
\Add6~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~41_sumout\ = SUM(( !cars_entered(10) $ (cars_exited(10)) ) + ( \Add6~39\ ) + ( \Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cars_entered(10),
	datac => ALT_INV_cars_exited(10),
	cin => \Add6~38\,
	sharein => \Add6~39\,
	sumout => \Add6~41_sumout\);

-- Location: LABCELL_X32_Y31_N20
\Add8~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add8~41_sumout\ = SUM(( !\Add6~41_sumout\ ) + ( !\Add7~41_sumout\ ) + ( \Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add6~41_sumout\,
	dataf => \ALT_INV_Add7~41_sumout\,
	cin => \Add8~38\,
	sumout => \Add8~41_sumout\);

-- Location: MLABCELL_X31_Y31_N18
\Add9~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add9~37_sumout\ = SUM(( \Add8~41_sumout\ ) + ( VCC ) + ( \Add9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add8~41_sumout\,
	cin => \Add9~34\,
	sumout => \Add9~37_sumout\);

-- Location: MLABCELL_X31_Y31_N22
\LessThan4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( !\Add9~17_sumout\ & ( !\Add9~13_sumout\ & ( (!\Add9~1_sumout\ & (!\Add8~1_sumout\ & (!\Add9~5_sumout\ & !\Add9~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~1_sumout\,
	datab => \ALT_INV_Add8~1_sumout\,
	datac => \ALT_INV_Add9~5_sumout\,
	datad => \ALT_INV_Add9~9_sumout\,
	datae => \ALT_INV_Add9~17_sumout\,
	dataf => \ALT_INV_Add9~13_sumout\,
	combout => \LessThan4~0_combout\);

-- Location: MLABCELL_X31_Y31_N32
\LessThan4~4\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan4~4_combout\ = ( !\Add9~25_sumout\ & ( !\Add9~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add9~25_sumout\,
	dataf => \ALT_INV_Add9~21_sumout\,
	combout => \LessThan4~4_combout\);

-- Location: MLABCELL_X31_Y31_N36
\always1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = ( \LessThan4~0_combout\ & ( \LessThan4~4_combout\ & ( (\is_uni_car_entered~input_o\ & (\Add9~37_sumout\ & ((\Add9~33_sumout\) # (\Add9~29_sumout\)))) ) ) ) # ( !\LessThan4~0_combout\ & ( \LessThan4~4_combout\ & ( 
-- (\is_uni_car_entered~input_o\ & \Add9~37_sumout\) ) ) ) # ( \LessThan4~0_combout\ & ( !\LessThan4~4_combout\ & ( (\is_uni_car_entered~input_o\ & \Add9~37_sumout\) ) ) ) # ( !\LessThan4~0_combout\ & ( !\LessThan4~4_combout\ & ( 
-- (\is_uni_car_entered~input_o\ & \Add9~37_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_uni_car_entered~input_o\,
	datab => \ALT_INV_Add9~29_sumout\,
	datac => \ALT_INV_Add9~37_sumout\,
	datad => \ALT_INV_Add9~33_sumout\,
	datae => \ALT_INV_LessThan4~0_combout\,
	dataf => \ALT_INV_LessThan4~4_combout\,
	combout => \always1~0_combout\);

-- Location: FF_X31_Y30_N1
\cars_entered_uni[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add2~1_sumout\,
	ena => \always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered_uni(1));

-- Location: MLABCELL_X31_Y30_N2
\Add2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( cars_entered_uni(2) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( cars_entered_uni(2) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_entered_uni(2),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X32_Y30_N33
\cars_entered_uni[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add2~5_sumout\,
	sload => VCC,
	ena => \always1~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered_uni(2));

-- Location: MLABCELL_X31_Y30_N4
\Add2~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( cars_entered_uni(3) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( cars_entered_uni(3) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered_uni(3),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X31_Y30_N5
\cars_entered_uni[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add2~9_sumout\,
	ena => \always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered_uni(3));

-- Location: MLABCELL_X31_Y30_N6
\Add2~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( cars_entered_uni(4) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( cars_entered_uni(4) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cars_entered_uni(4),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X32_Y30_N27
\cars_entered_uni[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add2~13_sumout\,
	sload => VCC,
	ena => \always1~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered_uni(4));

-- Location: MLABCELL_X31_Y30_N8
\Add2~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( GND ) + ( cars_entered_uni(5) ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( GND ) + ( cars_entered_uni(5) ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_cars_entered_uni(5),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X32_Y30_N29
\cars_entered_uni[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add2~17_sumout\,
	sload => VCC,
	ena => \always1~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered_uni(5));

-- Location: MLABCELL_X31_Y30_N10
\Add2~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( GND ) + ( cars_entered_uni(6) ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( GND ) + ( cars_entered_uni(6) ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_cars_entered_uni(6),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X32_Y30_N31
\cars_entered_uni[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add2~21_sumout\,
	sload => VCC,
	ena => \always1~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered_uni(6));

-- Location: MLABCELL_X31_Y30_N12
\Add2~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( cars_entered_uni(7) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( cars_entered_uni(7) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_entered_uni(7),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X31_Y30_N13
\cars_entered_uni[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add2~25_sumout\,
	ena => \always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered_uni(7));

-- Location: MLABCELL_X31_Y30_N14
\Add2~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( GND ) + ( cars_entered_uni(8) ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( GND ) + ( cars_entered_uni(8) ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_cars_entered_uni(8),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X32_Y30_N5
\cars_entered_uni[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \Add2~29_sumout\,
	sload => VCC,
	ena => \always1~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered_uni(8));

-- Location: FF_X31_Y30_N17
\cars_entered_uni[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	d => \Add2~33_sumout\,
	ena => \always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered_uni(9));

-- Location: LABCELL_X32_Y30_N30
\LessThan2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( !\Add7~17_sumout\ & ( !\Add7~21_sumout\ & ( (!\Add7~1_sumout\ & (!\Add7~5_sumout\ & (!\Add7~13_sumout\ & !\Add7~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~1_sumout\,
	datab => \ALT_INV_Add7~5_sumout\,
	datac => \ALT_INV_Add7~13_sumout\,
	datad => \ALT_INV_Add7~9_sumout\,
	datae => \ALT_INV_Add7~17_sumout\,
	dataf => \ALT_INV_Add7~21_sumout\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X32_Y30_N24
\LessThan2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( !\Add7~29_sumout\ & ( !\Add7~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~25_sumout\,
	dataf => \ALT_INV_Add7~29_sumout\,
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X32_Y30_N38
\always2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = ( \LessThan2~0_combout\ & ( \LessThan2~1_combout\ & ( (\is_uni_car_exited~input_o\ & (!\Add7~41_sumout\ & ((\Add7~37_sumout\) # (\Add7~33_sumout\)))) ) ) ) # ( !\LessThan2~0_combout\ & ( \LessThan2~1_combout\ & ( 
-- (\is_uni_car_exited~input_o\ & !\Add7~41_sumout\) ) ) ) # ( \LessThan2~0_combout\ & ( !\LessThan2~1_combout\ & ( (\is_uni_car_exited~input_o\ & !\Add7~41_sumout\) ) ) ) # ( !\LessThan2~0_combout\ & ( !\LessThan2~1_combout\ & ( (\is_uni_car_exited~input_o\ 
-- & !\Add7~41_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_uni_car_exited~input_o\,
	datab => \ALT_INV_Add7~33_sumout\,
	datac => \ALT_INV_Add7~37_sumout\,
	datad => \ALT_INV_Add7~41_sumout\,
	datae => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \always2~0_combout\);

-- Location: FF_X32_Y30_N35
\cars_exited_uni[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \cars_exited_uni[0]~0_combout\,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited_uni(0));

-- Location: MLABCELL_X31_Y30_N22
\Add4~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( cars_exited_uni(2) ) + ( GND ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( cars_exited_uni(2) ) + ( GND ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited_uni(2),
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: FF_X31_Y30_N23
\cars_exited_uni[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add4~5_sumout\,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited_uni(2));

-- Location: MLABCELL_X31_Y30_N24
\Add4~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( cars_exited_uni(3) ) + ( GND ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( cars_exited_uni(3) ) + ( GND ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited_uni(3),
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: FF_X31_Y30_N25
\cars_exited_uni[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add4~9_sumout\,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited_uni(3));

-- Location: MLABCELL_X31_Y30_N26
\Add4~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( cars_exited_uni(4) ) + ( GND ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( cars_exited_uni(4) ) + ( GND ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited_uni(4),
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: FF_X31_Y30_N27
\cars_exited_uni[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add4~13_sumout\,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited_uni(4));

-- Location: MLABCELL_X31_Y30_N28
\Add4~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( GND ) + ( cars_exited_uni(5) ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( GND ) + ( cars_exited_uni(5) ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_cars_exited_uni(5),
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: FF_X32_Y30_N25
\cars_exited_uni[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add4~17_sumout\,
	sload => VCC,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited_uni(5));

-- Location: MLABCELL_X31_Y30_N30
\Add4~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( cars_exited_uni(6) ) + ( GND ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( cars_exited_uni(6) ) + ( GND ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited_uni(6),
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: FF_X32_Y30_N15
\cars_exited_uni[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	asdata => \Add4~21_sumout\,
	sload => VCC,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited_uni(6));

-- Location: MLABCELL_X31_Y30_N32
\Add4~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( cars_exited_uni(7) ) + ( GND ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( cars_exited_uni(7) ) + ( GND ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cars_exited_uni(7),
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: FF_X31_Y30_N33
\cars_exited_uni[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add4~25_sumout\,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited_uni(7));

-- Location: FF_X31_Y30_N35
\cars_exited_uni[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~inputclkctrl_outclk\,
	d => \Add4~29_sumout\,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_exited_uni(8));

-- Location: MLABCELL_X31_Y31_N38
\always1~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \always1~0DUPLICATE_combout\ = ( \LessThan4~0_combout\ & ( \LessThan4~4_combout\ & ( (\is_uni_car_entered~input_o\ & (\Add9~37_sumout\ & ((\Add9~33_sumout\) # (\Add9~29_sumout\)))) ) ) ) # ( !\LessThan4~0_combout\ & ( \LessThan4~4_combout\ & ( 
-- (\is_uni_car_entered~input_o\ & \Add9~37_sumout\) ) ) ) # ( \LessThan4~0_combout\ & ( !\LessThan4~4_combout\ & ( (\is_uni_car_entered~input_o\ & \Add9~37_sumout\) ) ) ) # ( !\LessThan4~0_combout\ & ( !\LessThan4~4_combout\ & ( 
-- (\is_uni_car_entered~input_o\ & \Add9~37_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_is_uni_car_entered~input_o\,
	datab => \ALT_INV_Add9~29_sumout\,
	datac => \ALT_INV_Add9~33_sumout\,
	datad => \ALT_INV_Add9~37_sumout\,
	datae => \ALT_INV_LessThan4~0_combout\,
	dataf => \ALT_INV_LessThan4~4_combout\,
	combout => \always1~0DUPLICATE_combout\);

-- Location: FF_X32_Y30_N39
\cars_entered_uni[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~inputclkctrl_outclk\,
	asdata => \cars_entered_uni[0]~0_combout\,
	sload => VCC,
	ena => \always1~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cars_entered_uni(0));

-- Location: LABCELL_X30_Y30_N16
\LessThan6~6\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~6_combout\ = ( \Add10~33_sumout\ & ( !\LessThan6~5_combout\ & ( (\Add7~37_sumout\ & ((!\Add10~41_sumout\ & (!\Add10~37_sumout\ & !\Add7~41_sumout\)) # (\Add10~41_sumout\ & (\Add10~37_sumout\ & \Add7~41_sumout\)))) ) ) ) # ( !\Add10~33_sumout\ & 
-- ( !\LessThan6~5_combout\ & ( (!\Add7~37_sumout\ & ((!\Add10~41_sumout\ & (!\Add10~37_sumout\ & !\Add7~41_sumout\)) # (\Add10~41_sumout\ & (\Add10~37_sumout\ & \Add7~41_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010000000010000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~41_sumout\,
	datab => \ALT_INV_Add10~37_sumout\,
	datac => \ALT_INV_Add7~37_sumout\,
	datad => \ALT_INV_Add7~41_sumout\,
	datae => \ALT_INV_Add10~33_sumout\,
	dataf => \ALT_INV_LessThan6~5_combout\,
	combout => \LessThan6~6_combout\);

-- Location: LABCELL_X30_Y29_N32
\vacated_space~0\ : arriaii_lcell_comb
-- Equation(s):
-- \vacated_space~0_combout\ = ( \Add8~1_sumout\ & ( \Add11~1_sumout\ & ( ((!\LessThan7~8_combout\) # ((\LessThan6~6_combout\ & !\LessThan6~4_combout\))) # (\LessThan6~8_combout\) ) ) ) # ( !\Add8~1_sumout\ & ( \Add11~1_sumout\ & ( (!\LessThan6~8_combout\ & 
-- (!\LessThan7~8_combout\ & ((!\LessThan6~6_combout\) # (\LessThan6~4_combout\)))) ) ) ) # ( \Add8~1_sumout\ & ( !\Add11~1_sumout\ & ( ((\LessThan6~6_combout\ & !\LessThan6~4_combout\)) # (\LessThan6~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110101010110000000101000001111011111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~8_combout\,
	datab => \ALT_INV_LessThan6~6_combout\,
	datac => \ALT_INV_LessThan7~8_combout\,
	datad => \ALT_INV_LessThan6~4_combout\,
	datae => \ALT_INV_Add8~1_sumout\,
	dataf => \ALT_INV_Add11~1_sumout\,
	combout => \vacated_space~0_combout\);

-- Location: LABCELL_X30_Y30_N24
\vacated_space~1\ : arriaii_lcell_comb
-- Equation(s):
-- \vacated_space~1_combout\ = ( \Add11~5_sumout\ & ( \LessThan7~8_combout\ & ( (\Add9~1_sumout\ & (((\LessThan6~6DUPLICATE_combout\ & !\LessThan6~4_combout\)) # (\LessThan6~8_combout\))) ) ) ) # ( !\Add11~5_sumout\ & ( \LessThan7~8_combout\ & ( 
-- (\Add9~1_sumout\ & (((\LessThan6~6DUPLICATE_combout\ & !\LessThan6~4_combout\)) # (\LessThan6~8_combout\))) ) ) ) # ( \Add11~5_sumout\ & ( !\LessThan7~8_combout\ & ( ((!\LessThan6~8_combout\ & ((!\LessThan6~6DUPLICATE_combout\) # 
-- (\LessThan6~4_combout\)))) # (\Add9~1_sumout\) ) ) ) # ( !\Add11~5_sumout\ & ( !\LessThan7~8_combout\ & ( (\Add9~1_sumout\ & (((\LessThan6~6DUPLICATE_combout\ & !\LessThan6~4_combout\)) # (\LessThan6~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010001110101011101110100010101000100010001010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~1_sumout\,
	datab => \ALT_INV_LessThan6~8_combout\,
	datac => \ALT_INV_LessThan6~6DUPLICATE_combout\,
	datad => \ALT_INV_LessThan6~4_combout\,
	datae => \ALT_INV_Add11~5_sumout\,
	dataf => \ALT_INV_LessThan7~8_combout\,
	combout => \vacated_space~1_combout\);

-- Location: LABCELL_X30_Y30_N30
\vacated_space~2\ : arriaii_lcell_comb
-- Equation(s):
-- \vacated_space~2_combout\ = ( \LessThan6~4_combout\ & ( \LessThan7~8_combout\ & ( (\Add9~5_sumout\ & \LessThan6~8_combout\) ) ) ) # ( !\LessThan6~4_combout\ & ( \LessThan7~8_combout\ & ( (\Add9~5_sumout\ & ((\LessThan6~8_combout\) # 
-- (\LessThan6~6_combout\))) ) ) ) # ( \LessThan6~4_combout\ & ( !\LessThan7~8_combout\ & ( (!\LessThan6~8_combout\ & (\Add11~9_sumout\)) # (\LessThan6~8_combout\ & ((\Add9~5_sumout\))) ) ) ) # ( !\LessThan6~4_combout\ & ( !\LessThan7~8_combout\ & ( 
-- (!\LessThan6~6_combout\ & ((!\LessThan6~8_combout\ & (\Add11~9_sumout\)) # (\LessThan6~8_combout\ & ((\Add9~5_sumout\))))) # (\LessThan6~6_combout\ & (((\Add9~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100001111010101010000111100000011000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~9_sumout\,
	datab => \ALT_INV_LessThan6~6_combout\,
	datac => \ALT_INV_Add9~5_sumout\,
	datad => \ALT_INV_LessThan6~8_combout\,
	datae => \ALT_INV_LessThan6~4_combout\,
	dataf => \ALT_INV_LessThan7~8_combout\,
	combout => \vacated_space~2_combout\);

-- Location: LABCELL_X30_Y30_N8
\vacated_space~3\ : arriaii_lcell_comb
-- Equation(s):
-- \vacated_space~3_combout\ = ( \Add9~9_sumout\ & ( \LessThan7~8_combout\ & ( ((!\LessThan6~4_combout\ & \LessThan6~6DUPLICATE_combout\)) # (\LessThan6~8_combout\) ) ) ) # ( \Add9~9_sumout\ & ( !\LessThan7~8_combout\ & ( (((!\LessThan6~4_combout\ & 
-- \LessThan6~6DUPLICATE_combout\)) # (\Add11~13_sumout\)) # (\LessThan6~8_combout\) ) ) ) # ( !\Add9~9_sumout\ & ( !\LessThan7~8_combout\ & ( (!\LessThan6~8_combout\ & (\Add11~13_sumout\ & ((!\LessThan6~6DUPLICATE_combout\) # (\LessThan6~4_combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100010010111011111111100000000000000000101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~8_combout\,
	datab => \ALT_INV_LessThan6~4_combout\,
	datac => \ALT_INV_LessThan6~6DUPLICATE_combout\,
	datad => \ALT_INV_Add11~13_sumout\,
	datae => \ALT_INV_Add9~9_sumout\,
	dataf => \ALT_INV_LessThan7~8_combout\,
	combout => \vacated_space~3_combout\);

-- Location: LABCELL_X30_Y29_N30
\vacated_space~4\ : arriaii_lcell_comb
-- Equation(s):
-- \vacated_space~4_combout\ = ( \Add9~13_sumout\ & ( \Add11~17_sumout\ & ( ((!\LessThan7~8_combout\) # ((!\LessThan6~4_combout\ & \LessThan6~6_combout\))) # (\LessThan6~8_combout\) ) ) ) # ( !\Add9~13_sumout\ & ( \Add11~17_sumout\ & ( 
-- (!\LessThan6~8_combout\ & (!\LessThan7~8_combout\ & ((!\LessThan6~6_combout\) # (\LessThan6~4_combout\)))) ) ) ) # ( \Add9~13_sumout\ & ( !\Add11~17_sumout\ & ( ((!\LessThan6~4_combout\ & \LessThan6~6_combout\)) # (\LessThan6~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111010101110110100010000000001111111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~8_combout\,
	datab => \ALT_INV_LessThan6~4_combout\,
	datac => \ALT_INV_LessThan6~6_combout\,
	datad => \ALT_INV_LessThan7~8_combout\,
	datae => \ALT_INV_Add9~13_sumout\,
	dataf => \ALT_INV_Add11~17_sumout\,
	combout => \vacated_space~4_combout\);

-- Location: LABCELL_X30_Y29_N26
\vacated_space~5\ : arriaii_lcell_comb
-- Equation(s):
-- \vacated_space~5_combout\ = ( \Add9~17_sumout\ & ( \Add11~21_sumout\ & ( (!\LessThan7~8_combout\) # (((\LessThan6~6_combout\ & !\LessThan6~4_combout\)) # (\LessThan6~8_combout\)) ) ) ) # ( !\Add9~17_sumout\ & ( \Add11~21_sumout\ & ( 
-- (!\LessThan7~8_combout\ & (!\LessThan6~8_combout\ & ((!\LessThan6~6_combout\) # (\LessThan6~4_combout\)))) ) ) ) # ( \Add9~17_sumout\ & ( !\Add11~21_sumout\ & ( ((\LessThan6~6_combout\ & !\LessThan6~4_combout\)) # (\LessThan6~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111111110001010000000001011101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan7~8_combout\,
	datab => \ALT_INV_LessThan6~6_combout\,
	datac => \ALT_INV_LessThan6~4_combout\,
	datad => \ALT_INV_LessThan6~8_combout\,
	datae => \ALT_INV_Add9~17_sumout\,
	dataf => \ALT_INV_Add11~21_sumout\,
	combout => \vacated_space~5_combout\);

-- Location: LABCELL_X30_Y29_N24
\vacated_space~6\ : arriaii_lcell_comb
-- Equation(s):
-- \vacated_space~6_combout\ = ( \Add9~21_sumout\ & ( \Add11~25_sumout\ & ( (!\LessThan7~8_combout\) # (((\LessThan6~6_combout\ & !\LessThan6~4_combout\)) # (\LessThan6~8_combout\)) ) ) ) # ( !\Add9~21_sumout\ & ( \Add11~25_sumout\ & ( 
-- (!\LessThan7~8_combout\ & (!\LessThan6~8_combout\ & ((!\LessThan6~6_combout\) # (\LessThan6~4_combout\)))) ) ) ) # ( \Add9~21_sumout\ & ( !\Add11~25_sumout\ & ( ((\LessThan6~6_combout\ & !\LessThan6~4_combout\)) # (\LessThan6~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000111110000000101000001011111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan7~8_combout\,
	datab => \ALT_INV_LessThan6~6_combout\,
	datac => \ALT_INV_LessThan6~8_combout\,
	datad => \ALT_INV_LessThan6~4_combout\,
	datae => \ALT_INV_Add9~21_sumout\,
	dataf => \ALT_INV_Add11~25_sumout\,
	combout => \vacated_space~6_combout\);

-- Location: LABCELL_X30_Y29_N34
\vacated_space~7\ : arriaii_lcell_comb
-- Equation(s):
-- \vacated_space~7_combout\ = ( \Add9~25_sumout\ & ( \Add11~29_sumout\ & ( ((!\LessThan7~8_combout\) # ((\LessThan6~6_combout\ & !\LessThan6~4_combout\))) # (\LessThan6~8_combout\) ) ) ) # ( !\Add9~25_sumout\ & ( \Add11~29_sumout\ & ( 
-- (!\LessThan6~8_combout\ & (!\LessThan7~8_combout\ & ((!\LessThan6~6_combout\) # (\LessThan6~4_combout\)))) ) ) ) # ( \Add9~25_sumout\ & ( !\Add11~29_sumout\ & ( ((\LessThan6~6_combout\ & !\LessThan6~4_combout\)) # (\LessThan6~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101010111010110001010000000001111111101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~8_combout\,
	datab => \ALT_INV_LessThan6~6_combout\,
	datac => \ALT_INV_LessThan6~4_combout\,
	datad => \ALT_INV_LessThan7~8_combout\,
	datae => \ALT_INV_Add9~25_sumout\,
	dataf => \ALT_INV_Add11~29_sumout\,
	combout => \vacated_space~7_combout\);

-- Location: LABCELL_X30_Y29_N28
\vacated_space~8\ : arriaii_lcell_comb
-- Equation(s):
-- \vacated_space~8_combout\ = ( \Add9~29_sumout\ & ( \Add11~33_sumout\ & ( ((!\LessThan7~8_combout\) # ((!\LessThan6~4_combout\ & \LessThan6~6_combout\))) # (\LessThan6~8_combout\) ) ) ) # ( !\Add9~29_sumout\ & ( \Add11~33_sumout\ & ( 
-- (!\LessThan6~8_combout\ & (!\LessThan7~8_combout\ & ((!\LessThan6~6_combout\) # (\LessThan6~4_combout\)))) ) ) ) # ( \Add9~29_sumout\ & ( !\Add11~33_sumout\ & ( ((!\LessThan6~4_combout\ & \LessThan6~6_combout\)) # (\LessThan6~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011101110110100000001000001111010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~8_combout\,
	datab => \ALT_INV_LessThan6~4_combout\,
	datac => \ALT_INV_LessThan7~8_combout\,
	datad => \ALT_INV_LessThan6~6_combout\,
	datae => \ALT_INV_Add9~29_sumout\,
	dataf => \ALT_INV_Add11~33_sumout\,
	combout => \vacated_space~8_combout\);

-- Location: LABCELL_X30_Y30_N36
\vacated_space~9\ : arriaii_lcell_comb
-- Equation(s):
-- \vacated_space~9_combout\ = ( \LessThan6~4_combout\ & ( \LessThan7~8_combout\ & ( (\LessThan6~8_combout\ & \Add9~33_sumout\) ) ) ) # ( !\LessThan6~4_combout\ & ( \LessThan7~8_combout\ & ( (\Add9~33_sumout\ & ((\LessThan6~6DUPLICATE_combout\) # 
-- (\LessThan6~8_combout\))) ) ) ) # ( \LessThan6~4_combout\ & ( !\LessThan7~8_combout\ & ( (!\LessThan6~8_combout\ & ((\Add11~37_sumout\))) # (\LessThan6~8_combout\ & (\Add9~33_sumout\)) ) ) ) # ( !\LessThan6~4_combout\ & ( !\LessThan7~8_combout\ & ( 
-- (!\LessThan6~8_combout\ & ((!\LessThan6~6DUPLICATE_combout\ & ((\Add11~37_sumout\))) # (\LessThan6~6DUPLICATE_combout\ & (\Add9~33_sumout\)))) # (\LessThan6~8_combout\ & (\Add9~33_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001110110011000100011011101100010011000100110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~8_combout\,
	datab => \ALT_INV_Add9~33_sumout\,
	datac => \ALT_INV_LessThan6~6DUPLICATE_combout\,
	datad => \ALT_INV_Add11~37_sumout\,
	datae => \ALT_INV_LessThan6~4_combout\,
	dataf => \ALT_INV_LessThan7~8_combout\,
	combout => \vacated_space~9_combout\);

-- Location: LABCELL_X30_Y30_N34
\vacated_space~10\ : arriaii_lcell_comb
-- Equation(s):
-- \vacated_space~10_combout\ = ( \Add11~41_sumout\ & ( \LessThan7~8_combout\ & ( (!\Add9~37_sumout\ & (((\LessThan6~6_combout\ & !\LessThan6~4_combout\)) # (\LessThan6~8_combout\))) ) ) ) # ( !\Add11~41_sumout\ & ( \LessThan7~8_combout\ & ( 
-- (!\Add9~37_sumout\ & (((\LessThan6~6_combout\ & !\LessThan6~4_combout\)) # (\LessThan6~8_combout\))) ) ) ) # ( \Add11~41_sumout\ & ( !\LessThan7~8_combout\ & ( (!\Add9~37_sumout\) # ((!\LessThan6~8_combout\ & ((!\LessThan6~6_combout\) # 
-- (\LessThan6~4_combout\)))) ) ) ) # ( !\Add11~41_sumout\ & ( !\LessThan7~8_combout\ & ( (!\Add9~37_sumout\ & (((\LessThan6~6_combout\ & !\LessThan6~4_combout\)) # (\LessThan6~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101010111011111010101000100000101010100010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~37_sumout\,
	datab => \ALT_INV_LessThan6~6_combout\,
	datac => \ALT_INV_LessThan6~4_combout\,
	datad => \ALT_INV_LessThan6~8_combout\,
	datae => \ALT_INV_Add11~41_sumout\,
	dataf => \ALT_INV_LessThan7~8_combout\,
	combout => \vacated_space~10_combout\);

-- Location: LABCELL_X32_Y31_N32
\LessThan4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ( \Add9~21_sumout\ & ( \Add9~29_sumout\ & ( \Add9~37_sumout\ ) ) ) # ( !\Add9~21_sumout\ & ( \Add9~29_sumout\ & ( \Add9~37_sumout\ ) ) ) # ( \Add9~21_sumout\ & ( !\Add9~29_sumout\ & ( \Add9~37_sumout\ ) ) ) # ( !\Add9~21_sumout\ & 
-- ( !\Add9~29_sumout\ & ( (\Add9~37_sumout\ & ((!\LessThan4~0_combout\) # ((\Add9~25_sumout\) # (\Add9~33_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~37_sumout\,
	datab => \ALT_INV_LessThan4~0_combout\,
	datac => \ALT_INV_Add9~33_sumout\,
	datad => \ALT_INV_Add9~25_sumout\,
	datae => \ALT_INV_Add9~21_sumout\,
	dataf => \ALT_INV_Add9~29_sumout\,
	combout => \LessThan4~1_combout\);

-- Location: MLABCELL_X31_Y29_N36
\LessThan6~16\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan6~16_combout\ = ( !\LessThan6~15_combout\ & ( \LessThan6~9_combout\ & ( (!\LessThan6~7_combout\ & (((!\LessThan6~10_combout\ & !\LessThan6~14_combout\)) # (\LessThan6~5_combout\))) ) ) ) # ( !\LessThan6~15_combout\ & ( !\LessThan6~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~5_combout\,
	datab => \ALT_INV_LessThan6~10_combout\,
	datac => \ALT_INV_LessThan6~14_combout\,
	datad => \ALT_INV_LessThan6~7_combout\,
	datae => \ALT_INV_LessThan6~15_combout\,
	dataf => \ALT_INV_LessThan6~9_combout\,
	combout => \LessThan6~16_combout\);

-- Location: LABCELL_X30_Y30_N20
\LessThan5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = ( \Add9~37_sumout\ & ( \LessThan7~8_combout\ & ( (!\LessThan4~3_combout\ & !\LessThan6~16_combout\) ) ) ) # ( \Add9~37_sumout\ & ( !\LessThan7~8_combout\ & ( (!\LessThan6~16_combout\ & (!\LessThan4~3_combout\)) # 
-- (\LessThan6~16_combout\ & (((!\LessThan5~1_combout\ & !\Add11~41_sumout\)))) ) ) ) # ( !\Add9~37_sumout\ & ( !\LessThan7~8_combout\ & ( (\LessThan6~16_combout\ & (!\LessThan5~1_combout\ & !\Add11~41_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000101110001000100000000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan4~3_combout\,
	datab => \ALT_INV_LessThan6~16_combout\,
	datac => \ALT_INV_LessThan5~1_combout\,
	datad => \ALT_INV_Add11~41_sumout\,
	datae => \ALT_INV_Add9~37_sumout\,
	dataf => \ALT_INV_LessThan7~8_combout\,
	combout => \LessThan5~2_combout\);

ww_uni_parked_car(0) <= \uni_parked_car[0]~output_o\;

ww_uni_parked_car(1) <= \uni_parked_car[1]~output_o\;

ww_uni_parked_car(2) <= \uni_parked_car[2]~output_o\;

ww_uni_parked_car(3) <= \uni_parked_car[3]~output_o\;

ww_uni_parked_car(4) <= \uni_parked_car[4]~output_o\;

ww_uni_parked_car(5) <= \uni_parked_car[5]~output_o\;

ww_uni_parked_car(6) <= \uni_parked_car[6]~output_o\;

ww_uni_parked_car(7) <= \uni_parked_car[7]~output_o\;

ww_uni_parked_car(8) <= \uni_parked_car[8]~output_o\;

ww_uni_parked_car(9) <= \uni_parked_car[9]~output_o\;

ww_uni_parked_car(10) <= \uni_parked_car[10]~output_o\;

ww_parked_car(0) <= \parked_car[0]~output_o\;

ww_parked_car(1) <= \parked_car[1]~output_o\;

ww_parked_car(2) <= \parked_car[2]~output_o\;

ww_parked_car(3) <= \parked_car[3]~output_o\;

ww_parked_car(4) <= \parked_car[4]~output_o\;

ww_parked_car(5) <= \parked_car[5]~output_o\;

ww_parked_car(6) <= \parked_car[6]~output_o\;

ww_parked_car(7) <= \parked_car[7]~output_o\;

ww_parked_car(8) <= \parked_car[8]~output_o\;

ww_parked_car(9) <= \parked_car[9]~output_o\;

ww_parked_car(10) <= \parked_car[10]~output_o\;

ww_uni_vacated_space(0) <= \uni_vacated_space[0]~output_o\;

ww_uni_vacated_space(1) <= \uni_vacated_space[1]~output_o\;

ww_uni_vacated_space(2) <= \uni_vacated_space[2]~output_o\;

ww_uni_vacated_space(3) <= \uni_vacated_space[3]~output_o\;

ww_uni_vacated_space(4) <= \uni_vacated_space[4]~output_o\;

ww_uni_vacated_space(5) <= \uni_vacated_space[5]~output_o\;

ww_uni_vacated_space(6) <= \uni_vacated_space[6]~output_o\;

ww_uni_vacated_space(7) <= \uni_vacated_space[7]~output_o\;

ww_uni_vacated_space(8) <= \uni_vacated_space[8]~output_o\;

ww_uni_vacated_space(9) <= \uni_vacated_space[9]~output_o\;

ww_uni_vacated_space(10) <= \uni_vacated_space[10]~output_o\;

ww_vacated_space(0) <= \vacated_space[0]~output_o\;

ww_vacated_space(1) <= \vacated_space[1]~output_o\;

ww_vacated_space(2) <= \vacated_space[2]~output_o\;

ww_vacated_space(3) <= \vacated_space[3]~output_o\;

ww_vacated_space(4) <= \vacated_space[4]~output_o\;

ww_vacated_space(5) <= \vacated_space[5]~output_o\;

ww_vacated_space(6) <= \vacated_space[6]~output_o\;

ww_vacated_space(7) <= \vacated_space[7]~output_o\;

ww_vacated_space(8) <= \vacated_space[8]~output_o\;

ww_vacated_space(9) <= \vacated_space[9]~output_o\;

ww_vacated_space(10) <= \vacated_space[10]~output_o\;

ww_uni_is_vacated_space <= \uni_is_vacated_space~output_o\;

ww_is_vacated_space <= \is_vacated_space~output_o\;
END structure;


