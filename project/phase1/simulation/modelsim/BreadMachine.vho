-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/01/2023 16:15:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BreadMachine IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(2 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END BreadMachine;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BreadMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsm|s_currentState.DELAY~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \timerOfDelay|s_counter[0]~8_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \debounceUnit|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debounceUnit|s_dirtyIn~q\ : std_logic;
SIGNAL \debounceUnit|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \debounceUnit|s_previousIn~q\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[1]~4_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[3]~5_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[3]~6_combout\ : std_logic;
SIGNAL \debounceUnit|LessThan0~0_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[2]~1_combout\ : std_logic;
SIGNAL \debounceUnit|Add0~0_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[2]~3_combout\ : std_logic;
SIGNAL \debounceUnit|s_debounceCnt[3]~0_combout\ : std_logic;
SIGNAL \debounceUnit|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounceUnit|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounceUnit|s_pulsedOut~q\ : std_logic;
SIGNAL \toggleSwitch|current_state~0_combout\ : std_logic;
SIGNAL \toggleSwitch|current_state~feeder_combout\ : std_logic;
SIGNAL \toggleSwitch|current_state~q\ : std_logic;
SIGNAL \fsm|s_currentState~8_combout\ : std_logic;
SIGNAL \fsm|s_currentState~9_combout\ : std_logic;
SIGNAL \fsm|s_currentState.STANDBY~q\ : std_logic;
SIGNAL \clkDivider|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[10]~47\ : std_logic;
SIGNAL \clkDivider|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[11]~49\ : std_logic;
SIGNAL \clkDivider|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[12]~51\ : std_logic;
SIGNAL \clkDivider|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[13]~53\ : std_logic;
SIGNAL \clkDivider|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[14]~55\ : std_logic;
SIGNAL \clkDivider|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[15]~57\ : std_logic;
SIGNAL \clkDivider|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[16]~59\ : std_logic;
SIGNAL \clkDivider|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[17]~61\ : std_logic;
SIGNAL \clkDivider|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[18]~63\ : std_logic;
SIGNAL \clkDivider|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~2_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~3_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~1_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~4_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~5_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[19]~65\ : std_logic;
SIGNAL \clkDivider|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[20]~67\ : std_logic;
SIGNAL \clkDivider|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[21]~69\ : std_logic;
SIGNAL \clkDivider|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[22]~71\ : std_logic;
SIGNAL \clkDivider|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~0_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[23]~73\ : std_logic;
SIGNAL \clkDivider|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[24]~75\ : std_logic;
SIGNAL \clkDivider|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~6_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[0]~27\ : std_logic;
SIGNAL \clkDivider|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[1]~29\ : std_logic;
SIGNAL \clkDivider|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[2]~31\ : std_logic;
SIGNAL \clkDivider|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[3]~33\ : std_logic;
SIGNAL \clkDivider|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[4]~35\ : std_logic;
SIGNAL \clkDivider|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[5]~37\ : std_logic;
SIGNAL \clkDivider|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[6]~39\ : std_logic;
SIGNAL \clkDivider|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[7]~41\ : std_logic;
SIGNAL \clkDivider|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[8]~43\ : std_logic;
SIGNAL \clkDivider|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[9]~45\ : std_logic;
SIGNAL \clkDivider|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~0_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~1_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~5_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~6_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~4_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~7_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~3_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~2_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~8_combout\ : std_logic;
SIGNAL \clkDivider|pulseOut~q\ : std_logic;
SIGNAL \timerOfFSM|s_counter[3]~11_combout\ : std_logic;
SIGNAL \timerOfFSM|s_counter[0]~8_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[0]~21_combout\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[1]~7_combout\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[1]~8\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[2]~9_combout\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[2]~10\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[3]~11_combout\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[3]~12\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[4]~13_combout\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[4]~14\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[5]~15_combout\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[5]~16\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[6]~17_combout\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[6]~18\ : std_logic;
SIGNAL \keyLoggerDelay|s_count[7]~19_combout\ : std_logic;
SIGNAL \keyLoggerDelay|Equal0~0_combout\ : std_logic;
SIGNAL \keyLoggerDelay|Equal0~1_combout\ : std_logic;
SIGNAL \keyLoggerDelay|process_0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[0]~21_combout\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[1]~7_combout\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[1]~8\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[2]~9_combout\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[2]~10\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[3]~11_combout\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[3]~12\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[4]~13_combout\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[4]~14\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[5]~15_combout\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[5]~16\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[6]~17_combout\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[6]~18\ : std_logic;
SIGNAL \keyLoggerAdjust|s_count[7]~19_combout\ : std_logic;
SIGNAL \keyLoggerAdjust|Equal0~0_combout\ : std_logic;
SIGNAL \keyLoggerAdjust|Equal0~1_combout\ : std_logic;
SIGNAL \keyLoggerAdjust|process_0~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \fsm|Add2~0_combout\ : std_logic;
SIGNAL \fsm|Add3~0_combout\ : std_logic;
SIGNAL \timerOfFSM|s_counter~10_combout\ : std_logic;
SIGNAL \timerOfFSM|Equal0~1_combout\ : std_logic;
SIGNAL \timerOfFSM|s_counter[3]~12_combout\ : std_logic;
SIGNAL \timerOfFSM|s_counter[0]~9\ : std_logic;
SIGNAL \timerOfFSM|s_counter[1]~13_combout\ : std_logic;
SIGNAL \fsm|Add2~1\ : std_logic;
SIGNAL \fsm|Add2~2_combout\ : std_logic;
SIGNAL \fsm|Add3~1\ : std_logic;
SIGNAL \fsm|Add3~2_combout\ : std_logic;
SIGNAL \timerOfFSM|s_counter[1]~14\ : std_logic;
SIGNAL \timerOfFSM|s_counter[2]~15_combout\ : std_logic;
SIGNAL \regInput|leaven_Time[1]~0_combout\ : std_logic;
SIGNAL \fsm|Add0~0_combout\ : std_logic;
SIGNAL \fsm|Add2~3\ : std_logic;
SIGNAL \fsm|Add2~4_combout\ : std_logic;
SIGNAL \fsm|Add3~3\ : std_logic;
SIGNAL \fsm|Add3~4_combout\ : std_logic;
SIGNAL \timerOfFSM|s_counter[2]~16\ : std_logic;
SIGNAL \timerOfFSM|s_counter[3]~17_combout\ : std_logic;
SIGNAL \fsm|Add1~0_combout\ : std_logic;
SIGNAL \fsm|Add2~5\ : std_logic;
SIGNAL \fsm|Add2~6_combout\ : std_logic;
SIGNAL \fsm|Add3~5\ : std_logic;
SIGNAL \fsm|Add3~6_combout\ : std_logic;
SIGNAL \timerOfFSM|s_counter[3]~18\ : std_logic;
SIGNAL \timerOfFSM|s_counter[4]~19_combout\ : std_logic;
SIGNAL \fsm|Add2~7\ : std_logic;
SIGNAL \fsm|Add2~8_combout\ : std_logic;
SIGNAL \fsm|Add3~7\ : std_logic;
SIGNAL \fsm|Add3~8_combout\ : std_logic;
SIGNAL \timerOfFSM|s_counter[4]~20\ : std_logic;
SIGNAL \timerOfFSM|s_counter[5]~21_combout\ : std_logic;
SIGNAL \fsm|Add2~9\ : std_logic;
SIGNAL \fsm|Add2~10_combout\ : std_logic;
SIGNAL \fsm|Add3~9\ : std_logic;
SIGNAL \fsm|Add3~10_combout\ : std_logic;
SIGNAL \timerOfFSM|s_counter[5]~22\ : std_logic;
SIGNAL \timerOfFSM|s_counter[6]~23_combout\ : std_logic;
SIGNAL \fsm|Add2~11\ : std_logic;
SIGNAL \fsm|Add2~12_combout\ : std_logic;
SIGNAL \fsm|Add3~11\ : std_logic;
SIGNAL \fsm|Add3~12_combout\ : std_logic;
SIGNAL \timerOfFSM|s_counter[6]~24\ : std_logic;
SIGNAL \timerOfFSM|s_counter[7]~25_combout\ : std_logic;
SIGNAL \fsm|Add2~13\ : std_logic;
SIGNAL \fsm|Add2~14_combout\ : std_logic;
SIGNAL \fsm|Add3~13\ : std_logic;
SIGNAL \fsm|Add3~14_combout\ : std_logic;
SIGNAL \timerOfFSM|Equal0~0_combout\ : std_logic;
SIGNAL \timerOfFSM|s_cntZero~0_combout\ : std_logic;
SIGNAL \timerOfFSM|s_cntZero~1_combout\ : std_logic;
SIGNAL \timerOfFSM|s_cntZero~q\ : std_logic;
SIGNAL \fsm|Add4~1\ : std_logic;
SIGNAL \fsm|Add4~3\ : std_logic;
SIGNAL \fsm|Add4~5\ : std_logic;
SIGNAL \fsm|Add4~7\ : std_logic;
SIGNAL \fsm|Add4~9\ : std_logic;
SIGNAL \fsm|Add4~11\ : std_logic;
SIGNAL \fsm|Add4~12_combout\ : std_logic;
SIGNAL \fsm|Add4~13\ : std_logic;
SIGNAL \fsm|Add4~14_combout\ : std_logic;
SIGNAL \fsm|Equal0~3_combout\ : std_logic;
SIGNAL \fsm|Add4~2_combout\ : std_logic;
SIGNAL \fsm|Add4~0_combout\ : std_logic;
SIGNAL \fsm|Equal0~0_combout\ : std_logic;
SIGNAL \fsm|Add4~4_combout\ : std_logic;
SIGNAL \fsm|Add4~6_combout\ : std_logic;
SIGNAL \fsm|Equal0~1_combout\ : std_logic;
SIGNAL \fsm|Add4~10_combout\ : std_logic;
SIGNAL \fsm|Add4~8_combout\ : std_logic;
SIGNAL \fsm|Equal0~2_combout\ : std_logic;
SIGNAL \fsm|Equal0~4_combout\ : std_logic;
SIGNAL \fsm|Add5~1_cout\ : std_logic;
SIGNAL \fsm|Add5~3\ : std_logic;
SIGNAL \fsm|Add5~5\ : std_logic;
SIGNAL \fsm|Add5~7\ : std_logic;
SIGNAL \fsm|Add5~8_combout\ : std_logic;
SIGNAL \fsm|Add5~6_combout\ : std_logic;
SIGNAL \fsm|Add5~4_combout\ : std_logic;
SIGNAL \fsm|Add5~2_combout\ : std_logic;
SIGNAL \fsm|Add6~1\ : std_logic;
SIGNAL \fsm|Add6~3\ : std_logic;
SIGNAL \fsm|Add6~5\ : std_logic;
SIGNAL \fsm|Add6~7\ : std_logic;
SIGNAL \fsm|Add6~8_combout\ : std_logic;
SIGNAL \fsm|Add5~9\ : std_logic;
SIGNAL \fsm|Add5~10_combout\ : std_logic;
SIGNAL \fsm|Add6~9\ : std_logic;
SIGNAL \fsm|Add6~10_combout\ : std_logic;
SIGNAL \fsm|Equal1~2_combout\ : std_logic;
SIGNAL \fsm|Add6~0_combout\ : std_logic;
SIGNAL \fsm|Add6~2_combout\ : std_logic;
SIGNAL \fsm|Equal1~0_combout\ : std_logic;
SIGNAL \fsm|Add6~4_combout\ : std_logic;
SIGNAL \fsm|Add6~6_combout\ : std_logic;
SIGNAL \fsm|Equal1~1_combout\ : std_logic;
SIGNAL \fsm|Add5~11\ : std_logic;
SIGNAL \fsm|Add5~12_combout\ : std_logic;
SIGNAL \fsm|Add6~11\ : std_logic;
SIGNAL \fsm|Add6~12_combout\ : std_logic;
SIGNAL \fsm|Add5~13\ : std_logic;
SIGNAL \fsm|Add5~14_combout\ : std_logic;
SIGNAL \fsm|Add6~13\ : std_logic;
SIGNAL \fsm|Add6~14_combout\ : std_logic;
SIGNAL \fsm|Equal1~3_combout\ : std_logic;
SIGNAL \fsm|Equal1~4_combout\ : std_logic;
SIGNAL \fsm|Selector13~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.DELAY~q\ : std_logic;
SIGNAL \fsm|Selector14~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.CRUMPLE~q\ : std_logic;
SIGNAL \fsm|Add7~1_cout\ : std_logic;
SIGNAL \fsm|Add7~3\ : std_logic;
SIGNAL \fsm|Add7~4_combout\ : std_logic;
SIGNAL \fsm|Add7~5\ : std_logic;
SIGNAL \fsm|Add7~7\ : std_logic;
SIGNAL \fsm|Add7~8_combout\ : std_logic;
SIGNAL \fsm|Add7~6_combout\ : std_logic;
SIGNAL \fsm|Equal2~0_combout\ : std_logic;
SIGNAL \fsm|Add7~2_combout\ : std_logic;
SIGNAL \fsm|Equal2~1_combout\ : std_logic;
SIGNAL \fsm|Add7~9\ : std_logic;
SIGNAL \fsm|Add7~11\ : std_logic;
SIGNAL \fsm|Add7~12_combout\ : std_logic;
SIGNAL \fsm|Add7~13\ : std_logic;
SIGNAL \fsm|Add7~14_combout\ : std_logic;
SIGNAL \fsm|Add7~10_combout\ : std_logic;
SIGNAL \fsm|Equal2~2_combout\ : std_logic;
SIGNAL \fsm|Equal2~3_combout\ : std_logic;
SIGNAL \fsm|Equal2~4_combout\ : std_logic;
SIGNAL \fsm|Selector15~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.LEAVEN~q\ : std_logic;
SIGNAL \fsm|Selector16~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.COOK~feeder_combout\ : std_logic;
SIGNAL \fsm|s_currentState.COOK~q\ : std_logic;
SIGNAL \fsm|Selector17~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.FINISH~q\ : std_logic;
SIGNAL \fsm|Selector10~0_combout\ : std_logic;
SIGNAL \fsm|delayNewTime~combout\ : std_logic;
SIGNAL \timerOfDelay|s_counter[7]~10_combout\ : std_logic;
SIGNAL \timerOfDelay|Equal0~0_combout\ : std_logic;
SIGNAL \timerOfDelay|s_counter[7]~11_combout\ : std_logic;
SIGNAL \fsm|Selector0~0_combout\ : std_logic;
SIGNAL \fsm|Selector0~1_combout\ : std_logic;
SIGNAL \fsm|delay_enable~combout\ : std_logic;
SIGNAL \timerOfDelay|s_counter[7]~12_combout\ : std_logic;
SIGNAL \timerOfDelay|s_counter[0]~9\ : std_logic;
SIGNAL \timerOfDelay|s_counter[1]~13_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \timerOfDelay|s_counter[1]~14\ : std_logic;
SIGNAL \timerOfDelay|s_counter[2]~15_combout\ : std_logic;
SIGNAL \timerOfDelay|s_counter[2]~16\ : std_logic;
SIGNAL \timerOfDelay|s_counter[3]~17_combout\ : std_logic;
SIGNAL \timerOfDelay|s_counter[3]~18\ : std_logic;
SIGNAL \timerOfDelay|s_counter[4]~19_combout\ : std_logic;
SIGNAL \timerOfDelay|s_counter[4]~20\ : std_logic;
SIGNAL \timerOfDelay|s_counter[5]~21_combout\ : std_logic;
SIGNAL \timerOfDelay|s_counter[5]~22\ : std_logic;
SIGNAL \timerOfDelay|s_counter[6]~23_combout\ : std_logic;
SIGNAL \timerOfDelay|s_counter[6]~24\ : std_logic;
SIGNAL \timerOfDelay|s_counter[7]~25_combout\ : std_logic;
SIGNAL \timerOfDelay|Equal0~1_combout\ : std_logic;
SIGNAL \timerOfDelay|s_cntZero~0_combout\ : std_logic;
SIGNAL \timerOfDelay|s_cntZero~1_combout\ : std_logic;
SIGNAL \timerOfDelay|s_cntZero~q\ : std_logic;
SIGNAL \fsm|Selector3~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.DELAY~clkctrl_outclk\ : std_logic;
SIGNAL \fsm|led~combout\ : std_logic;
SIGNAL \fsm|WideOr1~combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \timeToDisplay|Add1~0_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \timeToDisplay|Add1~1_combout\ : std_logic;
SIGNAL \timeToDisplay|Add1~3_combout\ : std_logic;
SIGNAL \timeToDisplay|Add1~4_combout\ : std_logic;
SIGNAL \timeToDisplay|Add1~2_combout\ : std_logic;
SIGNAL \display0|Mux6~0_combout\ : std_logic;
SIGNAL \display0|Mux5~0_combout\ : std_logic;
SIGNAL \display0|Mux4~0_combout\ : std_logic;
SIGNAL \display0|Mux3~0_combout\ : std_logic;
SIGNAL \display0|Mux2~0_combout\ : std_logic;
SIGNAL \display0|Mux1~0_combout\ : std_logic;
SIGNAL \display0|Mux0~0_combout\ : std_logic;
SIGNAL \display1|Mux6~0_combout\ : std_logic;
SIGNAL \display1|Mux5~0_combout\ : std_logic;
SIGNAL \display1|Mux4~0_combout\ : std_logic;
SIGNAL \display1|Mux3~0_combout\ : std_logic;
SIGNAL \display1|Mux2~0_combout\ : std_logic;
SIGNAL \display1|Mux1~0_combout\ : std_logic;
SIGNAL \display1|Mux0~0_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Add1~0_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Add1~3_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Add1~4_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Add1~1_combout\ : std_logic;
SIGNAL \timeAdjustToDisplay|Add1~2_combout\ : std_logic;
SIGNAL \display4|Mux6~0_combout\ : std_logic;
SIGNAL \display4|Mux5~0_combout\ : std_logic;
SIGNAL \display4|Mux4~0_combout\ : std_logic;
SIGNAL \display4|Mux3~0_combout\ : std_logic;
SIGNAL \display4|Mux2~0_combout\ : std_logic;
SIGNAL \display4|Mux1~0_combout\ : std_logic;
SIGNAL \display4|Mux0~0_combout\ : std_logic;
SIGNAL \fsm|ledg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \timerOfDelay|s_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clkDivider|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \keyLoggerDelay|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \timerOfFSM|s_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \keyLoggerAdjust|s_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \debounceUnit|s_debounceCnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \romLeaven|dataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regInput|crumple_Time\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \romCrumple|dataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regInput|leaven_Time\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \keyLoggerDelay|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \keyLoggerAdjust|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \display4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display0|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX4 <= ww_HEX4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\fsm|s_currentState.DELAY~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fsm|s_currentState.DELAY~q\);
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\keyLoggerDelay|ALT_INV_process_0~0_combout\ <= NOT \keyLoggerDelay|process_0~0_combout\;
\keyLoggerAdjust|ALT_INV_process_0~0_combout\ <= NOT \keyLoggerAdjust|process_0~0_combout\;
\display4|ALT_INV_Mux0~0_combout\ <= NOT \display4|Mux0~0_combout\;
\display1|ALT_INV_Mux0~0_combout\ <= NOT \display1|Mux0~0_combout\;
\display0|ALT_INV_Mux0~0_combout\ <= NOT \display0|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|led~combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ledg\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ledg\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|ledg\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X103_Y40_N12
\timerOfDelay|s_counter[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_counter[0]~8_combout\ = \timerOfDelay|s_counter\(0) $ (VCC)
-- \timerOfDelay|s_counter[0]~9\ = CARRY(\timerOfDelay|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfDelay|s_counter\(0),
	datad => VCC,
	combout => \timerOfDelay|s_counter[0]~8_combout\,
	cout => \timerOfDelay|s_counter[0]~9\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X109_Y47_N24
\debounceUnit|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \debounceUnit|s_dirtyIn~0_combout\);

-- Location: FF_X109_Y47_N25
\debounceUnit|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_dirtyIn~q\);

-- Location: LCCOMB_X109_Y47_N18
\debounceUnit|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_previousIn~feeder_combout\ = \debounceUnit|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debounceUnit|s_dirtyIn~q\,
	combout => \debounceUnit|s_previousIn~feeder_combout\);

-- Location: FF_X109_Y47_N19
\debounceUnit|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_previousIn~q\);

-- Location: LCCOMB_X109_Y47_N30
\debounceUnit|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[0]~2_combout\ = (\debounceUnit|s_debounceCnt[2]~1_combout\ & (!\debounceUnit|s_debounceCnt\(0) & \debounceUnit|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt[2]~1_combout\,
	datac => \debounceUnit|s_debounceCnt\(0),
	datad => \debounceUnit|s_previousIn~q\,
	combout => \debounceUnit|s_debounceCnt[0]~2_combout\);

-- Location: FF_X109_Y47_N31
\debounceUnit|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(0));

-- Location: LCCOMB_X109_Y47_N8
\debounceUnit|s_debounceCnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[1]~4_combout\ = (\debounceUnit|s_debounceCnt[2]~1_combout\ & ((\debounceUnit|s_debounceCnt\(0) $ (!\debounceUnit|s_debounceCnt\(1))) # (!\debounceUnit|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(0),
	datab => \debounceUnit|s_debounceCnt[2]~1_combout\,
	datac => \debounceUnit|s_debounceCnt\(1),
	datad => \debounceUnit|s_previousIn~q\,
	combout => \debounceUnit|s_debounceCnt[1]~4_combout\);

-- Location: FF_X109_Y47_N9
\debounceUnit|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(1));

-- Location: LCCOMB_X109_Y47_N4
\debounceUnit|s_debounceCnt[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[3]~5_combout\ = (\debounceUnit|s_debounceCnt\(3) & (\debounceUnit|s_debounceCnt[3]~0_combout\ & (\debounceUnit|s_debounceCnt\(0) $ (\debounceUnit|s_debounceCnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(0),
	datab => \debounceUnit|s_debounceCnt\(3),
	datac => \debounceUnit|s_debounceCnt\(1),
	datad => \debounceUnit|s_debounceCnt[3]~0_combout\,
	combout => \debounceUnit|s_debounceCnt[3]~5_combout\);

-- Location: LCCOMB_X109_Y47_N14
\debounceUnit|s_debounceCnt[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[3]~6_combout\ = (\debounceUnit|s_dirtyIn~q\ & ((\debounceUnit|s_debounceCnt[3]~5_combout\) # ((!\debounceUnit|LessThan0~0_combout\ & !\debounceUnit|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|LessThan0~0_combout\,
	datab => \debounceUnit|s_dirtyIn~q\,
	datac => \debounceUnit|s_debounceCnt[3]~5_combout\,
	datad => \debounceUnit|s_previousIn~q\,
	combout => \debounceUnit|s_debounceCnt[3]~6_combout\);

-- Location: FF_X109_Y47_N15
\debounceUnit|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(3));

-- Location: LCCOMB_X109_Y47_N22
\debounceUnit|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|LessThan0~0_combout\ = (\debounceUnit|s_debounceCnt\(3) & ((\debounceUnit|s_debounceCnt\(2)) # ((\debounceUnit|s_debounceCnt\(0) & \debounceUnit|s_debounceCnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(0),
	datab => \debounceUnit|s_debounceCnt\(3),
	datac => \debounceUnit|s_debounceCnt\(1),
	datad => \debounceUnit|s_debounceCnt\(2),
	combout => \debounceUnit|LessThan0~0_combout\);

-- Location: LCCOMB_X109_Y47_N20
\debounceUnit|s_debounceCnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[2]~1_combout\ = (!\debounceUnit|LessThan0~0_combout\ & (\debounceUnit|s_dirtyIn~q\ & ((\debounceUnit|s_debounceCnt\(0)) # (!\debounceUnit|s_pulsedOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(0),
	datab => \debounceUnit|s_pulsedOut~0_combout\,
	datac => \debounceUnit|LessThan0~0_combout\,
	datad => \debounceUnit|s_dirtyIn~q\,
	combout => \debounceUnit|s_debounceCnt[2]~1_combout\);

-- Location: LCCOMB_X109_Y47_N26
\debounceUnit|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|Add0~0_combout\ = \debounceUnit|s_debounceCnt\(2) $ (((\debounceUnit|s_debounceCnt\(0)) # (\debounceUnit|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt\(0),
	datac => \debounceUnit|s_debounceCnt\(1),
	datad => \debounceUnit|s_debounceCnt\(2),
	combout => \debounceUnit|Add0~0_combout\);

-- Location: LCCOMB_X109_Y47_N28
\debounceUnit|s_debounceCnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[2]~3_combout\ = (\debounceUnit|s_debounceCnt[2]~1_combout\ & (!\debounceUnit|Add0~0_combout\ & \debounceUnit|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_debounceCnt[2]~1_combout\,
	datac => \debounceUnit|Add0~0_combout\,
	datad => \debounceUnit|s_previousIn~q\,
	combout => \debounceUnit|s_debounceCnt[2]~3_combout\);

-- Location: FF_X109_Y47_N29
\debounceUnit|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_debounceCnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_debounceCnt\(2));

-- Location: LCCOMB_X109_Y47_N10
\debounceUnit|s_debounceCnt[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_debounceCnt[3]~0_combout\ = (\debounceUnit|s_previousIn~q\ & !\debounceUnit|s_debounceCnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_previousIn~q\,
	datad => \debounceUnit|s_debounceCnt\(2),
	combout => \debounceUnit|s_debounceCnt[3]~0_combout\);

-- Location: LCCOMB_X109_Y47_N16
\debounceUnit|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_pulsedOut~0_combout\ = (\debounceUnit|s_debounceCnt[3]~0_combout\ & (!\debounceUnit|s_debounceCnt\(3) & (!\debounceUnit|s_debounceCnt\(1) & \debounceUnit|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceUnit|s_debounceCnt[3]~0_combout\,
	datab => \debounceUnit|s_debounceCnt\(3),
	datac => \debounceUnit|s_debounceCnt\(1),
	datad => \debounceUnit|s_dirtyIn~q\,
	combout => \debounceUnit|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X109_Y47_N12
\debounceUnit|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounceUnit|s_pulsedOut~1_combout\ = (\debounceUnit|s_pulsedOut~0_combout\ & \debounceUnit|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceUnit|s_pulsedOut~0_combout\,
	datac => \debounceUnit|s_debounceCnt\(0),
	combout => \debounceUnit|s_pulsedOut~1_combout\);

-- Location: FF_X109_Y47_N13
\debounceUnit|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounceUnit|s_pulsedOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounceUnit|s_pulsedOut~q\);

-- Location: LCCOMB_X106_Y40_N18
\toggleSwitch|current_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \toggleSwitch|current_state~0_combout\ = (!\fsm|s_currentState.FINISH~q\ & (\KEY[2]~input_o\ & (\toggleSwitch|current_state~q\ $ (\debounceUnit|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toggleSwitch|current_state~q\,
	datab => \debounceUnit|s_pulsedOut~q\,
	datac => \fsm|s_currentState.FINISH~q\,
	datad => \KEY[2]~input_o\,
	combout => \toggleSwitch|current_state~0_combout\);

-- Location: LCCOMB_X107_Y40_N20
\toggleSwitch|current_state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \toggleSwitch|current_state~feeder_combout\ = \toggleSwitch|current_state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \toggleSwitch|current_state~0_combout\,
	combout => \toggleSwitch|current_state~feeder_combout\);

-- Location: FF_X107_Y40_N21
\toggleSwitch|current_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toggleSwitch|current_state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toggleSwitch|current_state~q\);

-- Location: LCCOMB_X106_Y40_N2
\fsm|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState~8_combout\ = (\toggleSwitch|current_state~q\ & (\timerOfDelay|s_cntZero~q\ & (\fsm|s_currentState.FINISH~q\))) # (!\toggleSwitch|current_state~q\ & (((\timerOfDelay|s_cntZero~q\ & \fsm|s_currentState.FINISH~q\)) # 
-- (!\fsm|s_currentState.STANDBY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toggleSwitch|current_state~q\,
	datab => \timerOfDelay|s_cntZero~q\,
	datac => \fsm|s_currentState.FINISH~q\,
	datad => \fsm|s_currentState.STANDBY~q\,
	combout => \fsm|s_currentState~8_combout\);

-- Location: LCCOMB_X106_Y40_N10
\fsm|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState~9_combout\ = (\KEY[2]~input_o\ & !\fsm|s_currentState~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datad => \fsm|s_currentState~8_combout\,
	combout => \fsm|s_currentState~9_combout\);

-- Location: FF_X106_Y40_N11
\fsm|s_currentState.STANDBY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|s_currentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.STANDBY~q\);

-- Location: LCCOMB_X107_Y39_N6
\clkDivider|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[0]~26_combout\ = \clkDivider|s_divCounter\(0) $ (VCC)
-- \clkDivider|s_divCounter[0]~27\ = CARRY(\clkDivider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(0),
	datad => VCC,
	combout => \clkDivider|s_divCounter[0]~26_combout\,
	cout => \clkDivider|s_divCounter[0]~27\);

-- Location: LCCOMB_X107_Y39_N26
\clkDivider|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[10]~46_combout\ = (\clkDivider|s_divCounter\(10) & (\clkDivider|s_divCounter[9]~45\ $ (GND))) # (!\clkDivider|s_divCounter\(10) & (!\clkDivider|s_divCounter[9]~45\ & VCC))
-- \clkDivider|s_divCounter[10]~47\ = CARRY((\clkDivider|s_divCounter\(10) & !\clkDivider|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(10),
	datad => VCC,
	cin => \clkDivider|s_divCounter[9]~45\,
	combout => \clkDivider|s_divCounter[10]~46_combout\,
	cout => \clkDivider|s_divCounter[10]~47\);

-- Location: LCCOMB_X107_Y39_N28
\clkDivider|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[11]~48_combout\ = (\clkDivider|s_divCounter\(11) & (!\clkDivider|s_divCounter[10]~47\)) # (!\clkDivider|s_divCounter\(11) & ((\clkDivider|s_divCounter[10]~47\) # (GND)))
-- \clkDivider|s_divCounter[11]~49\ = CARRY((!\clkDivider|s_divCounter[10]~47\) # (!\clkDivider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(11),
	datad => VCC,
	cin => \clkDivider|s_divCounter[10]~47\,
	combout => \clkDivider|s_divCounter[11]~48_combout\,
	cout => \clkDivider|s_divCounter[11]~49\);

-- Location: FF_X107_Y39_N29
\clkDivider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[11]~48_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(11));

-- Location: LCCOMB_X107_Y39_N30
\clkDivider|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[12]~50_combout\ = (\clkDivider|s_divCounter\(12) & (\clkDivider|s_divCounter[11]~49\ $ (GND))) # (!\clkDivider|s_divCounter\(12) & (!\clkDivider|s_divCounter[11]~49\ & VCC))
-- \clkDivider|s_divCounter[12]~51\ = CARRY((\clkDivider|s_divCounter\(12) & !\clkDivider|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(12),
	datad => VCC,
	cin => \clkDivider|s_divCounter[11]~49\,
	combout => \clkDivider|s_divCounter[12]~50_combout\,
	cout => \clkDivider|s_divCounter[12]~51\);

-- Location: FF_X107_Y39_N31
\clkDivider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[12]~50_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(12));

-- Location: LCCOMB_X107_Y38_N0
\clkDivider|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[13]~52_combout\ = (\clkDivider|s_divCounter\(13) & (!\clkDivider|s_divCounter[12]~51\)) # (!\clkDivider|s_divCounter\(13) & ((\clkDivider|s_divCounter[12]~51\) # (GND)))
-- \clkDivider|s_divCounter[13]~53\ = CARRY((!\clkDivider|s_divCounter[12]~51\) # (!\clkDivider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(13),
	datad => VCC,
	cin => \clkDivider|s_divCounter[12]~51\,
	combout => \clkDivider|s_divCounter[13]~52_combout\,
	cout => \clkDivider|s_divCounter[13]~53\);

-- Location: FF_X107_Y38_N1
\clkDivider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[13]~52_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(13));

-- Location: LCCOMB_X107_Y38_N2
\clkDivider|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[14]~54_combout\ = (\clkDivider|s_divCounter\(14) & (\clkDivider|s_divCounter[13]~53\ $ (GND))) # (!\clkDivider|s_divCounter\(14) & (!\clkDivider|s_divCounter[13]~53\ & VCC))
-- \clkDivider|s_divCounter[14]~55\ = CARRY((\clkDivider|s_divCounter\(14) & !\clkDivider|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(14),
	datad => VCC,
	cin => \clkDivider|s_divCounter[13]~53\,
	combout => \clkDivider|s_divCounter[14]~54_combout\,
	cout => \clkDivider|s_divCounter[14]~55\);

-- Location: FF_X107_Y38_N3
\clkDivider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[14]~54_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(14));

-- Location: LCCOMB_X107_Y38_N4
\clkDivider|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[15]~56_combout\ = (\clkDivider|s_divCounter\(15) & (!\clkDivider|s_divCounter[14]~55\)) # (!\clkDivider|s_divCounter\(15) & ((\clkDivider|s_divCounter[14]~55\) # (GND)))
-- \clkDivider|s_divCounter[15]~57\ = CARRY((!\clkDivider|s_divCounter[14]~55\) # (!\clkDivider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(15),
	datad => VCC,
	cin => \clkDivider|s_divCounter[14]~55\,
	combout => \clkDivider|s_divCounter[15]~56_combout\,
	cout => \clkDivider|s_divCounter[15]~57\);

-- Location: FF_X107_Y38_N5
\clkDivider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[15]~56_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(15));

-- Location: LCCOMB_X107_Y38_N6
\clkDivider|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[16]~58_combout\ = (\clkDivider|s_divCounter\(16) & (\clkDivider|s_divCounter[15]~57\ $ (GND))) # (!\clkDivider|s_divCounter\(16) & (!\clkDivider|s_divCounter[15]~57\ & VCC))
-- \clkDivider|s_divCounter[16]~59\ = CARRY((\clkDivider|s_divCounter\(16) & !\clkDivider|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(16),
	datad => VCC,
	cin => \clkDivider|s_divCounter[15]~57\,
	combout => \clkDivider|s_divCounter[16]~58_combout\,
	cout => \clkDivider|s_divCounter[16]~59\);

-- Location: FF_X107_Y38_N7
\clkDivider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[16]~58_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(16));

-- Location: LCCOMB_X107_Y38_N8
\clkDivider|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[17]~60_combout\ = (\clkDivider|s_divCounter\(17) & (!\clkDivider|s_divCounter[16]~59\)) # (!\clkDivider|s_divCounter\(17) & ((\clkDivider|s_divCounter[16]~59\) # (GND)))
-- \clkDivider|s_divCounter[17]~61\ = CARRY((!\clkDivider|s_divCounter[16]~59\) # (!\clkDivider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(17),
	datad => VCC,
	cin => \clkDivider|s_divCounter[16]~59\,
	combout => \clkDivider|s_divCounter[17]~60_combout\,
	cout => \clkDivider|s_divCounter[17]~61\);

-- Location: FF_X107_Y38_N9
\clkDivider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[17]~60_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(17));

-- Location: LCCOMB_X107_Y38_N10
\clkDivider|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[18]~62_combout\ = (\clkDivider|s_divCounter\(18) & (\clkDivider|s_divCounter[17]~61\ $ (GND))) # (!\clkDivider|s_divCounter\(18) & (!\clkDivider|s_divCounter[17]~61\ & VCC))
-- \clkDivider|s_divCounter[18]~63\ = CARRY((\clkDivider|s_divCounter\(18) & !\clkDivider|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(18),
	datad => VCC,
	cin => \clkDivider|s_divCounter[17]~61\,
	combout => \clkDivider|s_divCounter[18]~62_combout\,
	cout => \clkDivider|s_divCounter[18]~63\);

-- Location: FF_X107_Y38_N11
\clkDivider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[18]~62_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(18));

-- Location: LCCOMB_X107_Y38_N12
\clkDivider|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[19]~64_combout\ = (\clkDivider|s_divCounter\(19) & (!\clkDivider|s_divCounter[18]~63\)) # (!\clkDivider|s_divCounter\(19) & ((\clkDivider|s_divCounter[18]~63\) # (GND)))
-- \clkDivider|s_divCounter[19]~65\ = CARRY((!\clkDivider|s_divCounter[18]~63\) # (!\clkDivider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(19),
	datad => VCC,
	cin => \clkDivider|s_divCounter[18]~63\,
	combout => \clkDivider|s_divCounter[19]~64_combout\,
	cout => \clkDivider|s_divCounter[19]~65\);

-- Location: FF_X107_Y38_N13
\clkDivider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[19]~64_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(19));

-- Location: LCCOMB_X107_Y39_N4
\clkDivider|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~2_combout\ = (((!\clkDivider|s_divCounter\(0)) # (!\clkDivider|s_divCounter\(1))) # (!\clkDivider|s_divCounter\(2))) # (!\clkDivider|s_divCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(3),
	datab => \clkDivider|s_divCounter\(2),
	datac => \clkDivider|s_divCounter\(1),
	datad => \clkDivider|s_divCounter\(0),
	combout => \clkDivider|LessThan0~2_combout\);

-- Location: LCCOMB_X106_Y38_N12
\clkDivider|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~3_combout\ = (\clkDivider|LessThan0~2_combout\) # (((!\clkDivider|s_divCounter\(4)) # (!\clkDivider|s_divCounter\(5))) # (!\clkDivider|s_divCounter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|LessThan0~2_combout\,
	datab => \clkDivider|s_divCounter\(6),
	datac => \clkDivider|s_divCounter\(5),
	datad => \clkDivider|s_divCounter\(4),
	combout => \clkDivider|LessThan0~3_combout\);

-- Location: LCCOMB_X106_Y38_N18
\clkDivider|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~1_combout\ = (((!\clkDivider|s_divCounter\(15)) # (!\clkDivider|s_divCounter\(12))) # (!\clkDivider|s_divCounter\(13))) # (!\clkDivider|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(14),
	datab => \clkDivider|s_divCounter\(13),
	datac => \clkDivider|s_divCounter\(12),
	datad => \clkDivider|s_divCounter\(15),
	combout => \clkDivider|LessThan0~1_combout\);

-- Location: LCCOMB_X106_Y38_N10
\clkDivider|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~4_combout\ = (!\clkDivider|s_divCounter\(16) & ((\clkDivider|LessThan0~1_combout\) # ((\clkDivider|LessThan0~3_combout\ & \clkDivider|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|LessThan0~3_combout\,
	datab => \clkDivider|LessThan0~1_combout\,
	datac => \clkDivider|Equal0~1_combout\,
	datad => \clkDivider|s_divCounter\(16),
	combout => \clkDivider|LessThan0~4_combout\);

-- Location: LCCOMB_X106_Y38_N16
\clkDivider|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~5_combout\ = (\clkDivider|s_divCounter\(19) & ((\clkDivider|s_divCounter\(18)) # ((\clkDivider|s_divCounter\(17) & !\clkDivider|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(19),
	datab => \clkDivider|s_divCounter\(18),
	datac => \clkDivider|s_divCounter\(17),
	datad => \clkDivider|LessThan0~4_combout\,
	combout => \clkDivider|LessThan0~5_combout\);

-- Location: LCCOMB_X107_Y38_N14
\clkDivider|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[20]~66_combout\ = (\clkDivider|s_divCounter\(20) & (\clkDivider|s_divCounter[19]~65\ $ (GND))) # (!\clkDivider|s_divCounter\(20) & (!\clkDivider|s_divCounter[19]~65\ & VCC))
-- \clkDivider|s_divCounter[20]~67\ = CARRY((\clkDivider|s_divCounter\(20) & !\clkDivider|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(20),
	datad => VCC,
	cin => \clkDivider|s_divCounter[19]~65\,
	combout => \clkDivider|s_divCounter[20]~66_combout\,
	cout => \clkDivider|s_divCounter[20]~67\);

-- Location: FF_X107_Y38_N15
\clkDivider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[20]~66_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(20));

-- Location: LCCOMB_X107_Y38_N16
\clkDivider|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[21]~68_combout\ = (\clkDivider|s_divCounter\(21) & (!\clkDivider|s_divCounter[20]~67\)) # (!\clkDivider|s_divCounter\(21) & ((\clkDivider|s_divCounter[20]~67\) # (GND)))
-- \clkDivider|s_divCounter[21]~69\ = CARRY((!\clkDivider|s_divCounter[20]~67\) # (!\clkDivider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(21),
	datad => VCC,
	cin => \clkDivider|s_divCounter[20]~67\,
	combout => \clkDivider|s_divCounter[21]~68_combout\,
	cout => \clkDivider|s_divCounter[21]~69\);

-- Location: FF_X107_Y38_N17
\clkDivider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[21]~68_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(21));

-- Location: LCCOMB_X107_Y38_N18
\clkDivider|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[22]~70_combout\ = (\clkDivider|s_divCounter\(22) & (\clkDivider|s_divCounter[21]~69\ $ (GND))) # (!\clkDivider|s_divCounter\(22) & (!\clkDivider|s_divCounter[21]~69\ & VCC))
-- \clkDivider|s_divCounter[22]~71\ = CARRY((\clkDivider|s_divCounter\(22) & !\clkDivider|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(22),
	datad => VCC,
	cin => \clkDivider|s_divCounter[21]~69\,
	combout => \clkDivider|s_divCounter[22]~70_combout\,
	cout => \clkDivider|s_divCounter[22]~71\);

-- Location: FF_X107_Y38_N19
\clkDivider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[22]~70_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(22));

-- Location: LCCOMB_X107_Y38_N20
\clkDivider|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[23]~72_combout\ = (\clkDivider|s_divCounter\(23) & (!\clkDivider|s_divCounter[22]~71\)) # (!\clkDivider|s_divCounter\(23) & ((\clkDivider|s_divCounter[22]~71\) # (GND)))
-- \clkDivider|s_divCounter[23]~73\ = CARRY((!\clkDivider|s_divCounter[22]~71\) # (!\clkDivider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(23),
	datad => VCC,
	cin => \clkDivider|s_divCounter[22]~71\,
	combout => \clkDivider|s_divCounter[23]~72_combout\,
	cout => \clkDivider|s_divCounter[23]~73\);

-- Location: FF_X107_Y38_N21
\clkDivider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[23]~72_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(23));

-- Location: LCCOMB_X107_Y38_N28
\clkDivider|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~0_combout\ = (\clkDivider|s_divCounter\(23) & (\clkDivider|s_divCounter\(22) & (\clkDivider|s_divCounter\(20) & \clkDivider|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(23),
	datab => \clkDivider|s_divCounter\(22),
	datac => \clkDivider|s_divCounter\(20),
	datad => \clkDivider|s_divCounter\(21),
	combout => \clkDivider|LessThan0~0_combout\);

-- Location: LCCOMB_X107_Y38_N22
\clkDivider|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[24]~74_combout\ = (\clkDivider|s_divCounter\(24) & (\clkDivider|s_divCounter[23]~73\ $ (GND))) # (!\clkDivider|s_divCounter\(24) & (!\clkDivider|s_divCounter[23]~73\ & VCC))
-- \clkDivider|s_divCounter[24]~75\ = CARRY((\clkDivider|s_divCounter\(24) & !\clkDivider|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(24),
	datad => VCC,
	cin => \clkDivider|s_divCounter[23]~73\,
	combout => \clkDivider|s_divCounter[24]~74_combout\,
	cout => \clkDivider|s_divCounter[24]~75\);

-- Location: FF_X107_Y38_N23
\clkDivider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[24]~74_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(24));

-- Location: LCCOMB_X107_Y38_N24
\clkDivider|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[25]~76_combout\ = \clkDivider|s_divCounter[24]~75\ $ (\clkDivider|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clkDivider|s_divCounter\(25),
	cin => \clkDivider|s_divCounter[24]~75\,
	combout => \clkDivider|s_divCounter[25]~76_combout\);

-- Location: FF_X107_Y38_N25
\clkDivider|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[25]~76_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(25));

-- Location: LCCOMB_X107_Y38_N26
\clkDivider|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~6_combout\ = (\clkDivider|s_divCounter\(25) & ((\clkDivider|s_divCounter\(24)) # ((\clkDivider|LessThan0~5_combout\ & \clkDivider|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|LessThan0~5_combout\,
	datab => \clkDivider|LessThan0~0_combout\,
	datac => \clkDivider|s_divCounter\(24),
	datad => \clkDivider|s_divCounter\(25),
	combout => \clkDivider|LessThan0~6_combout\);

-- Location: FF_X107_Y39_N7
\clkDivider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[0]~26_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(0));

-- Location: LCCOMB_X107_Y39_N8
\clkDivider|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[1]~28_combout\ = (\clkDivider|s_divCounter\(1) & (!\clkDivider|s_divCounter[0]~27\)) # (!\clkDivider|s_divCounter\(1) & ((\clkDivider|s_divCounter[0]~27\) # (GND)))
-- \clkDivider|s_divCounter[1]~29\ = CARRY((!\clkDivider|s_divCounter[0]~27\) # (!\clkDivider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(1),
	datad => VCC,
	cin => \clkDivider|s_divCounter[0]~27\,
	combout => \clkDivider|s_divCounter[1]~28_combout\,
	cout => \clkDivider|s_divCounter[1]~29\);

-- Location: FF_X107_Y39_N9
\clkDivider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[1]~28_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(1));

-- Location: LCCOMB_X107_Y39_N10
\clkDivider|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[2]~30_combout\ = (\clkDivider|s_divCounter\(2) & (\clkDivider|s_divCounter[1]~29\ $ (GND))) # (!\clkDivider|s_divCounter\(2) & (!\clkDivider|s_divCounter[1]~29\ & VCC))
-- \clkDivider|s_divCounter[2]~31\ = CARRY((\clkDivider|s_divCounter\(2) & !\clkDivider|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(2),
	datad => VCC,
	cin => \clkDivider|s_divCounter[1]~29\,
	combout => \clkDivider|s_divCounter[2]~30_combout\,
	cout => \clkDivider|s_divCounter[2]~31\);

-- Location: FF_X107_Y39_N11
\clkDivider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[2]~30_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(2));

-- Location: LCCOMB_X107_Y39_N12
\clkDivider|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[3]~32_combout\ = (\clkDivider|s_divCounter\(3) & (!\clkDivider|s_divCounter[2]~31\)) # (!\clkDivider|s_divCounter\(3) & ((\clkDivider|s_divCounter[2]~31\) # (GND)))
-- \clkDivider|s_divCounter[3]~33\ = CARRY((!\clkDivider|s_divCounter[2]~31\) # (!\clkDivider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(3),
	datad => VCC,
	cin => \clkDivider|s_divCounter[2]~31\,
	combout => \clkDivider|s_divCounter[3]~32_combout\,
	cout => \clkDivider|s_divCounter[3]~33\);

-- Location: FF_X107_Y39_N13
\clkDivider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[3]~32_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(3));

-- Location: LCCOMB_X107_Y39_N14
\clkDivider|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[4]~34_combout\ = (\clkDivider|s_divCounter\(4) & (\clkDivider|s_divCounter[3]~33\ $ (GND))) # (!\clkDivider|s_divCounter\(4) & (!\clkDivider|s_divCounter[3]~33\ & VCC))
-- \clkDivider|s_divCounter[4]~35\ = CARRY((\clkDivider|s_divCounter\(4) & !\clkDivider|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(4),
	datad => VCC,
	cin => \clkDivider|s_divCounter[3]~33\,
	combout => \clkDivider|s_divCounter[4]~34_combout\,
	cout => \clkDivider|s_divCounter[4]~35\);

-- Location: FF_X107_Y39_N15
\clkDivider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[4]~34_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(4));

-- Location: LCCOMB_X107_Y39_N16
\clkDivider|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[5]~36_combout\ = (\clkDivider|s_divCounter\(5) & (!\clkDivider|s_divCounter[4]~35\)) # (!\clkDivider|s_divCounter\(5) & ((\clkDivider|s_divCounter[4]~35\) # (GND)))
-- \clkDivider|s_divCounter[5]~37\ = CARRY((!\clkDivider|s_divCounter[4]~35\) # (!\clkDivider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(5),
	datad => VCC,
	cin => \clkDivider|s_divCounter[4]~35\,
	combout => \clkDivider|s_divCounter[5]~36_combout\,
	cout => \clkDivider|s_divCounter[5]~37\);

-- Location: FF_X107_Y39_N17
\clkDivider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[5]~36_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(5));

-- Location: LCCOMB_X107_Y39_N18
\clkDivider|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[6]~38_combout\ = (\clkDivider|s_divCounter\(6) & (\clkDivider|s_divCounter[5]~37\ $ (GND))) # (!\clkDivider|s_divCounter\(6) & (!\clkDivider|s_divCounter[5]~37\ & VCC))
-- \clkDivider|s_divCounter[6]~39\ = CARRY((\clkDivider|s_divCounter\(6) & !\clkDivider|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(6),
	datad => VCC,
	cin => \clkDivider|s_divCounter[5]~37\,
	combout => \clkDivider|s_divCounter[6]~38_combout\,
	cout => \clkDivider|s_divCounter[6]~39\);

-- Location: FF_X107_Y39_N19
\clkDivider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[6]~38_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(6));

-- Location: LCCOMB_X107_Y39_N20
\clkDivider|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[7]~40_combout\ = (\clkDivider|s_divCounter\(7) & (!\clkDivider|s_divCounter[6]~39\)) # (!\clkDivider|s_divCounter\(7) & ((\clkDivider|s_divCounter[6]~39\) # (GND)))
-- \clkDivider|s_divCounter[7]~41\ = CARRY((!\clkDivider|s_divCounter[6]~39\) # (!\clkDivider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(7),
	datad => VCC,
	cin => \clkDivider|s_divCounter[6]~39\,
	combout => \clkDivider|s_divCounter[7]~40_combout\,
	cout => \clkDivider|s_divCounter[7]~41\);

-- Location: FF_X107_Y39_N21
\clkDivider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[7]~40_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(7));

-- Location: LCCOMB_X107_Y39_N22
\clkDivider|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[8]~42_combout\ = (\clkDivider|s_divCounter\(8) & (\clkDivider|s_divCounter[7]~41\ $ (GND))) # (!\clkDivider|s_divCounter\(8) & (!\clkDivider|s_divCounter[7]~41\ & VCC))
-- \clkDivider|s_divCounter[8]~43\ = CARRY((\clkDivider|s_divCounter\(8) & !\clkDivider|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(8),
	datad => VCC,
	cin => \clkDivider|s_divCounter[7]~41\,
	combout => \clkDivider|s_divCounter[8]~42_combout\,
	cout => \clkDivider|s_divCounter[8]~43\);

-- Location: FF_X107_Y39_N23
\clkDivider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[8]~42_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(8));

-- Location: LCCOMB_X107_Y39_N24
\clkDivider|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[9]~44_combout\ = (\clkDivider|s_divCounter\(9) & (!\clkDivider|s_divCounter[8]~43\)) # (!\clkDivider|s_divCounter\(9) & ((\clkDivider|s_divCounter[8]~43\) # (GND)))
-- \clkDivider|s_divCounter[9]~45\ = CARRY((!\clkDivider|s_divCounter[8]~43\) # (!\clkDivider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(9),
	datad => VCC,
	cin => \clkDivider|s_divCounter[8]~43\,
	combout => \clkDivider|s_divCounter[9]~44_combout\,
	cout => \clkDivider|s_divCounter[9]~45\);

-- Location: FF_X107_Y39_N25
\clkDivider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[9]~44_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(9));

-- Location: FF_X107_Y39_N27
\clkDivider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|s_divCounter[10]~46_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(10));

-- Location: LCCOMB_X107_Y39_N0
\clkDivider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~0_combout\ = (!\clkDivider|s_divCounter\(10) & (!\clkDivider|s_divCounter\(9) & (!\clkDivider|s_divCounter\(8) & !\clkDivider|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(10),
	datab => \clkDivider|s_divCounter\(9),
	datac => \clkDivider|s_divCounter\(8),
	datad => \clkDivider|s_divCounter\(7),
	combout => \clkDivider|Equal0~0_combout\);

-- Location: LCCOMB_X106_Y39_N8
\clkDivider|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~1_combout\ = (\clkDivider|Equal0~0_combout\ & !\clkDivider|s_divCounter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDivider|Equal0~0_combout\,
	datad => \clkDivider|s_divCounter\(11),
	combout => \clkDivider|Equal0~1_combout\);

-- Location: LCCOMB_X106_Y38_N6
\clkDivider|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~5_combout\ = (!\clkDivider|s_divCounter\(19) & (!\clkDivider|s_divCounter\(18) & (!\clkDivider|s_divCounter\(17) & !\clkDivider|s_divCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(19),
	datab => \clkDivider|s_divCounter\(18),
	datac => \clkDivider|s_divCounter\(17),
	datad => \clkDivider|s_divCounter\(20),
	combout => \clkDivider|Equal0~5_combout\);

-- Location: LCCOMB_X107_Y38_N30
\clkDivider|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~6_combout\ = (!\clkDivider|s_divCounter\(23) & (!\clkDivider|s_divCounter\(22) & (!\clkDivider|s_divCounter\(24) & !\clkDivider|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(23),
	datab => \clkDivider|s_divCounter\(22),
	datac => \clkDivider|s_divCounter\(24),
	datad => \clkDivider|s_divCounter\(21),
	combout => \clkDivider|Equal0~6_combout\);

-- Location: LCCOMB_X106_Y38_N8
\clkDivider|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~4_combout\ = (!\clkDivider|s_divCounter\(16) & (!\clkDivider|s_divCounter\(14) & (!\clkDivider|s_divCounter\(13) & !\clkDivider|s_divCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(16),
	datab => \clkDivider|s_divCounter\(14),
	datac => \clkDivider|s_divCounter\(13),
	datad => \clkDivider|s_divCounter\(15),
	combout => \clkDivider|Equal0~4_combout\);

-- Location: LCCOMB_X106_Y38_N28
\clkDivider|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~7_combout\ = (\clkDivider|Equal0~5_combout\ & (\clkDivider|Equal0~6_combout\ & (\clkDivider|Equal0~4_combout\ & !\clkDivider|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|Equal0~5_combout\,
	datab => \clkDivider|Equal0~6_combout\,
	datac => \clkDivider|Equal0~4_combout\,
	datad => \clkDivider|s_divCounter\(25),
	combout => \clkDivider|Equal0~7_combout\);

-- Location: LCCOMB_X106_Y38_N22
\clkDivider|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~3_combout\ = (!\clkDivider|s_divCounter\(12) & (!\clkDivider|s_divCounter\(6) & (!\clkDivider|s_divCounter\(5) & !\clkDivider|s_divCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(12),
	datab => \clkDivider|s_divCounter\(6),
	datac => \clkDivider|s_divCounter\(5),
	datad => \clkDivider|s_divCounter\(4),
	combout => \clkDivider|Equal0~3_combout\);

-- Location: LCCOMB_X107_Y39_N2
\clkDivider|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~2_combout\ = (!\clkDivider|s_divCounter\(3) & (!\clkDivider|s_divCounter\(2) & (!\clkDivider|s_divCounter\(1) & !\clkDivider|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(3),
	datab => \clkDivider|s_divCounter\(2),
	datac => \clkDivider|s_divCounter\(1),
	datad => \clkDivider|s_divCounter\(0),
	combout => \clkDivider|Equal0~2_combout\);

-- Location: LCCOMB_X106_Y38_N4
\clkDivider|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~8_combout\ = (\clkDivider|Equal0~1_combout\ & (\clkDivider|Equal0~7_combout\ & (\clkDivider|Equal0~3_combout\ & \clkDivider|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|Equal0~1_combout\,
	datab => \clkDivider|Equal0~7_combout\,
	datac => \clkDivider|Equal0~3_combout\,
	datad => \clkDivider|Equal0~2_combout\,
	combout => \clkDivider|Equal0~8_combout\);

-- Location: FF_X106_Y38_N5
\clkDivider|pulseOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDivider|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|pulseOut~q\);

-- Location: LCCOMB_X106_Y40_N12
\timerOfFSM|s_counter[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_counter[3]~11_combout\ = (\fsm|s_currentState.STANDBY~q\ & (\toggleSwitch|current_state~q\ & (!\fsm|s_currentState.FINISH~q\ & \clkDivider|pulseOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.STANDBY~q\,
	datab => \toggleSwitch|current_state~q\,
	datac => \fsm|s_currentState.FINISH~q\,
	datad => \clkDivider|pulseOut~q\,
	combout => \timerOfFSM|s_counter[3]~11_combout\);

-- Location: LCCOMB_X109_Y39_N12
\timerOfFSM|s_counter[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_counter[0]~8_combout\ = \timerOfFSM|s_counter\(0) $ (VCC)
-- \timerOfFSM|s_counter[0]~9\ = CARRY(\timerOfFSM|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(0),
	datad => VCC,
	combout => \timerOfFSM|s_counter[0]~8_combout\,
	cout => \timerOfFSM|s_counter[0]~9\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X112_Y40_N20
\keyLoggerDelay|s_count[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerDelay|s_count[0]~21_combout\ = !\keyLoggerDelay|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keyLoggerDelay|s_count\(0),
	combout => \keyLoggerDelay|s_count[0]~21_combout\);

-- Location: LCCOMB_X112_Y40_N4
\keyLoggerDelay|s_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerDelay|s_count[1]~7_combout\ = (\keyLoggerDelay|s_count\(1) & (\keyLoggerDelay|s_count\(0) $ (VCC))) # (!\keyLoggerDelay|s_count\(1) & (\keyLoggerDelay|s_count\(0) & VCC))
-- \keyLoggerDelay|s_count[1]~8\ = CARRY((\keyLoggerDelay|s_count\(1) & \keyLoggerDelay|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(1),
	datab => \keyLoggerDelay|s_count\(0),
	datad => VCC,
	combout => \keyLoggerDelay|s_count[1]~7_combout\,
	cout => \keyLoggerDelay|s_count[1]~8\);

-- Location: FF_X112_Y40_N5
\keyLoggerDelay|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~input_o\,
	d => \keyLoggerDelay|s_count[1]~7_combout\,
	clrn => \keyLoggerDelay|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerDelay|s_count\(1));

-- Location: LCCOMB_X112_Y40_N6
\keyLoggerDelay|s_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerDelay|s_count[2]~9_combout\ = (\keyLoggerDelay|s_count\(2) & (!\keyLoggerDelay|s_count[1]~8\)) # (!\keyLoggerDelay|s_count\(2) & ((\keyLoggerDelay|s_count[1]~8\) # (GND)))
-- \keyLoggerDelay|s_count[2]~10\ = CARRY((!\keyLoggerDelay|s_count[1]~8\) # (!\keyLoggerDelay|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(2),
	datad => VCC,
	cin => \keyLoggerDelay|s_count[1]~8\,
	combout => \keyLoggerDelay|s_count[2]~9_combout\,
	cout => \keyLoggerDelay|s_count[2]~10\);

-- Location: FF_X112_Y40_N7
\keyLoggerDelay|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~input_o\,
	d => \keyLoggerDelay|s_count[2]~9_combout\,
	clrn => \keyLoggerDelay|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerDelay|s_count\(2));

-- Location: LCCOMB_X112_Y40_N8
\keyLoggerDelay|s_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerDelay|s_count[3]~11_combout\ = (\keyLoggerDelay|s_count\(3) & (\keyLoggerDelay|s_count[2]~10\ $ (GND))) # (!\keyLoggerDelay|s_count\(3) & (!\keyLoggerDelay|s_count[2]~10\ & VCC))
-- \keyLoggerDelay|s_count[3]~12\ = CARRY((\keyLoggerDelay|s_count\(3) & !\keyLoggerDelay|s_count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyLoggerDelay|s_count\(3),
	datad => VCC,
	cin => \keyLoggerDelay|s_count[2]~10\,
	combout => \keyLoggerDelay|s_count[3]~11_combout\,
	cout => \keyLoggerDelay|s_count[3]~12\);

-- Location: FF_X112_Y40_N9
\keyLoggerDelay|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~input_o\,
	d => \keyLoggerDelay|s_count[3]~11_combout\,
	clrn => \keyLoggerDelay|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerDelay|s_count\(3));

-- Location: LCCOMB_X112_Y40_N10
\keyLoggerDelay|s_count[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerDelay|s_count[4]~13_combout\ = (\keyLoggerDelay|s_count\(4) & (!\keyLoggerDelay|s_count[3]~12\)) # (!\keyLoggerDelay|s_count\(4) & ((\keyLoggerDelay|s_count[3]~12\) # (GND)))
-- \keyLoggerDelay|s_count[4]~14\ = CARRY((!\keyLoggerDelay|s_count[3]~12\) # (!\keyLoggerDelay|s_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(4),
	datad => VCC,
	cin => \keyLoggerDelay|s_count[3]~12\,
	combout => \keyLoggerDelay|s_count[4]~13_combout\,
	cout => \keyLoggerDelay|s_count[4]~14\);

-- Location: FF_X112_Y40_N11
\keyLoggerDelay|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~input_o\,
	d => \keyLoggerDelay|s_count[4]~13_combout\,
	clrn => \keyLoggerDelay|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerDelay|s_count\(4));

-- Location: LCCOMB_X112_Y40_N12
\keyLoggerDelay|s_count[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerDelay|s_count[5]~15_combout\ = (\keyLoggerDelay|s_count\(5) & (\keyLoggerDelay|s_count[4]~14\ $ (GND))) # (!\keyLoggerDelay|s_count\(5) & (!\keyLoggerDelay|s_count[4]~14\ & VCC))
-- \keyLoggerDelay|s_count[5]~16\ = CARRY((\keyLoggerDelay|s_count\(5) & !\keyLoggerDelay|s_count[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(5),
	datad => VCC,
	cin => \keyLoggerDelay|s_count[4]~14\,
	combout => \keyLoggerDelay|s_count[5]~15_combout\,
	cout => \keyLoggerDelay|s_count[5]~16\);

-- Location: FF_X112_Y40_N13
\keyLoggerDelay|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~input_o\,
	d => \keyLoggerDelay|s_count[5]~15_combout\,
	clrn => \keyLoggerDelay|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerDelay|s_count\(5));

-- Location: LCCOMB_X112_Y40_N14
\keyLoggerDelay|s_count[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerDelay|s_count[6]~17_combout\ = (\keyLoggerDelay|s_count\(6) & (!\keyLoggerDelay|s_count[5]~16\)) # (!\keyLoggerDelay|s_count\(6) & ((\keyLoggerDelay|s_count[5]~16\) # (GND)))
-- \keyLoggerDelay|s_count[6]~18\ = CARRY((!\keyLoggerDelay|s_count[5]~16\) # (!\keyLoggerDelay|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyLoggerDelay|s_count\(6),
	datad => VCC,
	cin => \keyLoggerDelay|s_count[5]~16\,
	combout => \keyLoggerDelay|s_count[6]~17_combout\,
	cout => \keyLoggerDelay|s_count[6]~18\);

-- Location: FF_X112_Y40_N15
\keyLoggerDelay|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~input_o\,
	d => \keyLoggerDelay|s_count[6]~17_combout\,
	clrn => \keyLoggerDelay|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerDelay|s_count\(6));

-- Location: LCCOMB_X112_Y40_N16
\keyLoggerDelay|s_count[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerDelay|s_count[7]~19_combout\ = \keyLoggerDelay|s_count\(7) $ (!\keyLoggerDelay|s_count[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(7),
	cin => \keyLoggerDelay|s_count[6]~18\,
	combout => \keyLoggerDelay|s_count[7]~19_combout\);

-- Location: FF_X112_Y40_N17
\keyLoggerDelay|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~input_o\,
	d => \keyLoggerDelay|s_count[7]~19_combout\,
	clrn => \keyLoggerDelay|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerDelay|s_count\(7));

-- Location: LCCOMB_X112_Y40_N30
\keyLoggerDelay|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerDelay|Equal0~0_combout\ = (\keyLoggerDelay|s_count\(0) & (!\keyLoggerDelay|s_count\(7) & (!\keyLoggerDelay|s_count\(6) & \keyLoggerDelay|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(0),
	datab => \keyLoggerDelay|s_count\(7),
	datac => \keyLoggerDelay|s_count\(6),
	datad => \keyLoggerDelay|s_count\(5),
	combout => \keyLoggerDelay|Equal0~0_combout\);

-- Location: LCCOMB_X112_Y40_N2
\keyLoggerDelay|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerDelay|Equal0~1_combout\ = (\keyLoggerDelay|s_count\(4) & (\keyLoggerDelay|s_count\(1) & (\keyLoggerDelay|s_count\(3) & !\keyLoggerDelay|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(4),
	datab => \keyLoggerDelay|s_count\(1),
	datac => \keyLoggerDelay|s_count\(3),
	datad => \keyLoggerDelay|s_count\(2),
	combout => \keyLoggerDelay|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y40_N24
\keyLoggerDelay|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerDelay|process_0~0_combout\ = ((\keyLoggerDelay|Equal0~0_combout\ & \keyLoggerDelay|Equal0~1_combout\)) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datac => \keyLoggerDelay|Equal0~0_combout\,
	datad => \keyLoggerDelay|Equal0~1_combout\,
	combout => \keyLoggerDelay|process_0~0_combout\);

-- Location: FF_X112_Y40_N21
\keyLoggerDelay|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[3]~input_o\,
	d => \keyLoggerDelay|s_count[0]~21_combout\,
	clrn => \keyLoggerDelay|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerDelay|s_count\(0));

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X111_Y40_N4
\keyLoggerAdjust|s_count[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerAdjust|s_count[0]~21_combout\ = !\keyLoggerAdjust|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keyLoggerAdjust|s_count\(0),
	combout => \keyLoggerAdjust|s_count[0]~21_combout\);

-- Location: LCCOMB_X111_Y40_N12
\keyLoggerAdjust|s_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerAdjust|s_count[1]~7_combout\ = (\keyLoggerAdjust|s_count\(1) & (\keyLoggerAdjust|s_count\(0) $ (VCC))) # (!\keyLoggerAdjust|s_count\(1) & (\keyLoggerAdjust|s_count\(0) & VCC))
-- \keyLoggerAdjust|s_count[1]~8\ = CARRY((\keyLoggerAdjust|s_count\(1) & \keyLoggerAdjust|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(1),
	datab => \keyLoggerAdjust|s_count\(0),
	datad => VCC,
	combout => \keyLoggerAdjust|s_count[1]~7_combout\,
	cout => \keyLoggerAdjust|s_count[1]~8\);

-- Location: FF_X111_Y40_N13
\keyLoggerAdjust|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \keyLoggerAdjust|s_count[1]~7_combout\,
	clrn => \keyLoggerAdjust|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerAdjust|s_count\(1));

-- Location: LCCOMB_X111_Y40_N14
\keyLoggerAdjust|s_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerAdjust|s_count[2]~9_combout\ = (\keyLoggerAdjust|s_count\(2) & (!\keyLoggerAdjust|s_count[1]~8\)) # (!\keyLoggerAdjust|s_count\(2) & ((\keyLoggerAdjust|s_count[1]~8\) # (GND)))
-- \keyLoggerAdjust|s_count[2]~10\ = CARRY((!\keyLoggerAdjust|s_count[1]~8\) # (!\keyLoggerAdjust|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyLoggerAdjust|s_count\(2),
	datad => VCC,
	cin => \keyLoggerAdjust|s_count[1]~8\,
	combout => \keyLoggerAdjust|s_count[2]~9_combout\,
	cout => \keyLoggerAdjust|s_count[2]~10\);

-- Location: FF_X111_Y40_N15
\keyLoggerAdjust|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \keyLoggerAdjust|s_count[2]~9_combout\,
	clrn => \keyLoggerAdjust|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerAdjust|s_count\(2));

-- Location: LCCOMB_X111_Y40_N16
\keyLoggerAdjust|s_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerAdjust|s_count[3]~11_combout\ = (\keyLoggerAdjust|s_count\(3) & (\keyLoggerAdjust|s_count[2]~10\ $ (GND))) # (!\keyLoggerAdjust|s_count\(3) & (!\keyLoggerAdjust|s_count[2]~10\ & VCC))
-- \keyLoggerAdjust|s_count[3]~12\ = CARRY((\keyLoggerAdjust|s_count\(3) & !\keyLoggerAdjust|s_count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyLoggerAdjust|s_count\(3),
	datad => VCC,
	cin => \keyLoggerAdjust|s_count[2]~10\,
	combout => \keyLoggerAdjust|s_count[3]~11_combout\,
	cout => \keyLoggerAdjust|s_count[3]~12\);

-- Location: FF_X111_Y40_N17
\keyLoggerAdjust|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \keyLoggerAdjust|s_count[3]~11_combout\,
	clrn => \keyLoggerAdjust|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerAdjust|s_count\(3));

-- Location: LCCOMB_X111_Y40_N18
\keyLoggerAdjust|s_count[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerAdjust|s_count[4]~13_combout\ = (\keyLoggerAdjust|s_count\(4) & (!\keyLoggerAdjust|s_count[3]~12\)) # (!\keyLoggerAdjust|s_count\(4) & ((\keyLoggerAdjust|s_count[3]~12\) # (GND)))
-- \keyLoggerAdjust|s_count[4]~14\ = CARRY((!\keyLoggerAdjust|s_count[3]~12\) # (!\keyLoggerAdjust|s_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyLoggerAdjust|s_count\(4),
	datad => VCC,
	cin => \keyLoggerAdjust|s_count[3]~12\,
	combout => \keyLoggerAdjust|s_count[4]~13_combout\,
	cout => \keyLoggerAdjust|s_count[4]~14\);

-- Location: FF_X111_Y40_N19
\keyLoggerAdjust|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \keyLoggerAdjust|s_count[4]~13_combout\,
	clrn => \keyLoggerAdjust|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerAdjust|s_count\(4));

-- Location: LCCOMB_X111_Y40_N20
\keyLoggerAdjust|s_count[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerAdjust|s_count[5]~15_combout\ = (\keyLoggerAdjust|s_count\(5) & (\keyLoggerAdjust|s_count[4]~14\ $ (GND))) # (!\keyLoggerAdjust|s_count\(5) & (!\keyLoggerAdjust|s_count[4]~14\ & VCC))
-- \keyLoggerAdjust|s_count[5]~16\ = CARRY((\keyLoggerAdjust|s_count\(5) & !\keyLoggerAdjust|s_count[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyLoggerAdjust|s_count\(5),
	datad => VCC,
	cin => \keyLoggerAdjust|s_count[4]~14\,
	combout => \keyLoggerAdjust|s_count[5]~15_combout\,
	cout => \keyLoggerAdjust|s_count[5]~16\);

-- Location: FF_X111_Y40_N21
\keyLoggerAdjust|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \keyLoggerAdjust|s_count[5]~15_combout\,
	clrn => \keyLoggerAdjust|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerAdjust|s_count\(5));

-- Location: LCCOMB_X111_Y40_N22
\keyLoggerAdjust|s_count[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerAdjust|s_count[6]~17_combout\ = (\keyLoggerAdjust|s_count\(6) & (!\keyLoggerAdjust|s_count[5]~16\)) # (!\keyLoggerAdjust|s_count\(6) & ((\keyLoggerAdjust|s_count[5]~16\) # (GND)))
-- \keyLoggerAdjust|s_count[6]~18\ = CARRY((!\keyLoggerAdjust|s_count[5]~16\) # (!\keyLoggerAdjust|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(6),
	datad => VCC,
	cin => \keyLoggerAdjust|s_count[5]~16\,
	combout => \keyLoggerAdjust|s_count[6]~17_combout\,
	cout => \keyLoggerAdjust|s_count[6]~18\);

-- Location: FF_X111_Y40_N23
\keyLoggerAdjust|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \keyLoggerAdjust|s_count[6]~17_combout\,
	clrn => \keyLoggerAdjust|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerAdjust|s_count\(6));

-- Location: LCCOMB_X111_Y40_N24
\keyLoggerAdjust|s_count[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerAdjust|s_count[7]~19_combout\ = \keyLoggerAdjust|s_count\(7) $ (!\keyLoggerAdjust|s_count[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(7),
	cin => \keyLoggerAdjust|s_count[6]~18\,
	combout => \keyLoggerAdjust|s_count[7]~19_combout\);

-- Location: FF_X111_Y40_N25
\keyLoggerAdjust|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \keyLoggerAdjust|s_count[7]~19_combout\,
	clrn => \keyLoggerAdjust|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerAdjust|s_count\(7));

-- Location: LCCOMB_X111_Y40_N30
\keyLoggerAdjust|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerAdjust|Equal0~0_combout\ = (!\keyLoggerAdjust|s_count\(5) & (!\keyLoggerAdjust|s_count\(0) & (!\keyLoggerAdjust|s_count\(6) & !\keyLoggerAdjust|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(5),
	datab => \keyLoggerAdjust|s_count\(0),
	datac => \keyLoggerAdjust|s_count\(6),
	datad => \keyLoggerAdjust|s_count\(7),
	combout => \keyLoggerAdjust|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y40_N28
\keyLoggerAdjust|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerAdjust|Equal0~1_combout\ = (\keyLoggerAdjust|s_count\(2) & (!\keyLoggerAdjust|s_count\(3) & (!\keyLoggerAdjust|s_count\(4) & \keyLoggerAdjust|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(2),
	datab => \keyLoggerAdjust|s_count\(3),
	datac => \keyLoggerAdjust|s_count\(4),
	datad => \keyLoggerAdjust|s_count\(1),
	combout => \keyLoggerAdjust|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y40_N2
\keyLoggerAdjust|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keyLoggerAdjust|process_0~0_combout\ = ((\keyLoggerAdjust|Equal0~0_combout\ & \keyLoggerAdjust|Equal0~1_combout\)) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \keyLoggerAdjust|Equal0~0_combout\,
	datad => \keyLoggerAdjust|Equal0~1_combout\,
	combout => \keyLoggerAdjust|process_0~0_combout\);

-- Location: FF_X111_Y40_N5
\keyLoggerAdjust|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \keyLoggerAdjust|s_count[0]~21_combout\,
	clrn => \keyLoggerAdjust|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyLoggerAdjust|s_count\(0));

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X110_Y40_N7
\regInput|crumple_Time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regInput|crumple_Time\(1));

-- Location: FF_X110_Y40_N5
\romCrumple|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \regInput|crumple_Time\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \romCrumple|dataOut\(0));

-- Location: LCCOMB_X110_Y40_N16
\fsm|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add2~0_combout\ = (\keyLoggerAdjust|s_count\(0) & (\romCrumple|dataOut\(0) $ (VCC))) # (!\keyLoggerAdjust|s_count\(0) & (\romCrumple|dataOut\(0) & VCC))
-- \fsm|Add2~1\ = CARRY((\keyLoggerAdjust|s_count\(0) & \romCrumple|dataOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(0),
	datab => \romCrumple|dataOut\(0),
	datad => VCC,
	combout => \fsm|Add2~0_combout\,
	cout => \fsm|Add2~1\);

-- Location: LCCOMB_X109_Y40_N16
\fsm|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add3~0_combout\ = (\keyLoggerDelay|s_count\(0) & (\fsm|Add2~0_combout\ $ (VCC))) # (!\keyLoggerDelay|s_count\(0) & (\fsm|Add2~0_combout\ & VCC))
-- \fsm|Add3~1\ = CARRY((\keyLoggerDelay|s_count\(0) & \fsm|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(0),
	datab => \fsm|Add2~0_combout\,
	datad => VCC,
	combout => \fsm|Add3~0_combout\,
	cout => \fsm|Add3~1\);

-- Location: LCCOMB_X106_Y40_N0
\timerOfFSM|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_counter~10_combout\ = (!\KEY[2]~input_o\) # (!\fsm|s_currentState.STANDBY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.STANDBY~q\,
	datad => \KEY[2]~input_o\,
	combout => \timerOfFSM|s_counter~10_combout\);

-- Location: LCCOMB_X105_Y40_N4
\timerOfFSM|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Equal0~1_combout\ = (!\timerOfFSM|s_counter\(3) & (!\timerOfFSM|s_counter\(1) & (!\timerOfFSM|s_counter\(2) & !\timerOfFSM|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(3),
	datab => \timerOfFSM|s_counter\(1),
	datac => \timerOfFSM|s_counter\(2),
	datad => \timerOfFSM|s_counter\(4),
	combout => \timerOfFSM|Equal0~1_combout\);

-- Location: LCCOMB_X106_Y40_N22
\timerOfFSM|s_counter[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_counter[3]~12_combout\ = (\timerOfFSM|s_counter~10_combout\) # ((\timerOfFSM|s_counter[3]~11_combout\ & ((!\timerOfFSM|Equal0~1_combout\) # (!\timerOfFSM|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter[3]~11_combout\,
	datab => \timerOfFSM|Equal0~0_combout\,
	datac => \timerOfFSM|Equal0~1_combout\,
	datad => \timerOfFSM|s_counter~10_combout\,
	combout => \timerOfFSM|s_counter[3]~12_combout\);

-- Location: FF_X109_Y39_N13
\timerOfFSM|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|s_counter[0]~8_combout\,
	asdata => \fsm|Add3~0_combout\,
	sload => \timerOfFSM|s_counter~10_combout\,
	ena => \timerOfFSM|s_counter[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(0));

-- Location: LCCOMB_X109_Y39_N14
\timerOfFSM|s_counter[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_counter[1]~13_combout\ = (\timerOfFSM|s_counter\(1) & (\timerOfFSM|s_counter[0]~9\ & VCC)) # (!\timerOfFSM|s_counter\(1) & (!\timerOfFSM|s_counter[0]~9\))
-- \timerOfFSM|s_counter[1]~14\ = CARRY((!\timerOfFSM|s_counter\(1) & !\timerOfFSM|s_counter[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(1),
	datad => VCC,
	cin => \timerOfFSM|s_counter[0]~9\,
	combout => \timerOfFSM|s_counter[1]~13_combout\,
	cout => \timerOfFSM|s_counter[1]~14\);

-- Location: LCCOMB_X110_Y40_N18
\fsm|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add2~2_combout\ = (\keyLoggerAdjust|s_count\(1) & (!\fsm|Add2~1\)) # (!\keyLoggerAdjust|s_count\(1) & ((\fsm|Add2~1\) # (GND)))
-- \fsm|Add2~3\ = CARRY((!\fsm|Add2~1\) # (!\keyLoggerAdjust|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyLoggerAdjust|s_count\(1),
	datad => VCC,
	cin => \fsm|Add2~1\,
	combout => \fsm|Add2~2_combout\,
	cout => \fsm|Add2~3\);

-- Location: LCCOMB_X109_Y40_N18
\fsm|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add3~2_combout\ = (\keyLoggerDelay|s_count\(1) & ((\fsm|Add2~2_combout\ & (\fsm|Add3~1\ & VCC)) # (!\fsm|Add2~2_combout\ & (!\fsm|Add3~1\)))) # (!\keyLoggerDelay|s_count\(1) & ((\fsm|Add2~2_combout\ & (!\fsm|Add3~1\)) # (!\fsm|Add2~2_combout\ & 
-- ((\fsm|Add3~1\) # (GND)))))
-- \fsm|Add3~3\ = CARRY((\keyLoggerDelay|s_count\(1) & (!\fsm|Add2~2_combout\ & !\fsm|Add3~1\)) # (!\keyLoggerDelay|s_count\(1) & ((!\fsm|Add3~1\) # (!\fsm|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(1),
	datab => \fsm|Add2~2_combout\,
	datad => VCC,
	cin => \fsm|Add3~1\,
	combout => \fsm|Add3~2_combout\,
	cout => \fsm|Add3~3\);

-- Location: FF_X109_Y39_N15
\timerOfFSM|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|s_counter[1]~13_combout\,
	asdata => \fsm|Add3~2_combout\,
	sload => \timerOfFSM|s_counter~10_combout\,
	ena => \timerOfFSM|s_counter[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(1));

-- Location: LCCOMB_X109_Y39_N16
\timerOfFSM|s_counter[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_counter[2]~15_combout\ = (\timerOfFSM|s_counter\(2) & ((GND) # (!\timerOfFSM|s_counter[1]~14\))) # (!\timerOfFSM|s_counter\(2) & (\timerOfFSM|s_counter[1]~14\ $ (GND)))
-- \timerOfFSM|s_counter[2]~16\ = CARRY((\timerOfFSM|s_counter\(2)) # (!\timerOfFSM|s_counter[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(2),
	datad => VCC,
	cin => \timerOfFSM|s_counter[1]~14\,
	combout => \timerOfFSM|s_counter[2]~15_combout\,
	cout => \timerOfFSM|s_counter[2]~16\);

-- Location: LCCOMB_X110_Y40_N4
\regInput|leaven_Time[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regInput|leaven_Time[1]~0_combout\ = !\SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	combout => \regInput|leaven_Time[1]~0_combout\);

-- Location: FF_X110_Y40_N3
\regInput|leaven_Time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \regInput|leaven_Time[1]~0_combout\,
	sload => VCC,
	ena => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regInput|leaven_Time\(1));

-- Location: FF_X110_Y40_N1
\romLeaven|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \regInput|leaven_Time\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \romLeaven|dataOut\(2));

-- Location: LCCOMB_X110_Y40_N6
\fsm|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~0_combout\ = \romCrumple|dataOut\(0) $ (\romLeaven|dataOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \romCrumple|dataOut\(0),
	datad => \romLeaven|dataOut\(2),
	combout => \fsm|Add0~0_combout\);

-- Location: LCCOMB_X110_Y40_N20
\fsm|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add2~4_combout\ = ((\fsm|Add0~0_combout\ $ (\keyLoggerAdjust|s_count\(2) $ (\fsm|Add2~3\)))) # (GND)
-- \fsm|Add2~5\ = CARRY((\fsm|Add0~0_combout\ & (\keyLoggerAdjust|s_count\(2) & !\fsm|Add2~3\)) # (!\fsm|Add0~0_combout\ & ((\keyLoggerAdjust|s_count\(2)) # (!\fsm|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add0~0_combout\,
	datab => \keyLoggerAdjust|s_count\(2),
	datad => VCC,
	cin => \fsm|Add2~3\,
	combout => \fsm|Add2~4_combout\,
	cout => \fsm|Add2~5\);

-- Location: LCCOMB_X109_Y40_N20
\fsm|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add3~4_combout\ = ((\fsm|Add2~4_combout\ $ (\keyLoggerDelay|s_count\(2) $ (!\fsm|Add3~3\)))) # (GND)
-- \fsm|Add3~5\ = CARRY((\fsm|Add2~4_combout\ & ((\keyLoggerDelay|s_count\(2)) # (!\fsm|Add3~3\))) # (!\fsm|Add2~4_combout\ & (\keyLoggerDelay|s_count\(2) & !\fsm|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add2~4_combout\,
	datab => \keyLoggerDelay|s_count\(2),
	datad => VCC,
	cin => \fsm|Add3~3\,
	combout => \fsm|Add3~4_combout\,
	cout => \fsm|Add3~5\);

-- Location: FF_X109_Y39_N17
\timerOfFSM|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|s_counter[2]~15_combout\,
	asdata => \fsm|Add3~4_combout\,
	sload => \timerOfFSM|s_counter~10_combout\,
	ena => \timerOfFSM|s_counter[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(2));

-- Location: LCCOMB_X109_Y39_N18
\timerOfFSM|s_counter[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_counter[3]~17_combout\ = (\timerOfFSM|s_counter\(3) & (\timerOfFSM|s_counter[2]~16\ & VCC)) # (!\timerOfFSM|s_counter\(3) & (!\timerOfFSM|s_counter[2]~16\))
-- \timerOfFSM|s_counter[3]~18\ = CARRY((!\timerOfFSM|s_counter\(3) & !\timerOfFSM|s_counter[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(3),
	datad => VCC,
	cin => \timerOfFSM|s_counter[2]~16\,
	combout => \timerOfFSM|s_counter[3]~17_combout\,
	cout => \timerOfFSM|s_counter[3]~18\);

-- Location: LCCOMB_X110_Y40_N2
\fsm|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add1~0_combout\ = (!\romCrumple|dataOut\(0) & \romLeaven|dataOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \romCrumple|dataOut\(0),
	datad => \romLeaven|dataOut\(2),
	combout => \fsm|Add1~0_combout\);

-- Location: LCCOMB_X110_Y40_N22
\fsm|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add2~6_combout\ = (\keyLoggerAdjust|s_count\(3) & ((\fsm|Add1~0_combout\ & (\fsm|Add2~5\ & VCC)) # (!\fsm|Add1~0_combout\ & (!\fsm|Add2~5\)))) # (!\keyLoggerAdjust|s_count\(3) & ((\fsm|Add1~0_combout\ & (!\fsm|Add2~5\)) # (!\fsm|Add1~0_combout\ & 
-- ((\fsm|Add2~5\) # (GND)))))
-- \fsm|Add2~7\ = CARRY((\keyLoggerAdjust|s_count\(3) & (!\fsm|Add1~0_combout\ & !\fsm|Add2~5\)) # (!\keyLoggerAdjust|s_count\(3) & ((!\fsm|Add2~5\) # (!\fsm|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(3),
	datab => \fsm|Add1~0_combout\,
	datad => VCC,
	cin => \fsm|Add2~5\,
	combout => \fsm|Add2~6_combout\,
	cout => \fsm|Add2~7\);

-- Location: LCCOMB_X109_Y40_N22
\fsm|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add3~6_combout\ = (\keyLoggerDelay|s_count\(3) & ((\fsm|Add2~6_combout\ & (\fsm|Add3~5\ & VCC)) # (!\fsm|Add2~6_combout\ & (!\fsm|Add3~5\)))) # (!\keyLoggerDelay|s_count\(3) & ((\fsm|Add2~6_combout\ & (!\fsm|Add3~5\)) # (!\fsm|Add2~6_combout\ & 
-- ((\fsm|Add3~5\) # (GND)))))
-- \fsm|Add3~7\ = CARRY((\keyLoggerDelay|s_count\(3) & (!\fsm|Add2~6_combout\ & !\fsm|Add3~5\)) # (!\keyLoggerDelay|s_count\(3) & ((!\fsm|Add3~5\) # (!\fsm|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(3),
	datab => \fsm|Add2~6_combout\,
	datad => VCC,
	cin => \fsm|Add3~5\,
	combout => \fsm|Add3~6_combout\,
	cout => \fsm|Add3~7\);

-- Location: FF_X109_Y39_N19
\timerOfFSM|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|s_counter[3]~17_combout\,
	asdata => \fsm|Add3~6_combout\,
	sload => \timerOfFSM|s_counter~10_combout\,
	ena => \timerOfFSM|s_counter[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(3));

-- Location: LCCOMB_X109_Y39_N20
\timerOfFSM|s_counter[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_counter[4]~19_combout\ = (\timerOfFSM|s_counter\(4) & ((GND) # (!\timerOfFSM|s_counter[3]~18\))) # (!\timerOfFSM|s_counter\(4) & (\timerOfFSM|s_counter[3]~18\ $ (GND)))
-- \timerOfFSM|s_counter[4]~20\ = CARRY((\timerOfFSM|s_counter\(4)) # (!\timerOfFSM|s_counter[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(4),
	datad => VCC,
	cin => \timerOfFSM|s_counter[3]~18\,
	combout => \timerOfFSM|s_counter[4]~19_combout\,
	cout => \timerOfFSM|s_counter[4]~20\);

-- Location: LCCOMB_X110_Y40_N24
\fsm|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add2~8_combout\ = ((\romCrumple|dataOut\(0) $ (\keyLoggerAdjust|s_count\(4) $ (\fsm|Add2~7\)))) # (GND)
-- \fsm|Add2~9\ = CARRY((\romCrumple|dataOut\(0) & (\keyLoggerAdjust|s_count\(4) & !\fsm|Add2~7\)) # (!\romCrumple|dataOut\(0) & ((\keyLoggerAdjust|s_count\(4)) # (!\fsm|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \romCrumple|dataOut\(0),
	datab => \keyLoggerAdjust|s_count\(4),
	datad => VCC,
	cin => \fsm|Add2~7\,
	combout => \fsm|Add2~8_combout\,
	cout => \fsm|Add2~9\);

-- Location: LCCOMB_X109_Y40_N24
\fsm|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add3~8_combout\ = ((\keyLoggerDelay|s_count\(4) $ (\fsm|Add2~8_combout\ $ (!\fsm|Add3~7\)))) # (GND)
-- \fsm|Add3~9\ = CARRY((\keyLoggerDelay|s_count\(4) & ((\fsm|Add2~8_combout\) # (!\fsm|Add3~7\))) # (!\keyLoggerDelay|s_count\(4) & (\fsm|Add2~8_combout\ & !\fsm|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(4),
	datab => \fsm|Add2~8_combout\,
	datad => VCC,
	cin => \fsm|Add3~7\,
	combout => \fsm|Add3~8_combout\,
	cout => \fsm|Add3~9\);

-- Location: FF_X109_Y39_N21
\timerOfFSM|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|s_counter[4]~19_combout\,
	asdata => \fsm|Add3~8_combout\,
	sload => \timerOfFSM|s_counter~10_combout\,
	ena => \timerOfFSM|s_counter[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(4));

-- Location: LCCOMB_X109_Y39_N22
\timerOfFSM|s_counter[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_counter[5]~21_combout\ = (\timerOfFSM|s_counter\(5) & (\timerOfFSM|s_counter[4]~20\ & VCC)) # (!\timerOfFSM|s_counter\(5) & (!\timerOfFSM|s_counter[4]~20\))
-- \timerOfFSM|s_counter[5]~22\ = CARRY((!\timerOfFSM|s_counter\(5) & !\timerOfFSM|s_counter[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(5),
	datad => VCC,
	cin => \timerOfFSM|s_counter[4]~20\,
	combout => \timerOfFSM|s_counter[5]~21_combout\,
	cout => \timerOfFSM|s_counter[5]~22\);

-- Location: LCCOMB_X110_Y40_N26
\fsm|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add2~10_combout\ = (\keyLoggerAdjust|s_count\(5) & ((\romCrumple|dataOut\(0) & (\fsm|Add2~9\ & VCC)) # (!\romCrumple|dataOut\(0) & (!\fsm|Add2~9\)))) # (!\keyLoggerAdjust|s_count\(5) & ((\romCrumple|dataOut\(0) & (!\fsm|Add2~9\)) # 
-- (!\romCrumple|dataOut\(0) & ((\fsm|Add2~9\) # (GND)))))
-- \fsm|Add2~11\ = CARRY((\keyLoggerAdjust|s_count\(5) & (!\romCrumple|dataOut\(0) & !\fsm|Add2~9\)) # (!\keyLoggerAdjust|s_count\(5) & ((!\fsm|Add2~9\) # (!\romCrumple|dataOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(5),
	datab => \romCrumple|dataOut\(0),
	datad => VCC,
	cin => \fsm|Add2~9\,
	combout => \fsm|Add2~10_combout\,
	cout => \fsm|Add2~11\);

-- Location: LCCOMB_X109_Y40_N26
\fsm|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add3~10_combout\ = (\fsm|Add2~10_combout\ & ((\keyLoggerDelay|s_count\(5) & (\fsm|Add3~9\ & VCC)) # (!\keyLoggerDelay|s_count\(5) & (!\fsm|Add3~9\)))) # (!\fsm|Add2~10_combout\ & ((\keyLoggerDelay|s_count\(5) & (!\fsm|Add3~9\)) # 
-- (!\keyLoggerDelay|s_count\(5) & ((\fsm|Add3~9\) # (GND)))))
-- \fsm|Add3~11\ = CARRY((\fsm|Add2~10_combout\ & (!\keyLoggerDelay|s_count\(5) & !\fsm|Add3~9\)) # (!\fsm|Add2~10_combout\ & ((!\fsm|Add3~9\) # (!\keyLoggerDelay|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add2~10_combout\,
	datab => \keyLoggerDelay|s_count\(5),
	datad => VCC,
	cin => \fsm|Add3~9\,
	combout => \fsm|Add3~10_combout\,
	cout => \fsm|Add3~11\);

-- Location: FF_X109_Y39_N23
\timerOfFSM|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|s_counter[5]~21_combout\,
	asdata => \fsm|Add3~10_combout\,
	sload => \timerOfFSM|s_counter~10_combout\,
	ena => \timerOfFSM|s_counter[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(5));

-- Location: LCCOMB_X109_Y39_N24
\timerOfFSM|s_counter[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_counter[6]~23_combout\ = (\timerOfFSM|s_counter\(6) & ((GND) # (!\timerOfFSM|s_counter[5]~22\))) # (!\timerOfFSM|s_counter\(6) & (\timerOfFSM|s_counter[5]~22\ $ (GND)))
-- \timerOfFSM|s_counter[6]~24\ = CARRY((\timerOfFSM|s_counter\(6)) # (!\timerOfFSM|s_counter[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(6),
	datad => VCC,
	cin => \timerOfFSM|s_counter[5]~22\,
	combout => \timerOfFSM|s_counter[6]~23_combout\,
	cout => \timerOfFSM|s_counter[6]~24\);

-- Location: LCCOMB_X110_Y40_N28
\fsm|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add2~12_combout\ = (\keyLoggerAdjust|s_count\(6) & (\fsm|Add2~11\ $ (GND))) # (!\keyLoggerAdjust|s_count\(6) & (!\fsm|Add2~11\ & VCC))
-- \fsm|Add2~13\ = CARRY((\keyLoggerAdjust|s_count\(6) & !\fsm|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyLoggerAdjust|s_count\(6),
	datad => VCC,
	cin => \fsm|Add2~11\,
	combout => \fsm|Add2~12_combout\,
	cout => \fsm|Add2~13\);

-- Location: LCCOMB_X109_Y40_N28
\fsm|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add3~12_combout\ = ((\keyLoggerDelay|s_count\(6) $ (\fsm|Add2~12_combout\ $ (!\fsm|Add3~11\)))) # (GND)
-- \fsm|Add3~13\ = CARRY((\keyLoggerDelay|s_count\(6) & ((\fsm|Add2~12_combout\) # (!\fsm|Add3~11\))) # (!\keyLoggerDelay|s_count\(6) & (\fsm|Add2~12_combout\ & !\fsm|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(6),
	datab => \fsm|Add2~12_combout\,
	datad => VCC,
	cin => \fsm|Add3~11\,
	combout => \fsm|Add3~12_combout\,
	cout => \fsm|Add3~13\);

-- Location: FF_X109_Y39_N25
\timerOfFSM|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|s_counter[6]~23_combout\,
	asdata => \fsm|Add3~12_combout\,
	sload => \timerOfFSM|s_counter~10_combout\,
	ena => \timerOfFSM|s_counter[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(6));

-- Location: LCCOMB_X109_Y39_N26
\timerOfFSM|s_counter[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_counter[7]~25_combout\ = \timerOfFSM|s_counter\(7) $ (!\timerOfFSM|s_counter[6]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(7),
	cin => \timerOfFSM|s_counter[6]~24\,
	combout => \timerOfFSM|s_counter[7]~25_combout\);

-- Location: LCCOMB_X110_Y40_N30
\fsm|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add2~14_combout\ = \fsm|Add2~13\ $ (\keyLoggerAdjust|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \keyLoggerAdjust|s_count\(7),
	cin => \fsm|Add2~13\,
	combout => \fsm|Add2~14_combout\);

-- Location: LCCOMB_X109_Y40_N30
\fsm|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add3~14_combout\ = \fsm|Add2~14_combout\ $ (\fsm|Add3~13\ $ (\keyLoggerDelay|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add2~14_combout\,
	datad => \keyLoggerDelay|s_count\(7),
	cin => \fsm|Add3~13\,
	combout => \fsm|Add3~14_combout\);

-- Location: FF_X109_Y39_N27
\timerOfFSM|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|s_counter[7]~25_combout\,
	asdata => \fsm|Add3~14_combout\,
	sload => \timerOfFSM|s_counter~10_combout\,
	ena => \timerOfFSM|s_counter[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(7));

-- Location: LCCOMB_X105_Y40_N30
\timerOfFSM|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Equal0~0_combout\ = (!\timerOfFSM|s_counter\(6) & (!\timerOfFSM|s_counter\(5) & (!\timerOfFSM|s_counter\(7) & !\timerOfFSM|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(6),
	datab => \timerOfFSM|s_counter\(5),
	datac => \timerOfFSM|s_counter\(7),
	datad => \timerOfFSM|s_counter\(0),
	combout => \timerOfFSM|Equal0~0_combout\);

-- Location: LCCOMB_X106_Y40_N4
\timerOfFSM|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_cntZero~0_combout\ = (\fsm|s_currentState.STANDBY~q\ & (\timerOfFSM|Equal0~0_combout\ & (\timerOfFSM|Equal0~1_combout\ & \clkDivider|pulseOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.STANDBY~q\,
	datab => \timerOfFSM|Equal0~0_combout\,
	datac => \timerOfFSM|Equal0~1_combout\,
	datad => \clkDivider|pulseOut~q\,
	combout => \timerOfFSM|s_cntZero~0_combout\);

-- Location: LCCOMB_X106_Y40_N6
\timerOfFSM|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_cntZero~1_combout\ = (\timerOfFSM|s_cntZero~0_combout\) # ((\timerOfFSM|s_cntZero~q\ & ((!\fsm|s_currentState.STANDBY~q\) # (!\timerOfFSM|s_counter[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter[3]~11_combout\,
	datab => \timerOfFSM|s_cntZero~0_combout\,
	datac => \timerOfFSM|s_cntZero~q\,
	datad => \fsm|s_currentState.STANDBY~q\,
	combout => \timerOfFSM|s_cntZero~1_combout\);

-- Location: FF_X106_Y40_N7
\timerOfFSM|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timerOfFSM|s_cntZero~1_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_cntZero~q\);

-- Location: LCCOMB_X109_Y40_N0
\fsm|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add4~0_combout\ = (\keyLoggerDelay|s_count\(0) & (\fsm|Add3~0_combout\ $ (VCC))) # (!\keyLoggerDelay|s_count\(0) & ((\fsm|Add3~0_combout\) # (GND)))
-- \fsm|Add4~1\ = CARRY((\fsm|Add3~0_combout\) # (!\keyLoggerDelay|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(0),
	datab => \fsm|Add3~0_combout\,
	datad => VCC,
	combout => \fsm|Add4~0_combout\,
	cout => \fsm|Add4~1\);

-- Location: LCCOMB_X109_Y40_N2
\fsm|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add4~2_combout\ = (\keyLoggerDelay|s_count\(1) & ((\fsm|Add3~2_combout\ & (!\fsm|Add4~1\)) # (!\fsm|Add3~2_combout\ & ((\fsm|Add4~1\) # (GND))))) # (!\keyLoggerDelay|s_count\(1) & ((\fsm|Add3~2_combout\ & (\fsm|Add4~1\ & VCC)) # 
-- (!\fsm|Add3~2_combout\ & (!\fsm|Add4~1\))))
-- \fsm|Add4~3\ = CARRY((\keyLoggerDelay|s_count\(1) & ((!\fsm|Add4~1\) # (!\fsm|Add3~2_combout\))) # (!\keyLoggerDelay|s_count\(1) & (!\fsm|Add3~2_combout\ & !\fsm|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(1),
	datab => \fsm|Add3~2_combout\,
	datad => VCC,
	cin => \fsm|Add4~1\,
	combout => \fsm|Add4~2_combout\,
	cout => \fsm|Add4~3\);

-- Location: LCCOMB_X109_Y40_N4
\fsm|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add4~4_combout\ = ((\keyLoggerDelay|s_count\(2) $ (\fsm|Add3~4_combout\ $ (\fsm|Add4~3\)))) # (GND)
-- \fsm|Add4~5\ = CARRY((\keyLoggerDelay|s_count\(2) & (\fsm|Add3~4_combout\ & !\fsm|Add4~3\)) # (!\keyLoggerDelay|s_count\(2) & ((\fsm|Add3~4_combout\) # (!\fsm|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(2),
	datab => \fsm|Add3~4_combout\,
	datad => VCC,
	cin => \fsm|Add4~3\,
	combout => \fsm|Add4~4_combout\,
	cout => \fsm|Add4~5\);

-- Location: LCCOMB_X109_Y40_N6
\fsm|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add4~6_combout\ = (\fsm|Add3~6_combout\ & ((\keyLoggerDelay|s_count\(3) & (!\fsm|Add4~5\)) # (!\keyLoggerDelay|s_count\(3) & (\fsm|Add4~5\ & VCC)))) # (!\fsm|Add3~6_combout\ & ((\keyLoggerDelay|s_count\(3) & ((\fsm|Add4~5\) # (GND))) # 
-- (!\keyLoggerDelay|s_count\(3) & (!\fsm|Add4~5\))))
-- \fsm|Add4~7\ = CARRY((\fsm|Add3~6_combout\ & (\keyLoggerDelay|s_count\(3) & !\fsm|Add4~5\)) # (!\fsm|Add3~6_combout\ & ((\keyLoggerDelay|s_count\(3)) # (!\fsm|Add4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add3~6_combout\,
	datab => \keyLoggerDelay|s_count\(3),
	datad => VCC,
	cin => \fsm|Add4~5\,
	combout => \fsm|Add4~6_combout\,
	cout => \fsm|Add4~7\);

-- Location: LCCOMB_X109_Y40_N8
\fsm|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add4~8_combout\ = ((\keyLoggerDelay|s_count\(4) $ (\fsm|Add3~8_combout\ $ (\fsm|Add4~7\)))) # (GND)
-- \fsm|Add4~9\ = CARRY((\keyLoggerDelay|s_count\(4) & (\fsm|Add3~8_combout\ & !\fsm|Add4~7\)) # (!\keyLoggerDelay|s_count\(4) & ((\fsm|Add3~8_combout\) # (!\fsm|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(4),
	datab => \fsm|Add3~8_combout\,
	datad => VCC,
	cin => \fsm|Add4~7\,
	combout => \fsm|Add4~8_combout\,
	cout => \fsm|Add4~9\);

-- Location: LCCOMB_X109_Y40_N10
\fsm|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add4~10_combout\ = (\fsm|Add3~10_combout\ & ((\keyLoggerDelay|s_count\(5) & (!\fsm|Add4~9\)) # (!\keyLoggerDelay|s_count\(5) & (\fsm|Add4~9\ & VCC)))) # (!\fsm|Add3~10_combout\ & ((\keyLoggerDelay|s_count\(5) & ((\fsm|Add4~9\) # (GND))) # 
-- (!\keyLoggerDelay|s_count\(5) & (!\fsm|Add4~9\))))
-- \fsm|Add4~11\ = CARRY((\fsm|Add3~10_combout\ & (\keyLoggerDelay|s_count\(5) & !\fsm|Add4~9\)) # (!\fsm|Add3~10_combout\ & ((\keyLoggerDelay|s_count\(5)) # (!\fsm|Add4~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add3~10_combout\,
	datab => \keyLoggerDelay|s_count\(5),
	datad => VCC,
	cin => \fsm|Add4~9\,
	combout => \fsm|Add4~10_combout\,
	cout => \fsm|Add4~11\);

-- Location: LCCOMB_X109_Y40_N12
\fsm|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add4~12_combout\ = ((\keyLoggerDelay|s_count\(6) $ (\fsm|Add3~12_combout\ $ (\fsm|Add4~11\)))) # (GND)
-- \fsm|Add4~13\ = CARRY((\keyLoggerDelay|s_count\(6) & (\fsm|Add3~12_combout\ & !\fsm|Add4~11\)) # (!\keyLoggerDelay|s_count\(6) & ((\fsm|Add3~12_combout\) # (!\fsm|Add4~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerDelay|s_count\(6),
	datab => \fsm|Add3~12_combout\,
	datad => VCC,
	cin => \fsm|Add4~11\,
	combout => \fsm|Add4~12_combout\,
	cout => \fsm|Add4~13\);

-- Location: LCCOMB_X109_Y40_N14
\fsm|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add4~14_combout\ = \fsm|Add3~14_combout\ $ (\fsm|Add4~13\ $ (!\keyLoggerDelay|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add3~14_combout\,
	datad => \keyLoggerDelay|s_count\(7),
	cin => \fsm|Add4~13\,
	combout => \fsm|Add4~14_combout\);

-- Location: LCCOMB_X108_Y39_N22
\fsm|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal0~3_combout\ = (\timerOfFSM|s_counter\(6) & (\fsm|Add4~12_combout\ & (\timerOfFSM|s_counter\(7) $ (!\fsm|Add4~14_combout\)))) # (!\timerOfFSM|s_counter\(6) & (!\fsm|Add4~12_combout\ & (\timerOfFSM|s_counter\(7) $ (!\fsm|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(6),
	datab => \timerOfFSM|s_counter\(7),
	datac => \fsm|Add4~12_combout\,
	datad => \fsm|Add4~14_combout\,
	combout => \fsm|Equal0~3_combout\);

-- Location: LCCOMB_X108_Y39_N18
\fsm|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal0~0_combout\ = (\timerOfFSM|s_counter\(0) & (\fsm|Add4~0_combout\ & (\timerOfFSM|s_counter\(1) $ (!\fsm|Add4~2_combout\)))) # (!\timerOfFSM|s_counter\(0) & (!\fsm|Add4~0_combout\ & (\timerOfFSM|s_counter\(1) $ (!\fsm|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(0),
	datab => \timerOfFSM|s_counter\(1),
	datac => \fsm|Add4~2_combout\,
	datad => \fsm|Add4~0_combout\,
	combout => \fsm|Equal0~0_combout\);

-- Location: LCCOMB_X108_Y39_N26
\fsm|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal0~1_combout\ = (\timerOfFSM|s_counter\(3) & (\fsm|Add4~6_combout\ & (\timerOfFSM|s_counter\(2) $ (!\fsm|Add4~4_combout\)))) # (!\timerOfFSM|s_counter\(3) & (!\fsm|Add4~6_combout\ & (\timerOfFSM|s_counter\(2) $ (!\fsm|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(3),
	datab => \timerOfFSM|s_counter\(2),
	datac => \fsm|Add4~4_combout\,
	datad => \fsm|Add4~6_combout\,
	combout => \fsm|Equal0~1_combout\);

-- Location: LCCOMB_X108_Y39_N20
\fsm|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal0~2_combout\ = (\timerOfFSM|s_counter\(4) & (\fsm|Add4~8_combout\ & (\fsm|Add4~10_combout\ $ (!\timerOfFSM|s_counter\(5))))) # (!\timerOfFSM|s_counter\(4) & (!\fsm|Add4~8_combout\ & (\fsm|Add4~10_combout\ $ (!\timerOfFSM|s_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(4),
	datab => \fsm|Add4~10_combout\,
	datac => \fsm|Add4~8_combout\,
	datad => \timerOfFSM|s_counter\(5),
	combout => \fsm|Equal0~2_combout\);

-- Location: LCCOMB_X108_Y39_N10
\fsm|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal0~4_combout\ = (\fsm|Equal0~3_combout\ & (\fsm|Equal0~0_combout\ & (\fsm|Equal0~1_combout\ & \fsm|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Equal0~3_combout\,
	datab => \fsm|Equal0~0_combout\,
	datac => \fsm|Equal0~1_combout\,
	datad => \fsm|Equal0~2_combout\,
	combout => \fsm|Equal0~4_combout\);

-- Location: LCCOMB_X108_Y40_N16
\fsm|Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add5~1_cout\ = CARRY((\fsm|Add4~0_combout\) # (!\romCrumple|dataOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \romCrumple|dataOut\(0),
	datab => \fsm|Add4~0_combout\,
	datad => VCC,
	cout => \fsm|Add5~1_cout\);

-- Location: LCCOMB_X108_Y40_N18
\fsm|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add5~2_combout\ = (\fsm|Add4~2_combout\ & (!\fsm|Add5~1_cout\)) # (!\fsm|Add4~2_combout\ & ((\fsm|Add5~1_cout\) # (GND)))
-- \fsm|Add5~3\ = CARRY((!\fsm|Add5~1_cout\) # (!\fsm|Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add4~2_combout\,
	datad => VCC,
	cin => \fsm|Add5~1_cout\,
	combout => \fsm|Add5~2_combout\,
	cout => \fsm|Add5~3\);

-- Location: LCCOMB_X108_Y40_N20
\fsm|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add5~4_combout\ = ((\fsm|Add4~4_combout\ $ (\romCrumple|dataOut\(0) $ (\fsm|Add5~3\)))) # (GND)
-- \fsm|Add5~5\ = CARRY((\fsm|Add4~4_combout\ & ((!\fsm|Add5~3\) # (!\romCrumple|dataOut\(0)))) # (!\fsm|Add4~4_combout\ & (!\romCrumple|dataOut\(0) & !\fsm|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add4~4_combout\,
	datab => \romCrumple|dataOut\(0),
	datad => VCC,
	cin => \fsm|Add5~3\,
	combout => \fsm|Add5~4_combout\,
	cout => \fsm|Add5~5\);

-- Location: LCCOMB_X108_Y40_N22
\fsm|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add5~6_combout\ = (\fsm|Add4~6_combout\ & (!\fsm|Add5~5\)) # (!\fsm|Add4~6_combout\ & ((\fsm|Add5~5\) # (GND)))
-- \fsm|Add5~7\ = CARRY((!\fsm|Add5~5\) # (!\fsm|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add4~6_combout\,
	datad => VCC,
	cin => \fsm|Add5~5\,
	combout => \fsm|Add5~6_combout\,
	cout => \fsm|Add5~7\);

-- Location: LCCOMB_X108_Y40_N24
\fsm|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add5~8_combout\ = (\fsm|Add4~8_combout\ & ((GND) # (!\fsm|Add5~7\))) # (!\fsm|Add4~8_combout\ & (\fsm|Add5~7\ $ (GND)))
-- \fsm|Add5~9\ = CARRY((\fsm|Add4~8_combout\) # (!\fsm|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add4~8_combout\,
	datad => VCC,
	cin => \fsm|Add5~7\,
	combout => \fsm|Add5~8_combout\,
	cout => \fsm|Add5~9\);

-- Location: LCCOMB_X105_Y40_N14
\fsm|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add6~0_combout\ = \keyLoggerAdjust|s_count\(0) $ (VCC)
-- \fsm|Add6~1\ = CARRY(\keyLoggerAdjust|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(0),
	datad => VCC,
	combout => \fsm|Add6~0_combout\,
	cout => \fsm|Add6~1\);

-- Location: LCCOMB_X105_Y40_N16
\fsm|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add6~2_combout\ = (\fsm|Add5~2_combout\ & (\fsm|Add6~1\ & VCC)) # (!\fsm|Add5~2_combout\ & (!\fsm|Add6~1\))
-- \fsm|Add6~3\ = CARRY((!\fsm|Add5~2_combout\ & !\fsm|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add5~2_combout\,
	datad => VCC,
	cin => \fsm|Add6~1\,
	combout => \fsm|Add6~2_combout\,
	cout => \fsm|Add6~3\);

-- Location: LCCOMB_X105_Y40_N18
\fsm|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add6~4_combout\ = (\fsm|Add5~4_combout\ & ((GND) # (!\fsm|Add6~3\))) # (!\fsm|Add5~4_combout\ & (\fsm|Add6~3\ $ (GND)))
-- \fsm|Add6~5\ = CARRY((\fsm|Add5~4_combout\) # (!\fsm|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add5~4_combout\,
	datad => VCC,
	cin => \fsm|Add6~3\,
	combout => \fsm|Add6~4_combout\,
	cout => \fsm|Add6~5\);

-- Location: LCCOMB_X105_Y40_N20
\fsm|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add6~6_combout\ = (\fsm|Add5~6_combout\ & (\fsm|Add6~5\ & VCC)) # (!\fsm|Add5~6_combout\ & (!\fsm|Add6~5\))
-- \fsm|Add6~7\ = CARRY((!\fsm|Add5~6_combout\ & !\fsm|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add5~6_combout\,
	datad => VCC,
	cin => \fsm|Add6~5\,
	combout => \fsm|Add6~6_combout\,
	cout => \fsm|Add6~7\);

-- Location: LCCOMB_X105_Y40_N22
\fsm|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add6~8_combout\ = (\fsm|Add5~8_combout\ & ((GND) # (!\fsm|Add6~7\))) # (!\fsm|Add5~8_combout\ & (\fsm|Add6~7\ $ (GND)))
-- \fsm|Add6~9\ = CARRY((\fsm|Add5~8_combout\) # (!\fsm|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add5~8_combout\,
	datad => VCC,
	cin => \fsm|Add6~7\,
	combout => \fsm|Add6~8_combout\,
	cout => \fsm|Add6~9\);

-- Location: LCCOMB_X108_Y40_N26
\fsm|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add5~10_combout\ = (\fsm|Add4~10_combout\ & (\fsm|Add5~9\ & VCC)) # (!\fsm|Add4~10_combout\ & (!\fsm|Add5~9\))
-- \fsm|Add5~11\ = CARRY((!\fsm|Add4~10_combout\ & !\fsm|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add4~10_combout\,
	datad => VCC,
	cin => \fsm|Add5~9\,
	combout => \fsm|Add5~10_combout\,
	cout => \fsm|Add5~11\);

-- Location: LCCOMB_X105_Y40_N24
\fsm|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add6~10_combout\ = (\fsm|Add5~10_combout\ & (\fsm|Add6~9\ & VCC)) # (!\fsm|Add5~10_combout\ & (!\fsm|Add6~9\))
-- \fsm|Add6~11\ = CARRY((!\fsm|Add5~10_combout\ & !\fsm|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add5~10_combout\,
	datad => VCC,
	cin => \fsm|Add6~9\,
	combout => \fsm|Add6~10_combout\,
	cout => \fsm|Add6~11\);

-- Location: LCCOMB_X105_Y40_N2
\fsm|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal1~2_combout\ = (\timerOfFSM|s_counter\(4) & (\fsm|Add6~8_combout\ & (\timerOfFSM|s_counter\(5) $ (!\fsm|Add6~10_combout\)))) # (!\timerOfFSM|s_counter\(4) & (!\fsm|Add6~8_combout\ & (\timerOfFSM|s_counter\(5) $ (!\fsm|Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(4),
	datab => \timerOfFSM|s_counter\(5),
	datac => \fsm|Add6~8_combout\,
	datad => \fsm|Add6~10_combout\,
	combout => \fsm|Equal1~2_combout\);

-- Location: LCCOMB_X105_Y40_N6
\fsm|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal1~0_combout\ = (\timerOfFSM|s_counter\(0) & (\fsm|Add6~0_combout\ & (\timerOfFSM|s_counter\(1) $ (!\fsm|Add6~2_combout\)))) # (!\timerOfFSM|s_counter\(0) & (!\fsm|Add6~0_combout\ & (\timerOfFSM|s_counter\(1) $ (!\fsm|Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(0),
	datab => \fsm|Add6~0_combout\,
	datac => \timerOfFSM|s_counter\(1),
	datad => \fsm|Add6~2_combout\,
	combout => \fsm|Equal1~0_combout\);

-- Location: LCCOMB_X105_Y40_N0
\fsm|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal1~1_combout\ = (\timerOfFSM|s_counter\(3) & (\fsm|Add6~6_combout\ & (\fsm|Add6~4_combout\ $ (!\timerOfFSM|s_counter\(2))))) # (!\timerOfFSM|s_counter\(3) & (!\fsm|Add6~6_combout\ & (\fsm|Add6~4_combout\ $ (!\timerOfFSM|s_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(3),
	datab => \fsm|Add6~4_combout\,
	datac => \timerOfFSM|s_counter\(2),
	datad => \fsm|Add6~6_combout\,
	combout => \fsm|Equal1~1_combout\);

-- Location: LCCOMB_X108_Y40_N28
\fsm|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add5~12_combout\ = (\fsm|Add4~12_combout\ & ((GND) # (!\fsm|Add5~11\))) # (!\fsm|Add4~12_combout\ & (\fsm|Add5~11\ $ (GND)))
-- \fsm|Add5~13\ = CARRY((\fsm|Add4~12_combout\) # (!\fsm|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add4~12_combout\,
	datad => VCC,
	cin => \fsm|Add5~11\,
	combout => \fsm|Add5~12_combout\,
	cout => \fsm|Add5~13\);

-- Location: LCCOMB_X105_Y40_N26
\fsm|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add6~12_combout\ = (\fsm|Add5~12_combout\ & ((GND) # (!\fsm|Add6~11\))) # (!\fsm|Add5~12_combout\ & (\fsm|Add6~11\ $ (GND)))
-- \fsm|Add6~13\ = CARRY((\fsm|Add5~12_combout\) # (!\fsm|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add5~12_combout\,
	datad => VCC,
	cin => \fsm|Add6~11\,
	combout => \fsm|Add6~12_combout\,
	cout => \fsm|Add6~13\);

-- Location: LCCOMB_X108_Y40_N30
\fsm|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add5~14_combout\ = \fsm|Add5~13\ $ (!\fsm|Add4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fsm|Add4~14_combout\,
	cin => \fsm|Add5~13\,
	combout => \fsm|Add5~14_combout\);

-- Location: LCCOMB_X105_Y40_N28
\fsm|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add6~14_combout\ = \fsm|Add6~13\ $ (!\fsm|Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fsm|Add5~14_combout\,
	cin => \fsm|Add6~13\,
	combout => \fsm|Add6~14_combout\);

-- Location: LCCOMB_X105_Y40_N8
\fsm|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal1~3_combout\ = (\timerOfFSM|s_counter\(6) & (\fsm|Add6~12_combout\ & (\timerOfFSM|s_counter\(7) $ (!\fsm|Add6~14_combout\)))) # (!\timerOfFSM|s_counter\(6) & (!\fsm|Add6~12_combout\ & (\timerOfFSM|s_counter\(7) $ (!\fsm|Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(6),
	datab => \timerOfFSM|s_counter\(7),
	datac => \fsm|Add6~12_combout\,
	datad => \fsm|Add6~14_combout\,
	combout => \fsm|Equal1~3_combout\);

-- Location: LCCOMB_X106_Y40_N28
\fsm|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal1~4_combout\ = (\fsm|Equal1~2_combout\ & (\fsm|Equal1~0_combout\ & (\fsm|Equal1~1_combout\ & \fsm|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Equal1~2_combout\,
	datab => \fsm|Equal1~0_combout\,
	datac => \fsm|Equal1~1_combout\,
	datad => \fsm|Equal1~3_combout\,
	combout => \fsm|Equal1~4_combout\);

-- Location: LCCOMB_X108_Y39_N24
\fsm|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector13~0_combout\ = (\fsm|Equal0~4_combout\ & (\toggleSwitch|current_state~q\ & ((!\fsm|s_currentState.STANDBY~q\)))) # (!\fsm|Equal0~4_combout\ & ((\fsm|s_currentState.DELAY~q\) # ((\toggleSwitch|current_state~q\ & 
-- !\fsm|s_currentState.STANDBY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Equal0~4_combout\,
	datab => \toggleSwitch|current_state~q\,
	datac => \fsm|s_currentState.DELAY~q\,
	datad => \fsm|s_currentState.STANDBY~q\,
	combout => \fsm|Selector13~0_combout\);

-- Location: FF_X108_Y39_N1
\fsm|s_currentState.DELAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fsm|Selector13~0_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.DELAY~q\);

-- Location: LCCOMB_X107_Y40_N22
\fsm|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector14~0_combout\ = (\fsm|Equal0~4_combout\ & ((\fsm|s_currentState.DELAY~q\) # ((!\fsm|Equal1~4_combout\ & \fsm|s_currentState.CRUMPLE~q\)))) # (!\fsm|Equal0~4_combout\ & (!\fsm|Equal1~4_combout\ & (\fsm|s_currentState.CRUMPLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Equal0~4_combout\,
	datab => \fsm|Equal1~4_combout\,
	datac => \fsm|s_currentState.CRUMPLE~q\,
	datad => \fsm|s_currentState.DELAY~q\,
	combout => \fsm|Selector14~0_combout\);

-- Location: FF_X107_Y40_N23
\fsm|s_currentState.CRUMPLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fsm|Selector14~0_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.CRUMPLE~q\);

-- Location: LCCOMB_X108_Y40_N0
\fsm|Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add7~1_cout\ = CARRY(\keyLoggerAdjust|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyLoggerAdjust|s_count\(0),
	datad => VCC,
	cout => \fsm|Add7~1_cout\);

-- Location: LCCOMB_X108_Y40_N2
\fsm|Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add7~2_combout\ = (\fsm|Add5~2_combout\ & (\fsm|Add7~1_cout\ & VCC)) # (!\fsm|Add5~2_combout\ & (!\fsm|Add7~1_cout\))
-- \fsm|Add7~3\ = CARRY((!\fsm|Add5~2_combout\ & !\fsm|Add7~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add5~2_combout\,
	datad => VCC,
	cin => \fsm|Add7~1_cout\,
	combout => \fsm|Add7~2_combout\,
	cout => \fsm|Add7~3\);

-- Location: LCCOMB_X108_Y40_N4
\fsm|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add7~4_combout\ = ((\romLeaven|dataOut\(2) $ (\fsm|Add5~4_combout\ $ (\fsm|Add7~3\)))) # (GND)
-- \fsm|Add7~5\ = CARRY((\romLeaven|dataOut\(2) & (\fsm|Add5~4_combout\ & !\fsm|Add7~3\)) # (!\romLeaven|dataOut\(2) & ((\fsm|Add5~4_combout\) # (!\fsm|Add7~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \romLeaven|dataOut\(2),
	datab => \fsm|Add5~4_combout\,
	datad => VCC,
	cin => \fsm|Add7~3\,
	combout => \fsm|Add7~4_combout\,
	cout => \fsm|Add7~5\);

-- Location: LCCOMB_X108_Y40_N6
\fsm|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add7~6_combout\ = (\fsm|Add5~6_combout\ & ((\romCrumple|dataOut\(0) & (!\fsm|Add7~5\)) # (!\romCrumple|dataOut\(0) & (\fsm|Add7~5\ & VCC)))) # (!\fsm|Add5~6_combout\ & ((\romCrumple|dataOut\(0) & ((\fsm|Add7~5\) # (GND))) # (!\romCrumple|dataOut\(0) 
-- & (!\fsm|Add7~5\))))
-- \fsm|Add7~7\ = CARRY((\fsm|Add5~6_combout\ & (\romCrumple|dataOut\(0) & !\fsm|Add7~5\)) # (!\fsm|Add5~6_combout\ & ((\romCrumple|dataOut\(0)) # (!\fsm|Add7~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add5~6_combout\,
	datab => \romCrumple|dataOut\(0),
	datad => VCC,
	cin => \fsm|Add7~5\,
	combout => \fsm|Add7~6_combout\,
	cout => \fsm|Add7~7\);

-- Location: LCCOMB_X108_Y40_N8
\fsm|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add7~8_combout\ = (\fsm|Add5~8_combout\ & ((GND) # (!\fsm|Add7~7\))) # (!\fsm|Add5~8_combout\ & (\fsm|Add7~7\ $ (GND)))
-- \fsm|Add7~9\ = CARRY((\fsm|Add5~8_combout\) # (!\fsm|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add5~8_combout\,
	datad => VCC,
	cin => \fsm|Add7~7\,
	combout => \fsm|Add7~8_combout\,
	cout => \fsm|Add7~9\);

-- Location: LCCOMB_X107_Y40_N14
\fsm|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal2~0_combout\ = (\timerOfFSM|s_counter\(3) & (\fsm|Add7~6_combout\ & (\timerOfFSM|s_counter\(4) $ (!\fsm|Add7~8_combout\)))) # (!\timerOfFSM|s_counter\(3) & (!\fsm|Add7~6_combout\ & (\timerOfFSM|s_counter\(4) $ (!\fsm|Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(3),
	datab => \timerOfFSM|s_counter\(4),
	datac => \fsm|Add7~8_combout\,
	datad => \fsm|Add7~6_combout\,
	combout => \fsm|Equal2~0_combout\);

-- Location: LCCOMB_X107_Y40_N18
\fsm|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal2~1_combout\ = (\timerOfFSM|s_counter\(1) & (\fsm|Add7~2_combout\ & (\timerOfFSM|s_counter\(0) $ (\keyLoggerAdjust|s_count\(0))))) # (!\timerOfFSM|s_counter\(1) & (!\fsm|Add7~2_combout\ & (\timerOfFSM|s_counter\(0) $ 
-- (\keyLoggerAdjust|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(1),
	datab => \fsm|Add7~2_combout\,
	datac => \timerOfFSM|s_counter\(0),
	datad => \keyLoggerAdjust|s_count\(0),
	combout => \fsm|Equal2~1_combout\);

-- Location: LCCOMB_X108_Y40_N10
\fsm|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add7~10_combout\ = (\fsm|Add5~10_combout\ & (\fsm|Add7~9\ & VCC)) # (!\fsm|Add5~10_combout\ & (!\fsm|Add7~9\))
-- \fsm|Add7~11\ = CARRY((!\fsm|Add5~10_combout\ & !\fsm|Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add5~10_combout\,
	datad => VCC,
	cin => \fsm|Add7~9\,
	combout => \fsm|Add7~10_combout\,
	cout => \fsm|Add7~11\);

-- Location: LCCOMB_X108_Y40_N12
\fsm|Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add7~12_combout\ = (\fsm|Add5~12_combout\ & ((GND) # (!\fsm|Add7~11\))) # (!\fsm|Add5~12_combout\ & (\fsm|Add7~11\ $ (GND)))
-- \fsm|Add7~13\ = CARRY((\fsm|Add5~12_combout\) # (!\fsm|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add5~12_combout\,
	datad => VCC,
	cin => \fsm|Add7~11\,
	combout => \fsm|Add7~12_combout\,
	cout => \fsm|Add7~13\);

-- Location: LCCOMB_X108_Y40_N14
\fsm|Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add7~14_combout\ = \fsm|Add7~13\ $ (!\fsm|Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fsm|Add5~14_combout\,
	cin => \fsm|Add7~13\,
	combout => \fsm|Add7~14_combout\);

-- Location: LCCOMB_X107_Y40_N10
\fsm|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal2~2_combout\ = (\timerOfFSM|s_counter\(7) & ((\timerOfFSM|s_counter\(5) $ (\fsm|Add7~10_combout\)) # (!\fsm|Add7~14_combout\))) # (!\timerOfFSM|s_counter\(7) & ((\fsm|Add7~14_combout\) # (\timerOfFSM|s_counter\(5) $ (\fsm|Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(7),
	datab => \timerOfFSM|s_counter\(5),
	datac => \fsm|Add7~14_combout\,
	datad => \fsm|Add7~10_combout\,
	combout => \fsm|Equal2~2_combout\);

-- Location: LCCOMB_X107_Y40_N6
\fsm|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal2~3_combout\ = (\fsm|Equal2~1_combout\ & (!\fsm|Equal2~2_combout\ & (\timerOfFSM|s_counter\(6) $ (!\fsm|Add7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(6),
	datab => \fsm|Equal2~1_combout\,
	datac => \fsm|Add7~12_combout\,
	datad => \fsm|Equal2~2_combout\,
	combout => \fsm|Equal2~3_combout\);

-- Location: LCCOMB_X107_Y40_N24
\fsm|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal2~4_combout\ = (\fsm|Equal2~0_combout\ & (\fsm|Equal2~3_combout\ & (\fsm|Add7~4_combout\ $ (!\timerOfFSM|s_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add7~4_combout\,
	datab => \timerOfFSM|s_counter\(2),
	datac => \fsm|Equal2~0_combout\,
	datad => \fsm|Equal2~3_combout\,
	combout => \fsm|Equal2~4_combout\);

-- Location: LCCOMB_X107_Y40_N12
\fsm|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector15~0_combout\ = (\fsm|s_currentState.CRUMPLE~q\ & ((\fsm|Equal1~4_combout\) # ((!\fsm|Equal2~4_combout\ & \fsm|s_currentState.LEAVEN~q\)))) # (!\fsm|s_currentState.CRUMPLE~q\ & (!\fsm|Equal2~4_combout\ & (\fsm|s_currentState.LEAVEN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.CRUMPLE~q\,
	datab => \fsm|Equal2~4_combout\,
	datac => \fsm|s_currentState.LEAVEN~q\,
	datad => \fsm|Equal1~4_combout\,
	combout => \fsm|Selector15~0_combout\);

-- Location: FF_X107_Y40_N13
\fsm|s_currentState.LEAVEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fsm|Selector15~0_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.LEAVEN~q\);

-- Location: LCCOMB_X107_Y40_N0
\fsm|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector16~0_combout\ = (\fsm|s_currentState.LEAVEN~q\ & ((\fsm|Equal2~4_combout\) # ((!\timerOfFSM|s_cntZero~q\ & \fsm|s_currentState.COOK~q\)))) # (!\fsm|s_currentState.LEAVEN~q\ & (!\timerOfFSM|s_cntZero~q\ & (\fsm|s_currentState.COOK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.LEAVEN~q\,
	datab => \timerOfFSM|s_cntZero~q\,
	datac => \fsm|s_currentState.COOK~q\,
	datad => \fsm|Equal2~4_combout\,
	combout => \fsm|Selector16~0_combout\);

-- Location: LCCOMB_X107_Y40_N4
\fsm|s_currentState.COOK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState.COOK~feeder_combout\ = \fsm|Selector16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|Selector16~0_combout\,
	combout => \fsm|s_currentState.COOK~feeder_combout\);

-- Location: FF_X107_Y40_N5
\fsm|s_currentState.COOK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|s_currentState.COOK~feeder_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.COOK~q\);

-- Location: LCCOMB_X106_Y40_N26
\fsm|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector17~0_combout\ = (\timerOfFSM|s_cntZero~q\ & ((\fsm|s_currentState.COOK~q\) # ((!\timerOfDelay|s_cntZero~q\ & \fsm|s_currentState.FINISH~q\)))) # (!\timerOfFSM|s_cntZero~q\ & (!\timerOfDelay|s_cntZero~q\ & (\fsm|s_currentState.FINISH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_cntZero~q\,
	datab => \timerOfDelay|s_cntZero~q\,
	datac => \fsm|s_currentState.FINISH~q\,
	datad => \fsm|s_currentState.COOK~q\,
	combout => \fsm|Selector17~0_combout\);

-- Location: FF_X106_Y40_N27
\fsm|s_currentState.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fsm|Selector17~0_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.FINISH~q\);

-- Location: LCCOMB_X106_Y40_N30
\fsm|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector10~0_combout\ = (\fsm|s_currentState.FINISH~q\) # ((\fsm|s_currentState.COOK~q\ & \timerOfFSM|s_cntZero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.COOK~q\,
	datac => \fsm|s_currentState.FINISH~q\,
	datad => \timerOfFSM|s_cntZero~q\,
	combout => \fsm|Selector10~0_combout\);

-- Location: LCCOMB_X106_Y40_N20
\fsm|delayNewTime\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|delayNewTime~combout\ = (\fsm|Selector10~0_combout\ & ((!\fsm|s_currentState.FINISH~q\))) # (!\fsm|Selector10~0_combout\ & (\fsm|delayNewTime~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|delayNewTime~combout\,
	datac => \fsm|s_currentState.FINISH~q\,
	datad => \fsm|Selector10~0_combout\,
	combout => \fsm|delayNewTime~combout\);

-- Location: LCCOMB_X103_Y40_N28
\timerOfDelay|s_counter[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_counter[7]~10_combout\ = (\fsm|delayNewTime~combout\) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|delayNewTime~combout\,
	datad => \KEY[2]~input_o\,
	combout => \timerOfDelay|s_counter[7]~10_combout\);

-- Location: LCCOMB_X103_Y40_N4
\timerOfDelay|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|Equal0~0_combout\ = (!\timerOfDelay|s_counter\(0) & (!\timerOfDelay|s_counter\(2) & (!\timerOfDelay|s_counter\(1) & !\timerOfDelay|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfDelay|s_counter\(0),
	datab => \timerOfDelay|s_counter\(2),
	datac => \timerOfDelay|s_counter\(1),
	datad => \timerOfDelay|s_counter\(3),
	combout => \timerOfDelay|Equal0~0_combout\);

-- Location: LCCOMB_X103_Y40_N6
\timerOfDelay|s_counter[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_counter[7]~11_combout\ = ((\timerOfDelay|Equal0~1_combout\ & \timerOfDelay|Equal0~0_combout\)) # (!\clkDivider|pulseOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfDelay|Equal0~1_combout\,
	datac => \timerOfDelay|Equal0~0_combout\,
	datad => \clkDivider|pulseOut~q\,
	combout => \timerOfDelay|s_counter[7]~11_combout\);

-- Location: LCCOMB_X107_Y40_N28
\fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~0_combout\ = (!\fsm|s_currentState.CRUMPLE~q\ & !\fsm|s_currentState.LEAVEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|s_currentState.CRUMPLE~q\,
	datad => \fsm|s_currentState.LEAVEN~q\,
	combout => \fsm|Selector0~0_combout\);

-- Location: LCCOMB_X107_Y40_N30
\fsm|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~1_combout\ = (!\fsm|s_currentState.DELAY~q\ & (\fsm|Selector0~0_combout\ & ((\timerOfFSM|s_cntZero~q\) # (!\fsm|s_currentState.COOK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.DELAY~q\,
	datab => \timerOfFSM|s_cntZero~q\,
	datac => \fsm|s_currentState.COOK~q\,
	datad => \fsm|Selector0~0_combout\,
	combout => \fsm|Selector0~1_combout\);

-- Location: LCCOMB_X106_Y40_N16
\fsm|delay_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|delay_enable~combout\ = (\fsm|Selector0~1_combout\ & ((\fsm|s_currentState.STANDBY~q\))) # (!\fsm|Selector0~1_combout\ & (\fsm|delay_enable~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|delay_enable~combout\,
	datac => \fsm|Selector0~1_combout\,
	datad => \fsm|s_currentState.STANDBY~q\,
	combout => \fsm|delay_enable~combout\);

-- Location: LCCOMB_X103_Y40_N0
\timerOfDelay|s_counter[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_counter[7]~12_combout\ = ((\fsm|delayNewTime~combout\) # ((!\timerOfDelay|s_counter[7]~11_combout\ & \fsm|delay_enable~combout\))) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfDelay|s_counter[7]~11_combout\,
	datab => \KEY[2]~input_o\,
	datac => \fsm|delay_enable~combout\,
	datad => \fsm|delayNewTime~combout\,
	combout => \timerOfDelay|s_counter[7]~12_combout\);

-- Location: FF_X103_Y40_N13
\timerOfDelay|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfDelay|s_counter[0]~8_combout\,
	asdata => VCC,
	sload => \timerOfDelay|s_counter[7]~10_combout\,
	ena => \timerOfDelay|s_counter[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfDelay|s_counter\(0));

-- Location: LCCOMB_X103_Y40_N14
\timerOfDelay|s_counter[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_counter[1]~13_combout\ = (\timerOfDelay|s_counter\(1) & (\timerOfDelay|s_counter[0]~9\ & VCC)) # (!\timerOfDelay|s_counter\(1) & (!\timerOfDelay|s_counter[0]~9\))
-- \timerOfDelay|s_counter[1]~14\ = CARRY((!\timerOfDelay|s_counter\(1) & !\timerOfDelay|s_counter[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfDelay|s_counter\(1),
	datad => VCC,
	cin => \timerOfDelay|s_counter[0]~9\,
	combout => \timerOfDelay|s_counter[1]~13_combout\,
	cout => \timerOfDelay|s_counter[1]~14\);

-- Location: LCCOMB_X103_Y40_N30
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X103_Y40_N15
\timerOfDelay|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfDelay|s_counter[1]~13_combout\,
	asdata => \~GND~combout\,
	sload => \timerOfDelay|s_counter[7]~10_combout\,
	ena => \timerOfDelay|s_counter[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfDelay|s_counter\(1));

-- Location: LCCOMB_X103_Y40_N16
\timerOfDelay|s_counter[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_counter[2]~15_combout\ = (\timerOfDelay|s_counter\(2) & ((GND) # (!\timerOfDelay|s_counter[1]~14\))) # (!\timerOfDelay|s_counter\(2) & (\timerOfDelay|s_counter[1]~14\ $ (GND)))
-- \timerOfDelay|s_counter[2]~16\ = CARRY((\timerOfDelay|s_counter\(2)) # (!\timerOfDelay|s_counter[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfDelay|s_counter\(2),
	datad => VCC,
	cin => \timerOfDelay|s_counter[1]~14\,
	combout => \timerOfDelay|s_counter[2]~15_combout\,
	cout => \timerOfDelay|s_counter[2]~16\);

-- Location: FF_X103_Y40_N17
\timerOfDelay|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfDelay|s_counter[2]~15_combout\,
	asdata => \~GND~combout\,
	sload => \timerOfDelay|s_counter[7]~10_combout\,
	ena => \timerOfDelay|s_counter[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfDelay|s_counter\(2));

-- Location: LCCOMB_X103_Y40_N18
\timerOfDelay|s_counter[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_counter[3]~17_combout\ = (\timerOfDelay|s_counter\(3) & (\timerOfDelay|s_counter[2]~16\ & VCC)) # (!\timerOfDelay|s_counter\(3) & (!\timerOfDelay|s_counter[2]~16\))
-- \timerOfDelay|s_counter[3]~18\ = CARRY((!\timerOfDelay|s_counter\(3) & !\timerOfDelay|s_counter[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfDelay|s_counter\(3),
	datad => VCC,
	cin => \timerOfDelay|s_counter[2]~16\,
	combout => \timerOfDelay|s_counter[3]~17_combout\,
	cout => \timerOfDelay|s_counter[3]~18\);

-- Location: FF_X103_Y40_N19
\timerOfDelay|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfDelay|s_counter[3]~17_combout\,
	asdata => \~GND~combout\,
	sload => \timerOfDelay|s_counter[7]~10_combout\,
	ena => \timerOfDelay|s_counter[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfDelay|s_counter\(3));

-- Location: LCCOMB_X103_Y40_N20
\timerOfDelay|s_counter[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_counter[4]~19_combout\ = (\timerOfDelay|s_counter\(4) & ((GND) # (!\timerOfDelay|s_counter[3]~18\))) # (!\timerOfDelay|s_counter\(4) & (\timerOfDelay|s_counter[3]~18\ $ (GND)))
-- \timerOfDelay|s_counter[4]~20\ = CARRY((\timerOfDelay|s_counter\(4)) # (!\timerOfDelay|s_counter[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfDelay|s_counter\(4),
	datad => VCC,
	cin => \timerOfDelay|s_counter[3]~18\,
	combout => \timerOfDelay|s_counter[4]~19_combout\,
	cout => \timerOfDelay|s_counter[4]~20\);

-- Location: FF_X103_Y40_N21
\timerOfDelay|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfDelay|s_counter[4]~19_combout\,
	asdata => \~GND~combout\,
	sload => \timerOfDelay|s_counter[7]~10_combout\,
	ena => \timerOfDelay|s_counter[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfDelay|s_counter\(4));

-- Location: LCCOMB_X103_Y40_N22
\timerOfDelay|s_counter[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_counter[5]~21_combout\ = (\timerOfDelay|s_counter\(5) & (\timerOfDelay|s_counter[4]~20\ & VCC)) # (!\timerOfDelay|s_counter\(5) & (!\timerOfDelay|s_counter[4]~20\))
-- \timerOfDelay|s_counter[5]~22\ = CARRY((!\timerOfDelay|s_counter\(5) & !\timerOfDelay|s_counter[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfDelay|s_counter\(5),
	datad => VCC,
	cin => \timerOfDelay|s_counter[4]~20\,
	combout => \timerOfDelay|s_counter[5]~21_combout\,
	cout => \timerOfDelay|s_counter[5]~22\);

-- Location: FF_X103_Y40_N23
\timerOfDelay|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfDelay|s_counter[5]~21_combout\,
	asdata => \~GND~combout\,
	sload => \timerOfDelay|s_counter[7]~10_combout\,
	ena => \timerOfDelay|s_counter[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfDelay|s_counter\(5));

-- Location: LCCOMB_X103_Y40_N24
\timerOfDelay|s_counter[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_counter[6]~23_combout\ = (\timerOfDelay|s_counter\(6) & ((GND) # (!\timerOfDelay|s_counter[5]~22\))) # (!\timerOfDelay|s_counter\(6) & (\timerOfDelay|s_counter[5]~22\ $ (GND)))
-- \timerOfDelay|s_counter[6]~24\ = CARRY((\timerOfDelay|s_counter\(6)) # (!\timerOfDelay|s_counter[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfDelay|s_counter\(6),
	datad => VCC,
	cin => \timerOfDelay|s_counter[5]~22\,
	combout => \timerOfDelay|s_counter[6]~23_combout\,
	cout => \timerOfDelay|s_counter[6]~24\);

-- Location: FF_X103_Y40_N25
\timerOfDelay|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfDelay|s_counter[6]~23_combout\,
	asdata => \~GND~combout\,
	sload => \timerOfDelay|s_counter[7]~10_combout\,
	ena => \timerOfDelay|s_counter[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfDelay|s_counter\(6));

-- Location: LCCOMB_X103_Y40_N26
\timerOfDelay|s_counter[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_counter[7]~25_combout\ = \timerOfDelay|s_counter\(7) $ (!\timerOfDelay|s_counter[6]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfDelay|s_counter\(7),
	cin => \timerOfDelay|s_counter[6]~24\,
	combout => \timerOfDelay|s_counter[7]~25_combout\);

-- Location: FF_X103_Y40_N27
\timerOfDelay|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfDelay|s_counter[7]~25_combout\,
	asdata => \~GND~combout\,
	sload => \timerOfDelay|s_counter[7]~10_combout\,
	ena => \timerOfDelay|s_counter[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfDelay|s_counter\(7));

-- Location: LCCOMB_X103_Y40_N10
\timerOfDelay|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|Equal0~1_combout\ = (!\timerOfDelay|s_counter\(7) & (!\timerOfDelay|s_counter\(4) & (!\timerOfDelay|s_counter\(5) & !\timerOfDelay|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfDelay|s_counter\(7),
	datab => \timerOfDelay|s_counter\(4),
	datac => \timerOfDelay|s_counter\(5),
	datad => \timerOfDelay|s_counter\(6),
	combout => \timerOfDelay|Equal0~1_combout\);

-- Location: LCCOMB_X106_Y40_N24
\timerOfDelay|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_cntZero~0_combout\ = (!\fsm|delayNewTime~combout\ & (\clkDivider|pulseOut~q\ & ((\fsm|delay_enable~combout\) # (!\timerOfDelay|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|delayNewTime~combout\,
	datab => \fsm|delay_enable~combout\,
	datac => \timerOfDelay|s_cntZero~q\,
	datad => \clkDivider|pulseOut~q\,
	combout => \timerOfDelay|s_cntZero~0_combout\);

-- Location: LCCOMB_X105_Y40_N12
\timerOfDelay|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfDelay|s_cntZero~1_combout\ = (\timerOfDelay|s_cntZero~0_combout\ & (\timerOfDelay|Equal0~1_combout\ & (\timerOfDelay|Equal0~0_combout\))) # (!\timerOfDelay|s_cntZero~0_combout\ & (((\timerOfDelay|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfDelay|Equal0~1_combout\,
	datab => \timerOfDelay|Equal0~0_combout\,
	datac => \timerOfDelay|s_cntZero~q\,
	datad => \timerOfDelay|s_cntZero~0_combout\,
	combout => \timerOfDelay|s_cntZero~1_combout\);

-- Location: FF_X105_Y40_N13
\timerOfDelay|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfDelay|s_cntZero~1_combout\,
	sclr => \ALT_INV_KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfDelay|s_cntZero~q\);

-- Location: LCCOMB_X106_Y40_N8
\fsm|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~0_combout\ = (\fsm|s_currentState.COOK~q\) # (((!\timerOfDelay|s_cntZero~q\ & \fsm|s_currentState.FINISH~q\)) # (!\fsm|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfDelay|s_cntZero~q\,
	datab => \fsm|s_currentState.COOK~q\,
	datac => \fsm|s_currentState.FINISH~q\,
	datad => \fsm|Selector0~0_combout\,
	combout => \fsm|Selector3~0_combout\);

-- Location: CLKCTRL_G5
\fsm|s_currentState.DELAY~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsm|s_currentState.DELAY~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsm|s_currentState.DELAY~clkctrl_outclk\);

-- Location: LCCOMB_X106_Y40_N14
\fsm|led\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|led~combout\ = (GLOBAL(\fsm|s_currentState.DELAY~clkctrl_outclk\) & ((\fsm|led~combout\))) # (!GLOBAL(\fsm|s_currentState.DELAY~clkctrl_outclk\) & (\fsm|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector3~0_combout\,
	datac => \fsm|led~combout\,
	datad => \fsm|s_currentState.DELAY~clkctrl_outclk\,
	combout => \fsm|led~combout\);

-- Location: LCCOMB_X107_Y40_N26
\fsm|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr1~combout\ = (\fsm|s_currentState.COOK~q\) # ((\fsm|s_currentState.CRUMPLE~q\) # (\fsm|s_currentState.LEAVEN~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.COOK~q\,
	datac => \fsm|s_currentState.CRUMPLE~q\,
	datad => \fsm|s_currentState.LEAVEN~q\,
	combout => \fsm|WideOr1~combout\);

-- Location: LCCOMB_X107_Y40_N8
\fsm|ledg[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|ledg\(0) = (GLOBAL(\fsm|s_currentState.DELAY~clkctrl_outclk\) & (\fsm|ledg\(0))) # (!GLOBAL(\fsm|s_currentState.DELAY~clkctrl_outclk\) & ((\fsm|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ledg\(0),
	datac => \fsm|WideOr1~combout\,
	datad => \fsm|s_currentState.DELAY~clkctrl_outclk\,
	combout => \fsm|ledg\(0));

-- Location: LCCOMB_X107_Y40_N2
\fsm|ledg[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|ledg\(1) = (GLOBAL(\fsm|s_currentState.DELAY~clkctrl_outclk\) & ((\fsm|ledg\(1)))) # (!GLOBAL(\fsm|s_currentState.DELAY~clkctrl_outclk\) & (!\fsm|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Selector0~0_combout\,
	datac => \fsm|ledg\(1),
	datad => \fsm|s_currentState.DELAY~clkctrl_outclk\,
	combout => \fsm|ledg\(1));

-- Location: LCCOMB_X107_Y40_N16
\fsm|ledg[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|ledg\(2) = (GLOBAL(\fsm|s_currentState.DELAY~clkctrl_outclk\) & (\fsm|ledg\(2))) # (!GLOBAL(\fsm|s_currentState.DELAY~clkctrl_outclk\) & ((\fsm|s_currentState.CRUMPLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|ledg\(2),
	datac => \fsm|s_currentState.CRUMPLE~q\,
	datad => \fsm|s_currentState.DELAY~clkctrl_outclk\,
	combout => \fsm|ledg\(2));

-- Location: LCCOMB_X105_Y35_N12
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \timerOfFSM|s_counter\(5) $ (VCC)
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\timerOfFSM|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(5),
	datad => VCC,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X105_Y35_N14
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\timerOfFSM|s_counter\(6) & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\timerOfFSM|s_counter\(6) & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\timerOfFSM|s_counter\(6) & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(6),
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X105_Y35_N16
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\timerOfFSM|s_counter\(7) & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\timerOfFSM|s_counter\(7) & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\timerOfFSM|s_counter\(7) & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(7),
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X105_Y35_N18
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X105_Y35_N0
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timerOfFSM|s_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timerOfFSM|s_counter\(7),
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X105_Y35_N6
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X106_Y35_N22
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X106_Y35_N4
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timerOfFSM|s_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timerOfFSM|s_counter\(6),
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X106_Y35_N26
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X106_Y35_N8
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timerOfFSM|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timerOfFSM|s_counter\(5),
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X106_Y35_N20
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timerOfFSM|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timerOfFSM|s_counter\(4),
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X106_Y35_N28
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timerOfFSM|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timerOfFSM|s_counter\(4),
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X106_Y35_N10
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X106_Y35_N12
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X106_Y35_N14
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X106_Y35_N16
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X106_Y35_N18
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X106_Y35_N6
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ 
-- & ((\timerOfFSM|s_counter\(6)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timerOfFSM|s_counter\(6),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\);

-- Location: LCCOMB_X109_Y35_N4
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X107_Y35_N28
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X106_Y35_N24
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ 
-- & ((\timerOfFSM|s_counter\(5)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timerOfFSM|s_counter\(5),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\);

-- Location: LCCOMB_X108_Y35_N16
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timerOfFSM|s_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timerOfFSM|s_counter\(4),
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X108_Y35_N18
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X109_Y35_N6
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\timerOfFSM|s_counter\(3) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timerOfFSM|s_counter\(3),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X109_Y35_N28
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\timerOfFSM|s_counter\(3) & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timerOfFSM|s_counter\(3),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X109_Y35_N14
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X109_Y35_N16
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X109_Y35_N18
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\)))))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X109_Y35_N20
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X109_Y35_N22
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X108_Y35_N10
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ 
-- & ((\timerOfFSM|s_counter\(4)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \timerOfFSM|s_counter\(4),
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\);

-- Location: LCCOMB_X109_Y35_N2
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X107_Y35_N30
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\) # 
-- ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X108_Y35_N8
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X108_Y35_N12
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X108_Y35_N14
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\timerOfFSM|s_counter\(3) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timerOfFSM|s_counter\(3),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X108_Y35_N6
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\timerOfFSM|s_counter\(2) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(2),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X108_Y35_N0
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\timerOfFSM|s_counter\(2) & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(2),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X108_Y35_N22
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X108_Y35_N24
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X108_Y35_N26
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X108_Y35_N28
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61_combout\ & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y35_N30
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X108_Y35_N4
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\) # 
-- ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\);

-- Location: LCCOMB_X107_Y35_N14
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X108_Y35_N20
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ 
-- & ((\timerOfFSM|s_counter\(3)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \timerOfFSM|s_counter\(3),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66_combout\);

-- Location: LCCOMB_X107_Y35_N18
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X107_Y35_N26
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X107_Y35_N20
\timeToDisplay|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Add1~0_combout\ = (\timerOfFSM|s_counter\(2) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(2),
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \timeToDisplay|Add1~0_combout\);

-- Location: LCCOMB_X107_Y35_N22
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\timerOfFSM|s_counter\(1) & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(1),
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X107_Y35_N0
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ = (\timerOfFSM|s_counter\(1) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(1),
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X107_Y35_N4
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datad => VCC,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X107_Y35_N6
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\timeToDisplay|Add1~0_combout\ & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \timeToDisplay|Add1~0_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X107_Y35_N8
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X107_Y35_N10
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y35_N12
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X107_Y35_N24
\timeToDisplay|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Add1~1_combout\ = \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\timerOfFSM|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \timerOfFSM|s_counter\(1),
	combout => \timeToDisplay|Add1~1_combout\);

-- Location: LCCOMB_X107_Y35_N16
\timeToDisplay|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Add1~3_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\timerOfFSM|s_counter\(1)) # ((\timerOfFSM|s_counter\(2)) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\timerOfFSM|s_counter\(2) & ((\timerOfFSM|s_counter\(1)) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \timerOfFSM|s_counter\(1),
	datac => \timerOfFSM|s_counter\(2),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \timeToDisplay|Add1~3_combout\);

-- Location: LCCOMB_X108_Y35_N2
\timeToDisplay|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Add1~4_combout\ = \timerOfFSM|s_counter\(3) $ (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\timeToDisplay|Add1~3_combout\ $ 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(3),
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \timeToDisplay|Add1~3_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Add1~4_combout\);

-- Location: LCCOMB_X107_Y35_N2
\timeToDisplay|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Add1~2_combout\ = \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\timerOfFSM|s_counter\(2) $ (((\timerOfFSM|s_counter\(1)) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \timerOfFSM|s_counter\(1),
	datac => \timerOfFSM|s_counter\(2),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \timeToDisplay|Add1~2_combout\);

-- Location: LCCOMB_X107_Y41_N0
\display0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux6~0_combout\ = (\timeToDisplay|Add1~4_combout\ & (\timeToDisplay|Add1~1_combout\ & (\timeToDisplay|Add1~2_combout\ $ (\timerOfFSM|s_counter\(0))))) # (!\timeToDisplay|Add1~4_combout\ & (\timerOfFSM|s_counter\(0) & 
-- (\timeToDisplay|Add1~1_combout\ $ (!\timeToDisplay|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timeToDisplay|Add1~4_combout\,
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timerOfFSM|s_counter\(0),
	combout => \display0|Mux6~0_combout\);

-- Location: LCCOMB_X107_Y41_N6
\display0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux5~0_combout\ = (\timeToDisplay|Add1~1_combout\ & (\timeToDisplay|Add1~2_combout\ & (\timeToDisplay|Add1~4_combout\ $ (!\timerOfFSM|s_counter\(0))))) # (!\timeToDisplay|Add1~1_combout\ & ((\timerOfFSM|s_counter\(0) & 
-- (!\timeToDisplay|Add1~4_combout\)) # (!\timerOfFSM|s_counter\(0) & ((\timeToDisplay|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timeToDisplay|Add1~4_combout\,
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timerOfFSM|s_counter\(0),
	combout => \display0|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y41_N24
\display0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux4~0_combout\ = (\timeToDisplay|Add1~4_combout\ & (!\timeToDisplay|Add1~1_combout\ & (!\timeToDisplay|Add1~2_combout\ & !\timerOfFSM|s_counter\(0)))) # (!\timeToDisplay|Add1~4_combout\ & (\timeToDisplay|Add1~2_combout\ & 
-- ((!\timerOfFSM|s_counter\(0)) # (!\timeToDisplay|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timeToDisplay|Add1~4_combout\,
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timerOfFSM|s_counter\(0),
	combout => \display0|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y41_N26
\display0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux3~0_combout\ = (\timeToDisplay|Add1~1_combout\ & (\timeToDisplay|Add1~4_combout\ & (\timeToDisplay|Add1~2_combout\ $ (\timerOfFSM|s_counter\(0))))) # (!\timeToDisplay|Add1~1_combout\ & ((\timeToDisplay|Add1~2_combout\ & 
-- ((\timerOfFSM|s_counter\(0)))) # (!\timeToDisplay|Add1~2_combout\ & (!\timeToDisplay|Add1~4_combout\ & !\timerOfFSM|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timeToDisplay|Add1~4_combout\,
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timerOfFSM|s_counter\(0),
	combout => \display0|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y41_N20
\display0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux2~0_combout\ = (\timeToDisplay|Add1~1_combout\ & ((\timeToDisplay|Add1~2_combout\ & (\timeToDisplay|Add1~4_combout\)) # (!\timeToDisplay|Add1~2_combout\ & ((\timerOfFSM|s_counter\(0)))))) # (!\timeToDisplay|Add1~1_combout\ & 
-- (\timeToDisplay|Add1~4_combout\ & ((\timerOfFSM|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timeToDisplay|Add1~4_combout\,
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timerOfFSM|s_counter\(0),
	combout => \display0|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y41_N10
\display0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux1~0_combout\ = (\timeToDisplay|Add1~1_combout\ & (\timerOfFSM|s_counter\(0) & (\timeToDisplay|Add1~4_combout\ $ (\timeToDisplay|Add1~2_combout\)))) # (!\timeToDisplay|Add1~1_combout\ & (\timeToDisplay|Add1~4_combout\ & 
-- ((\timerOfFSM|s_counter\(0)) # (!\timeToDisplay|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timeToDisplay|Add1~4_combout\,
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timerOfFSM|s_counter\(0),
	combout => \display0|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y41_N8
\display0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux0~0_combout\ = (\timerOfFSM|s_counter\(0) & ((\timeToDisplay|Add1~1_combout\ $ (!\timeToDisplay|Add1~2_combout\)) # (!\timeToDisplay|Add1~4_combout\))) # (!\timerOfFSM|s_counter\(0) & ((\timeToDisplay|Add1~4_combout\ $ 
-- (!\timeToDisplay|Add1~2_combout\)) # (!\timeToDisplay|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timeToDisplay|Add1~4_combout\,
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timerOfFSM|s_counter\(0),
	combout => \display0|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y35_N0
\display1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux6~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display1|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y35_N30
\display1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux5~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display1|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y35_N24
\display1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux4~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display1|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y35_N8
\display1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux3~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display1|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y35_N26
\display1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux2~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display1|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y35_N12
\display1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux1~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (((!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display1|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y35_N10
\display1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux0~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display1|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y40_N8
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \keyLoggerAdjust|s_count\(5) $ (VCC)
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\keyLoggerAdjust|s_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(5),
	datad => VCC,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X110_Y40_N10
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\keyLoggerAdjust|s_count\(6) & (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\keyLoggerAdjust|s_count\(6) & 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\keyLoggerAdjust|s_count\(6) & !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyLoggerAdjust|s_count\(6),
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X110_Y40_N12
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\keyLoggerAdjust|s_count\(7) & (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\keyLoggerAdjust|s_count\(7) & 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\keyLoggerAdjust|s_count\(7) & !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyLoggerAdjust|s_count\(7),
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X110_Y40_N14
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X110_Y39_N22
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\keyLoggerAdjust|s_count\(6) & \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keyLoggerAdjust|s_count\(6),
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X110_Y39_N8
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X110_Y39_N26
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\keyLoggerAdjust|s_count\(5) & \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keyLoggerAdjust|s_count\(5),
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X110_Y39_N20
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X110_Y39_N6
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\keyLoggerAdjust|s_count\(4) & !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(4),
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X110_Y39_N28
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\keyLoggerAdjust|s_count\(4) & \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(4),
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X110_Y39_N10
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X110_Y39_N12
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\) # (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X110_Y39_N14
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X110_Y40_N0
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \keyLoggerAdjust|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \keyLoggerAdjust|s_count\(7),
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X110_Y39_N24
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X110_Y39_N16
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ & !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X110_Y39_N18
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X110_Y41_N12
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X110_Y39_N4
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\keyLoggerAdjust|s_count\(6))) # (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(6),
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\);

-- Location: LCCOMB_X110_Y39_N30
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\keyLoggerAdjust|s_count\(5)))) # (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \keyLoggerAdjust|s_count\(5),
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\);

-- Location: LCCOMB_X110_Y41_N14
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X110_Y41_N6
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X110_Y41_N4
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\keyLoggerAdjust|s_count\(4) & \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyLoggerAdjust|s_count\(4),
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X110_Y41_N10
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\keyLoggerAdjust|s_count\(3) & !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keyLoggerAdjust|s_count\(3),
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X110_Y41_N0
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\keyLoggerAdjust|s_count\(3) & \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keyLoggerAdjust|s_count\(3),
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X110_Y41_N18
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X110_Y41_N20
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\) # (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X110_Y41_N22
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\) # (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\) # 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\) # (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X110_Y41_N24
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\ & !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\,
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X110_Y41_N26
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X111_Y41_N10
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X110_Y41_N28
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\keyLoggerAdjust|s_count\(4))) # (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \keyLoggerAdjust|s_count\(4),
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\);

-- Location: LCCOMB_X111_Y41_N12
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \keyLoggerAdjust|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \keyLoggerAdjust|s_count\(3),
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X111_Y41_N2
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X110_Y41_N16
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \keyLoggerAdjust|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \keyLoggerAdjust|s_count\(2),
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X111_Y41_N16
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \keyLoggerAdjust|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \keyLoggerAdjust|s_count\(2),
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X111_Y41_N22
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X111_Y41_N24
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\) # (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X111_Y41_N26
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\)))) # 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\)))))
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\,
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X110_Y41_N8
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\) # ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X111_Y41_N8
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X111_Y41_N28
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61_combout\ & 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ & !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X111_Y41_N30
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X112_Y41_N22
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X111_Y41_N4
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\) # ((!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\,
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\);

-- Location: LCCOMB_X111_Y41_N14
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\keyLoggerAdjust|s_count\(3))) # (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \keyLoggerAdjust|s_count\(3),
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66_combout\);

-- Location: LCCOMB_X112_Y41_N24
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X112_Y41_N26
\timeAdjustToDisplay|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Add1~0_combout\ = (\keyLoggerAdjust|s_count\(2) & \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(2),
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Add1~0_combout\);

-- Location: LCCOMB_X112_Y41_N28
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X112_Y41_N30
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ = (\keyLoggerAdjust|s_count\(1) & \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(1),
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X112_Y41_N16
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\keyLoggerAdjust|s_count\(1) & !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(1),
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X112_Y41_N0
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\) # 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X112_Y41_N2
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\timeAdjustToDisplay|Add1~0_combout\ & (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Add1~0_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X112_Y41_N4
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66_combout\) # (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X112_Y41_N6
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- (!\timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\ & !\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\,
	datad => VCC,
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X112_Y41_N8
\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X111_Y41_N20
\timeAdjustToDisplay|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Add1~3_combout\ = (\keyLoggerAdjust|s_count\(2) & ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (\keyLoggerAdjust|s_count\(1))))) # (!\keyLoggerAdjust|s_count\(2) & 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (\keyLoggerAdjust|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(2),
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \keyLoggerAdjust|s_count\(1),
	combout => \timeAdjustToDisplay|Add1~3_combout\);

-- Location: LCCOMB_X111_Y41_N6
\timeAdjustToDisplay|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Add1~4_combout\ = \keyLoggerAdjust|s_count\(3) $ (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\timeAdjustToDisplay|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(3),
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \timeAdjustToDisplay|Add1~3_combout\,
	combout => \timeAdjustToDisplay|Add1~4_combout\);

-- Location: LCCOMB_X110_Y41_N30
\timeAdjustToDisplay|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Add1~1_combout\ = \keyLoggerAdjust|s_count\(1) $ (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keyLoggerAdjust|s_count\(1),
	datad => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \timeAdjustToDisplay|Add1~1_combout\);

-- Location: LCCOMB_X111_Y41_N18
\timeAdjustToDisplay|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeAdjustToDisplay|Add1~2_combout\ = \keyLoggerAdjust|s_count\(2) $ (\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (((\timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (\keyLoggerAdjust|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyLoggerAdjust|s_count\(2),
	datab => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \timeAdjustToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \keyLoggerAdjust|s_count\(1),
	combout => \timeAdjustToDisplay|Add1~2_combout\);

-- Location: LCCOMB_X107_Y41_N2
\display4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|Mux6~0_combout\ = (\timeAdjustToDisplay|Add1~4_combout\ & (\timeAdjustToDisplay|Add1~1_combout\ & (\keyLoggerAdjust|s_count\(0) $ (\timeAdjustToDisplay|Add1~2_combout\)))) # (!\timeAdjustToDisplay|Add1~4_combout\ & (\keyLoggerAdjust|s_count\(0) 
-- & (\timeAdjustToDisplay|Add1~1_combout\ $ (!\timeAdjustToDisplay|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Add1~4_combout\,
	datab => \keyLoggerAdjust|s_count\(0),
	datac => \timeAdjustToDisplay|Add1~1_combout\,
	datad => \timeAdjustToDisplay|Add1~2_combout\,
	combout => \display4|Mux6~0_combout\);

-- Location: LCCOMB_X107_Y41_N12
\display4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|Mux5~0_combout\ = (\timeAdjustToDisplay|Add1~4_combout\ & (\timeAdjustToDisplay|Add1~2_combout\ & (\keyLoggerAdjust|s_count\(0) $ (!\timeAdjustToDisplay|Add1~1_combout\)))) # (!\timeAdjustToDisplay|Add1~4_combout\ & 
-- ((\keyLoggerAdjust|s_count\(0) & (!\timeAdjustToDisplay|Add1~1_combout\)) # (!\keyLoggerAdjust|s_count\(0) & ((\timeAdjustToDisplay|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Add1~4_combout\,
	datab => \keyLoggerAdjust|s_count\(0),
	datac => \timeAdjustToDisplay|Add1~1_combout\,
	datad => \timeAdjustToDisplay|Add1~2_combout\,
	combout => \display4|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y41_N22
\display4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|Mux4~0_combout\ = (\timeAdjustToDisplay|Add1~4_combout\ & (!\keyLoggerAdjust|s_count\(0) & (!\timeAdjustToDisplay|Add1~1_combout\ & !\timeAdjustToDisplay|Add1~2_combout\))) # (!\timeAdjustToDisplay|Add1~4_combout\ & 
-- (\timeAdjustToDisplay|Add1~2_combout\ & ((!\timeAdjustToDisplay|Add1~1_combout\) # (!\keyLoggerAdjust|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Add1~4_combout\,
	datab => \keyLoggerAdjust|s_count\(0),
	datac => \timeAdjustToDisplay|Add1~1_combout\,
	datad => \timeAdjustToDisplay|Add1~2_combout\,
	combout => \display4|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y41_N28
\display4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|Mux3~0_combout\ = (\timeAdjustToDisplay|Add1~1_combout\ & (\timeAdjustToDisplay|Add1~4_combout\ & (\keyLoggerAdjust|s_count\(0) $ (\timeAdjustToDisplay|Add1~2_combout\)))) # (!\timeAdjustToDisplay|Add1~1_combout\ & ((\keyLoggerAdjust|s_count\(0) 
-- & ((\timeAdjustToDisplay|Add1~2_combout\))) # (!\keyLoggerAdjust|s_count\(0) & (!\timeAdjustToDisplay|Add1~4_combout\ & !\timeAdjustToDisplay|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Add1~4_combout\,
	datab => \keyLoggerAdjust|s_count\(0),
	datac => \timeAdjustToDisplay|Add1~1_combout\,
	datad => \timeAdjustToDisplay|Add1~2_combout\,
	combout => \display4|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y41_N30
\display4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|Mux2~0_combout\ = (\timeAdjustToDisplay|Add1~1_combout\ & ((\timeAdjustToDisplay|Add1~2_combout\ & (\timeAdjustToDisplay|Add1~4_combout\)) # (!\timeAdjustToDisplay|Add1~2_combout\ & ((\keyLoggerAdjust|s_count\(0)))))) # 
-- (!\timeAdjustToDisplay|Add1~1_combout\ & (\timeAdjustToDisplay|Add1~4_combout\ & (\keyLoggerAdjust|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Add1~4_combout\,
	datab => \keyLoggerAdjust|s_count\(0),
	datac => \timeAdjustToDisplay|Add1~1_combout\,
	datad => \timeAdjustToDisplay|Add1~2_combout\,
	combout => \display4|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y41_N16
\display4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|Mux1~0_combout\ = (\keyLoggerAdjust|s_count\(0) & (\timeAdjustToDisplay|Add1~4_combout\ $ (((\timeAdjustToDisplay|Add1~1_combout\ & \timeAdjustToDisplay|Add1~2_combout\))))) # (!\keyLoggerAdjust|s_count\(0) & 
-- (\timeAdjustToDisplay|Add1~4_combout\ & (!\timeAdjustToDisplay|Add1~1_combout\ & !\timeAdjustToDisplay|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Add1~4_combout\,
	datab => \keyLoggerAdjust|s_count\(0),
	datac => \timeAdjustToDisplay|Add1~1_combout\,
	datad => \timeAdjustToDisplay|Add1~2_combout\,
	combout => \display4|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y41_N18
\display4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|Mux0~0_combout\ = (\keyLoggerAdjust|s_count\(0) & ((\timeAdjustToDisplay|Add1~1_combout\ $ (!\timeAdjustToDisplay|Add1~2_combout\)) # (!\timeAdjustToDisplay|Add1~4_combout\))) # (!\keyLoggerAdjust|s_count\(0) & 
-- ((\timeAdjustToDisplay|Add1~4_combout\ $ (!\timeAdjustToDisplay|Add1~2_combout\)) # (!\timeAdjustToDisplay|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeAdjustToDisplay|Add1~4_combout\,
	datab => \keyLoggerAdjust|s_count\(0),
	datac => \timeAdjustToDisplay|Add1~1_combout\,
	datad => \timeAdjustToDisplay|Add1~2_combout\,
	combout => \display4|Mux0~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;
END structure;


