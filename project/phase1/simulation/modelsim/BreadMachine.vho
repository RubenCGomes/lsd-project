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

-- DATE "05/25/2023 14:42:04"

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
	KEY : IN std_logic_vector(2 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(2 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END BreadMachine;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsm|s_time_display[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsm|Selector15~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
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
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \clkDivider|s_divCounter[0]~26_combout\ : std_logic;
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
SIGNAL \clkDivider|s_divCounter[19]~65\ : std_logic;
SIGNAL \clkDivider|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[20]~67\ : std_logic;
SIGNAL \clkDivider|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[21]~69\ : std_logic;
SIGNAL \clkDivider|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[22]~71\ : std_logic;
SIGNAL \clkDivider|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[23]~73\ : std_logic;
SIGNAL \clkDivider|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[24]~75\ : std_logic;
SIGNAL \clkDivider|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~0_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~1_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~2_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~3_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~0_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~1_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~4_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~5_combout\ : std_logic;
SIGNAL \clkDivider|LessThan0~6_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[0]~27\ : std_logic;
SIGNAL \clkDivider|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[1]~29\ : std_logic;
SIGNAL \clkDivider|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \clkDivider|s_divCounter[2]~31\ : std_logic;
SIGNAL \clkDivider|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~2_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~3_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~6_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~4_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~5_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~7_combout\ : std_logic;
SIGNAL \clkDivider|Equal0~8_combout\ : std_logic;
SIGNAL \clkDivider|pulseOut~q\ : std_logic;
SIGNAL \regInput|startStop_state~0_combout\ : std_logic;
SIGNAL \regInput|startStop_state~q\ : std_logic;
SIGNAL \fsm|Selector8~0_combout\ : std_logic;
SIGNAL \fsm|Selector15~0_combout\ : std_logic;
SIGNAL \fsm|Selector15~0clkctrl_outclk\ : std_logic;
SIGNAL \fsm|s_nextState.COOK_353~combout\ : std_logic;
SIGNAL \fsm|s_currentState.COOK~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.STANDBY~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.COOK~q\ : std_logic;
SIGNAL \fsm|Selector6~0_combout\ : std_logic;
SIGNAL \fsm|s_nextState.FINISH_341~combout\ : std_logic;
SIGNAL \fsm|s_currentState.FINISH~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.FINISH~q\ : std_logic;
SIGNAL \fsm|Selector14~0_combout\ : std_logic;
SIGNAL \fsm|s_nextState.STANDBY_389~combout\ : std_logic;
SIGNAL \fsm|s_currentState.STANDBY~1_combout\ : std_logic;
SIGNAL \fsm|s_currentState.STANDBY~q\ : std_logic;
SIGNAL \fsm|Selector12~0_combout\ : std_logic;
SIGNAL \fsm|s_nextState.CRUMPLE_377~combout\ : std_logic;
SIGNAL \fsm|s_currentState.CRUMPLE~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.CRUMPLE~q\ : std_logic;
SIGNAL \fsm|Selector10~0_combout\ : std_logic;
SIGNAL \fsm|s_nextState.LEAVEN_365~combout\ : std_logic;
SIGNAL \fsm|s_currentState.LEAVEN~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState.LEAVEN~q\ : std_logic;
SIGNAL \fsm|s_stateChange~1_combout\ : std_logic;
SIGNAL \fsm|s_stateChange~0_combout\ : std_logic;
SIGNAL \fsm|s_stateChange~2_combout\ : std_logic;
SIGNAL \fsm|s_stateChange~3_combout\ : std_logic;
SIGNAL \fsm|s_stateChange~4_combout\ : std_logic;
SIGNAL \fsm|s_stateChange~q\ : std_logic;
SIGNAL \timerOfFSM|Add1~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \regInput|crumple_Time[1]~feeder_combout\ : std_logic;
SIGNAL \fsm|Selector16~0_combout\ : std_logic;
SIGNAL \fsm|s_time_display[7]~0_combout\ : std_logic;
SIGNAL \fsm|s_time_display[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \timerOfFSM|Add1~2_combout\ : std_logic;
SIGNAL \timerOfFSM|s_counter[0]~0_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~1\ : std_logic;
SIGNAL \timerOfFSM|Add1~4_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~3_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~6_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~5\ : std_logic;
SIGNAL \timerOfFSM|Add1~8_combout\ : std_logic;
SIGNAL \regInput|leaven_Time[1]~0_combout\ : std_logic;
SIGNAL \fsm|Selector18~0_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~7_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~10_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~9\ : std_logic;
SIGNAL \timerOfFSM|Add1~11_combout\ : std_logic;
SIGNAL \fsm|Selector19~0_combout\ : std_logic;
SIGNAL \timerOfFSM|Add0~0_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~23_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~12\ : std_logic;
SIGNAL \timerOfFSM|Add1~13_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~21_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~24_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~14\ : std_logic;
SIGNAL \timerOfFSM|Add1~15_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~25_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~16\ : std_logic;
SIGNAL \timerOfFSM|Add1~17_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~26_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~18\ : std_logic;
SIGNAL \timerOfFSM|Add1~19_combout\ : std_logic;
SIGNAL \timerOfFSM|Add1~22_combout\ : std_logic;
SIGNAL \timerOfFSM|s_cntZero~0_combout\ : std_logic;
SIGNAL \timerOfFSM|s_cntZero~1_combout\ : std_logic;
SIGNAL \timerOfFSM|s_cntZero~2_combout\ : std_logic;
SIGNAL \timerOfFSM|s_cntZero~q\ : std_logic;
SIGNAL \fsm|Selector5~0_combout\ : std_logic;
SIGNAL \fsm|led~combout\ : std_logic;
SIGNAL \fsm|Selector2~0_combout\ : std_logic;
SIGNAL \fsm|Selector0~0_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~1\ : std_logic;
SIGNAL \timerToDisplay|Add0~3_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~5_combout\ : std_logic;
SIGNAL \fsm|Add1~0_combout\ : std_logic;
SIGNAL \fsm|Add0~0_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~4\ : std_logic;
SIGNAL \timerToDisplay|Add0~7\ : std_logic;
SIGNAL \timerToDisplay|Add0~9\ : std_logic;
SIGNAL \timerToDisplay|Add0~10_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~21_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~11\ : std_logic;
SIGNAL \timerToDisplay|Add0~13\ : std_logic;
SIGNAL \timerToDisplay|Add0~14_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~19_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~15\ : std_logic;
SIGNAL \timerToDisplay|Add0~16_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~18_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~12_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~20_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~8_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~22_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~6_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~23_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
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
SIGNAL \timeToDisplay|Add1~0_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \timeToDisplay|Add1~1_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~0_combout\ : std_logic;
SIGNAL \timerToDisplay|Add0~2_combout\ : std_logic;
SIGNAL \timeToDisplay|Add1~2_combout\ : std_logic;
SIGNAL \timeToDisplay|Add1~3_combout\ : std_logic;
SIGNAL \timeToDisplay|Add1~4_combout\ : std_logic;
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
SIGNAL \fsm|s_time_display\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clkDivider|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \timerToDisplay|s_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \romLeaven|dataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regInput|crumple_Time\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \timerOfFSM|s_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \romCrumple|dataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regInput|leaven_Time\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \fsm|ledg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \fsm|time_value\ : std_logic_vector(7 DOWNTO 0);
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
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\fsm|s_time_display[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fsm|s_time_display[7]~0_combout\);

\fsm|Selector15~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fsm|Selector15~0_combout\);
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

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

-- Location: LCCOMB_X100_Y34_N6
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

-- Location: LCCOMB_X100_Y34_N12
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

-- Location: LCCOMB_X100_Y34_N14
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

-- Location: FF_X100_Y34_N15
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

-- Location: LCCOMB_X100_Y34_N16
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

-- Location: FF_X100_Y34_N17
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

-- Location: LCCOMB_X100_Y34_N18
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

-- Location: FF_X100_Y34_N19
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

-- Location: LCCOMB_X100_Y34_N20
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

-- Location: FF_X100_Y34_N21
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

-- Location: LCCOMB_X100_Y34_N22
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

-- Location: FF_X100_Y34_N23
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

-- Location: LCCOMB_X100_Y34_N24
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

-- Location: FF_X100_Y34_N25
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

-- Location: LCCOMB_X100_Y34_N26
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

-- Location: FF_X100_Y34_N27
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

-- Location: LCCOMB_X100_Y34_N28
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

-- Location: FF_X100_Y34_N29
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

-- Location: LCCOMB_X100_Y34_N30
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

-- Location: FF_X100_Y34_N31
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

-- Location: LCCOMB_X100_Y33_N0
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

-- Location: FF_X99_Y34_N5
\clkDivider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDivider|s_divCounter[13]~52_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(13));

-- Location: LCCOMB_X100_Y33_N2
\clkDivider|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[14]~54_combout\ = (\clkDivider|s_divCounter\(14) & (\clkDivider|s_divCounter[13]~53\ $ (GND))) # (!\clkDivider|s_divCounter\(14) & (!\clkDivider|s_divCounter[13]~53\ & VCC))
-- \clkDivider|s_divCounter[14]~55\ = CARRY((\clkDivider|s_divCounter\(14) & !\clkDivider|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(14),
	datad => VCC,
	cin => \clkDivider|s_divCounter[13]~53\,
	combout => \clkDivider|s_divCounter[14]~54_combout\,
	cout => \clkDivider|s_divCounter[14]~55\);

-- Location: FF_X99_Y34_N27
\clkDivider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDivider|s_divCounter[14]~54_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(14));

-- Location: LCCOMB_X100_Y33_N4
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

-- Location: FF_X99_Y34_N17
\clkDivider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDivider|s_divCounter[15]~56_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(15));

-- Location: LCCOMB_X100_Y33_N6
\clkDivider|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|s_divCounter[16]~58_combout\ = (\clkDivider|s_divCounter\(16) & (\clkDivider|s_divCounter[15]~57\ $ (GND))) # (!\clkDivider|s_divCounter\(16) & (!\clkDivider|s_divCounter[15]~57\ & VCC))
-- \clkDivider|s_divCounter[16]~59\ = CARRY((\clkDivider|s_divCounter\(16) & !\clkDivider|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDivider|s_divCounter\(16),
	datad => VCC,
	cin => \clkDivider|s_divCounter[15]~57\,
	combout => \clkDivider|s_divCounter[16]~58_combout\,
	cout => \clkDivider|s_divCounter[16]~59\);

-- Location: FF_X99_Y34_N11
\clkDivider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDivider|s_divCounter[16]~58_combout\,
	sclr => \clkDivider|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDivider|s_divCounter\(16));

-- Location: LCCOMB_X100_Y33_N8
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

-- Location: FF_X100_Y33_N9
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

-- Location: LCCOMB_X100_Y33_N10
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

-- Location: FF_X100_Y33_N11
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

-- Location: LCCOMB_X100_Y33_N12
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

-- Location: FF_X100_Y33_N13
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

-- Location: LCCOMB_X100_Y33_N14
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

-- Location: FF_X100_Y33_N15
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

-- Location: LCCOMB_X100_Y33_N16
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

-- Location: FF_X100_Y33_N17
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

-- Location: LCCOMB_X100_Y33_N18
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

-- Location: FF_X100_Y33_N19
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

-- Location: LCCOMB_X100_Y33_N20
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

-- Location: FF_X100_Y33_N21
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

-- Location: LCCOMB_X100_Y33_N22
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

-- Location: FF_X100_Y33_N23
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

-- Location: LCCOMB_X100_Y33_N24
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

-- Location: FF_X100_Y33_N25
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

-- Location: LCCOMB_X100_Y33_N26
\clkDivider|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~0_combout\ = (((!\clkDivider|s_divCounter\(22)) # (!\clkDivider|s_divCounter\(20))) # (!\clkDivider|s_divCounter\(21))) # (!\clkDivider|s_divCounter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(19),
	datab => \clkDivider|s_divCounter\(21),
	datac => \clkDivider|s_divCounter\(20),
	datad => \clkDivider|s_divCounter\(22),
	combout => \clkDivider|LessThan0~0_combout\);

-- Location: LCCOMB_X99_Y34_N22
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

-- Location: LCCOMB_X100_Y34_N4
\clkDivider|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~2_combout\ = (((!\clkDivider|s_divCounter\(2)) # (!\clkDivider|s_divCounter\(0))) # (!\clkDivider|s_divCounter\(1))) # (!\clkDivider|s_divCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(3),
	datab => \clkDivider|s_divCounter\(1),
	datac => \clkDivider|s_divCounter\(0),
	datad => \clkDivider|s_divCounter\(2),
	combout => \clkDivider|LessThan0~2_combout\);

-- Location: LCCOMB_X99_Y34_N8
\clkDivider|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~3_combout\ = (((\clkDivider|LessThan0~2_combout\) # (!\clkDivider|s_divCounter\(5))) # (!\clkDivider|s_divCounter\(6))) # (!\clkDivider|s_divCounter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(4),
	datab => \clkDivider|s_divCounter\(6),
	datac => \clkDivider|s_divCounter\(5),
	datad => \clkDivider|LessThan0~2_combout\,
	combout => \clkDivider|LessThan0~3_combout\);

-- Location: LCCOMB_X100_Y34_N0
\clkDivider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~0_combout\ = (!\clkDivider|s_divCounter\(8) & (!\clkDivider|s_divCounter\(9) & (!\clkDivider|s_divCounter\(10) & !\clkDivider|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(8),
	datab => \clkDivider|s_divCounter\(9),
	datac => \clkDivider|s_divCounter\(10),
	datad => \clkDivider|s_divCounter\(7),
	combout => \clkDivider|Equal0~0_combout\);

-- Location: LCCOMB_X99_Y34_N18
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

-- Location: LCCOMB_X99_Y34_N6
\clkDivider|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~4_combout\ = (!\clkDivider|s_divCounter\(16) & ((\clkDivider|LessThan0~1_combout\) # ((\clkDivider|LessThan0~3_combout\ & \clkDivider|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|LessThan0~1_combout\,
	datab => \clkDivider|s_divCounter\(16),
	datac => \clkDivider|LessThan0~3_combout\,
	datad => \clkDivider|Equal0~1_combout\,
	combout => \clkDivider|LessThan0~4_combout\);

-- Location: LCCOMB_X99_Y34_N28
\clkDivider|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~5_combout\ = (\clkDivider|s_divCounter\(23) & ((\clkDivider|s_divCounter\(18)) # ((\clkDivider|s_divCounter\(17) & !\clkDivider|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(17),
	datab => \clkDivider|s_divCounter\(23),
	datac => \clkDivider|s_divCounter\(18),
	datad => \clkDivider|LessThan0~4_combout\,
	combout => \clkDivider|LessThan0~5_combout\);

-- Location: LCCOMB_X99_Y34_N30
\clkDivider|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|LessThan0~6_combout\ = (\clkDivider|s_divCounter\(25) & ((\clkDivider|s_divCounter\(24)) # ((!\clkDivider|LessThan0~0_combout\ & \clkDivider|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(25),
	datab => \clkDivider|s_divCounter\(24),
	datac => \clkDivider|LessThan0~0_combout\,
	datad => \clkDivider|LessThan0~5_combout\,
	combout => \clkDivider|LessThan0~6_combout\);

-- Location: FF_X100_Y34_N7
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

-- Location: LCCOMB_X100_Y34_N8
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

-- Location: FF_X100_Y34_N9
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

-- Location: LCCOMB_X100_Y34_N10
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

-- Location: FF_X100_Y34_N11
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

-- Location: FF_X100_Y34_N13
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

-- Location: LCCOMB_X100_Y34_N2
\clkDivider|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~2_combout\ = (!\clkDivider|s_divCounter\(3) & (!\clkDivider|s_divCounter\(2) & (!\clkDivider|s_divCounter\(0) & !\clkDivider|s_divCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(3),
	datab => \clkDivider|s_divCounter\(2),
	datac => \clkDivider|s_divCounter\(0),
	datad => \clkDivider|s_divCounter\(1),
	combout => \clkDivider|Equal0~2_combout\);

-- Location: LCCOMB_X99_Y34_N24
\clkDivider|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~3_combout\ = (!\clkDivider|s_divCounter\(12) & (!\clkDivider|s_divCounter\(5) & (!\clkDivider|s_divCounter\(4) & !\clkDivider|s_divCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(12),
	datab => \clkDivider|s_divCounter\(5),
	datac => \clkDivider|s_divCounter\(4),
	datad => \clkDivider|s_divCounter\(6),
	combout => \clkDivider|Equal0~3_combout\);

-- Location: LCCOMB_X100_Y33_N28
\clkDivider|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~6_combout\ = (!\clkDivider|s_divCounter\(23) & (!\clkDivider|s_divCounter\(21) & (!\clkDivider|s_divCounter\(24) & !\clkDivider|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(23),
	datab => \clkDivider|s_divCounter\(21),
	datac => \clkDivider|s_divCounter\(24),
	datad => \clkDivider|s_divCounter\(22),
	combout => \clkDivider|Equal0~6_combout\);

-- Location: LCCOMB_X99_Y34_N4
\clkDivider|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~4_combout\ = (!\clkDivider|s_divCounter\(14) & (!\clkDivider|s_divCounter\(15) & (!\clkDivider|s_divCounter\(13) & !\clkDivider|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(14),
	datab => \clkDivider|s_divCounter\(15),
	datac => \clkDivider|s_divCounter\(13),
	datad => \clkDivider|s_divCounter\(16),
	combout => \clkDivider|Equal0~4_combout\);

-- Location: LCCOMB_X100_Y33_N30
\clkDivider|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~5_combout\ = (!\clkDivider|s_divCounter\(19) & (!\clkDivider|s_divCounter\(20) & (!\clkDivider|s_divCounter\(17) & !\clkDivider|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(19),
	datab => \clkDivider|s_divCounter\(20),
	datac => \clkDivider|s_divCounter\(17),
	datad => \clkDivider|s_divCounter\(18),
	combout => \clkDivider|Equal0~5_combout\);

-- Location: LCCOMB_X99_Y34_N14
\clkDivider|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~7_combout\ = (!\clkDivider|s_divCounter\(25) & (\clkDivider|Equal0~6_combout\ & (\clkDivider|Equal0~4_combout\ & \clkDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|s_divCounter\(25),
	datab => \clkDivider|Equal0~6_combout\,
	datac => \clkDivider|Equal0~4_combout\,
	datad => \clkDivider|Equal0~5_combout\,
	combout => \clkDivider|Equal0~7_combout\);

-- Location: LCCOMB_X99_Y34_N20
\clkDivider|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDivider|Equal0~8_combout\ = (\clkDivider|Equal0~2_combout\ & (\clkDivider|Equal0~3_combout\ & (\clkDivider|Equal0~7_combout\ & \clkDivider|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|Equal0~2_combout\,
	datab => \clkDivider|Equal0~3_combout\,
	datac => \clkDivider|Equal0~7_combout\,
	datad => \clkDivider|Equal0~1_combout\,
	combout => \clkDivider|Equal0~8_combout\);

-- Location: FF_X99_Y34_N21
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

-- Location: LCCOMB_X96_Y36_N14
\regInput|startStop_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regInput|startStop_state~0_combout\ = \regInput|startStop_state~q\ $ (((\KEY[1]~input_o\ & \clkDivider|pulseOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \clkDivider|pulseOut~q\,
	datac => \regInput|startStop_state~q\,
	combout => \regInput|startStop_state~0_combout\);

-- Location: FF_X96_Y36_N15
\regInput|startStop_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regInput|startStop_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regInput|startStop_state~q\);

-- Location: LCCOMB_X98_Y36_N14
\fsm|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector8~0_combout\ = (\timerOfFSM|s_cntZero~q\ & ((\fsm|s_currentState.LEAVEN~q\))) # (!\timerOfFSM|s_cntZero~q\ & (\fsm|s_currentState.COOK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.COOK~q\,
	datab => \fsm|s_currentState.LEAVEN~q\,
	datad => \timerOfFSM|s_cntZero~q\,
	combout => \fsm|Selector8~0_combout\);

-- Location: LCCOMB_X96_Y36_N28
\fsm|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector15~0_combout\ = (\timerOfFSM|s_cntZero~q\) # ((\fsm|s_currentState.STANDBY~q\) # (!\regInput|startStop_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_cntZero~q\,
	datac => \regInput|startStop_state~q\,
	datad => \fsm|s_currentState.STANDBY~q\,
	combout => \fsm|Selector15~0_combout\);

-- Location: CLKCTRL_G5
\fsm|Selector15~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsm|Selector15~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsm|Selector15~0clkctrl_outclk\);

-- Location: LCCOMB_X98_Y36_N8
\fsm|s_nextState.COOK_353\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nextState.COOK_353~combout\ = (GLOBAL(\fsm|Selector15~0clkctrl_outclk\) & (\fsm|Selector8~0_combout\)) # (!GLOBAL(\fsm|Selector15~0clkctrl_outclk\) & ((\fsm|s_nextState.COOK_353~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Selector8~0_combout\,
	datac => \fsm|s_nextState.COOK_353~combout\,
	datad => \fsm|Selector15~0clkctrl_outclk\,
	combout => \fsm|s_nextState.COOK_353~combout\);

-- Location: LCCOMB_X98_Y36_N30
\fsm|s_currentState.COOK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState.COOK~0_combout\ = (!\KEY[2]~input_o\ & \fsm|s_nextState.COOK_353~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \fsm|s_nextState.COOK_353~combout\,
	combout => \fsm|s_currentState.COOK~0_combout\);

-- Location: LCCOMB_X97_Y36_N30
\fsm|s_currentState.STANDBY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState.STANDBY~0_combout\ = (\clkDivider|pulseOut~q\ & ((\KEY[2]~input_o\) # (\regInput|startStop_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datac => \regInput|startStop_state~q\,
	datad => \clkDivider|pulseOut~q\,
	combout => \fsm|s_currentState.STANDBY~0_combout\);

-- Location: FF_X98_Y36_N31
\fsm|s_currentState.COOK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|s_currentState.COOK~0_combout\,
	ena => \fsm|s_currentState.STANDBY~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.COOK~q\);

-- Location: LCCOMB_X98_Y36_N28
\fsm|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector6~0_combout\ = (\timerOfFSM|s_cntZero~q\ & ((\fsm|s_currentState.COOK~q\))) # (!\timerOfFSM|s_cntZero~q\ & (\fsm|s_currentState.FINISH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_cntZero~q\,
	datab => \fsm|s_currentState.FINISH~q\,
	datad => \fsm|s_currentState.COOK~q\,
	combout => \fsm|Selector6~0_combout\);

-- Location: LCCOMB_X98_Y36_N16
\fsm|s_nextState.FINISH_341\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nextState.FINISH_341~combout\ = (GLOBAL(\fsm|Selector15~0clkctrl_outclk\) & ((\fsm|Selector6~0_combout\))) # (!GLOBAL(\fsm|Selector15~0clkctrl_outclk\) & (\fsm|s_nextState.FINISH_341~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_nextState.FINISH_341~combout\,
	datac => \fsm|Selector6~0_combout\,
	datad => \fsm|Selector15~0clkctrl_outclk\,
	combout => \fsm|s_nextState.FINISH_341~combout\);

-- Location: LCCOMB_X98_Y36_N24
\fsm|s_currentState.FINISH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState.FINISH~0_combout\ = (!\KEY[2]~input_o\ & \fsm|s_nextState.FINISH_341~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \fsm|s_nextState.FINISH_341~combout\,
	combout => \fsm|s_currentState.FINISH~0_combout\);

-- Location: FF_X98_Y36_N25
\fsm|s_currentState.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fsm|s_currentState.FINISH~0_combout\,
	ena => \fsm|s_currentState.STANDBY~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.FINISH~q\);

-- Location: LCCOMB_X96_Y36_N30
\fsm|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector14~0_combout\ = (\regInput|startStop_state~q\ & (\timerOfFSM|s_cntZero~q\ & ((\fsm|s_currentState.FINISH~q\)))) # (!\regInput|startStop_state~q\ & (((\timerOfFSM|s_cntZero~q\ & \fsm|s_currentState.FINISH~q\)) # 
-- (!\fsm|s_currentState.STANDBY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regInput|startStop_state~q\,
	datab => \timerOfFSM|s_cntZero~q\,
	datac => \fsm|s_currentState.STANDBY~q\,
	datad => \fsm|s_currentState.FINISH~q\,
	combout => \fsm|Selector14~0_combout\);

-- Location: LCCOMB_X96_Y36_N26
\fsm|s_nextState.STANDBY_389\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nextState.STANDBY_389~combout\ = (GLOBAL(\fsm|Selector15~0clkctrl_outclk\) & (\fsm|Selector14~0_combout\)) # (!GLOBAL(\fsm|Selector15~0clkctrl_outclk\) & ((\fsm|s_nextState.STANDBY_389~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector14~0_combout\,
	datac => \fsm|s_nextState.STANDBY_389~combout\,
	datad => \fsm|Selector15~0clkctrl_outclk\,
	combout => \fsm|s_nextState.STANDBY_389~combout\);

-- Location: LCCOMB_X96_Y36_N18
\fsm|s_currentState.STANDBY~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState.STANDBY~1_combout\ = (!\KEY[2]~input_o\ & !\fsm|s_nextState.STANDBY_389~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \fsm|s_nextState.STANDBY_389~combout\,
	combout => \fsm|s_currentState.STANDBY~1_combout\);

-- Location: FF_X96_Y36_N19
\fsm|s_currentState.STANDBY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|s_currentState.STANDBY~1_combout\,
	ena => \fsm|s_currentState.STANDBY~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.STANDBY~q\);

-- Location: LCCOMB_X96_Y36_N22
\fsm|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector12~0_combout\ = (\regInput|startStop_state~q\ & (((\fsm|s_currentState.CRUMPLE~q\ & !\timerOfFSM|s_cntZero~q\)) # (!\fsm|s_currentState.STANDBY~q\))) # (!\regInput|startStop_state~q\ & (\fsm|s_currentState.CRUMPLE~q\ & 
-- ((!\timerOfFSM|s_cntZero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regInput|startStop_state~q\,
	datab => \fsm|s_currentState.CRUMPLE~q\,
	datac => \fsm|s_currentState.STANDBY~q\,
	datad => \timerOfFSM|s_cntZero~q\,
	combout => \fsm|Selector12~0_combout\);

-- Location: LCCOMB_X96_Y36_N8
\fsm|s_nextState.CRUMPLE_377\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nextState.CRUMPLE_377~combout\ = (GLOBAL(\fsm|Selector15~0clkctrl_outclk\) & ((\fsm|Selector12~0_combout\))) # (!GLOBAL(\fsm|Selector15~0clkctrl_outclk\) & (\fsm|s_nextState.CRUMPLE_377~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_nextState.CRUMPLE_377~combout\,
	datac => \fsm|Selector12~0_combout\,
	datad => \fsm|Selector15~0clkctrl_outclk\,
	combout => \fsm|s_nextState.CRUMPLE_377~combout\);

-- Location: LCCOMB_X97_Y36_N26
\fsm|s_currentState.CRUMPLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState.CRUMPLE~0_combout\ = (!\KEY[2]~input_o\ & \fsm|s_nextState.CRUMPLE_377~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \fsm|s_nextState.CRUMPLE_377~combout\,
	combout => \fsm|s_currentState.CRUMPLE~0_combout\);

-- Location: FF_X98_Y36_N15
\fsm|s_currentState.CRUMPLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fsm|s_currentState.CRUMPLE~0_combout\,
	sload => VCC,
	ena => \fsm|s_currentState.STANDBY~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.CRUMPLE~q\);

-- Location: LCCOMB_X98_Y36_N12
\fsm|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector10~0_combout\ = (\timerOfFSM|s_cntZero~q\ & ((\fsm|s_currentState.CRUMPLE~q\))) # (!\timerOfFSM|s_cntZero~q\ & (\fsm|s_currentState.LEAVEN~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.LEAVEN~q\,
	datac => \fsm|s_currentState.CRUMPLE~q\,
	datad => \timerOfFSM|s_cntZero~q\,
	combout => \fsm|Selector10~0_combout\);

-- Location: LCCOMB_X98_Y36_N4
\fsm|s_nextState.LEAVEN_365\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nextState.LEAVEN_365~combout\ = (GLOBAL(\fsm|Selector15~0clkctrl_outclk\) & (\fsm|Selector10~0_combout\)) # (!GLOBAL(\fsm|Selector15~0clkctrl_outclk\) & ((\fsm|s_nextState.LEAVEN_365~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector10~0_combout\,
	datac => \fsm|s_nextState.LEAVEN_365~combout\,
	datad => \fsm|Selector15~0clkctrl_outclk\,
	combout => \fsm|s_nextState.LEAVEN_365~combout\);

-- Location: LCCOMB_X98_Y36_N20
\fsm|s_currentState.LEAVEN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState.LEAVEN~0_combout\ = (\fsm|s_nextState.LEAVEN_365~combout\ & !\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_nextState.LEAVEN_365~combout\,
	datac => \KEY[2]~input_o\,
	combout => \fsm|s_currentState.LEAVEN~0_combout\);

-- Location: FF_X98_Y36_N21
\fsm|s_currentState.LEAVEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fsm|s_currentState.LEAVEN~0_combout\,
	ena => \fsm|s_currentState.STANDBY~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.LEAVEN~q\);

-- Location: LCCOMB_X98_Y36_N2
\fsm|s_stateChange~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_stateChange~1_combout\ = (\fsm|s_currentState.LEAVEN~q\ & ((\fsm|s_currentState.CRUMPLE~q\ $ (\fsm|s_nextState.CRUMPLE_377~combout\)) # (!\fsm|s_nextState.LEAVEN_365~combout\))) # (!\fsm|s_currentState.LEAVEN~q\ & 
-- ((\fsm|s_nextState.LEAVEN_365~combout\) # (\fsm|s_currentState.CRUMPLE~q\ $ (\fsm|s_nextState.CRUMPLE_377~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.LEAVEN~q\,
	datab => \fsm|s_currentState.CRUMPLE~q\,
	datac => \fsm|s_nextState.LEAVEN_365~combout\,
	datad => \fsm|s_nextState.CRUMPLE_377~combout\,
	combout => \fsm|s_stateChange~1_combout\);

-- Location: LCCOMB_X98_Y36_N18
\fsm|s_stateChange~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_stateChange~0_combout\ = (\fsm|s_currentState.COOK~q\ & ((\fsm|s_currentState.FINISH~q\ $ (\fsm|s_nextState.FINISH_341~combout\)) # (!\fsm|s_nextState.COOK_353~combout\))) # (!\fsm|s_currentState.COOK~q\ & ((\fsm|s_nextState.COOK_353~combout\) # 
-- (\fsm|s_currentState.FINISH~q\ $ (\fsm|s_nextState.FINISH_341~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.COOK~q\,
	datab => \fsm|s_currentState.FINISH~q\,
	datac => \fsm|s_nextState.COOK_353~combout\,
	datad => \fsm|s_nextState.FINISH_341~combout\,
	combout => \fsm|s_stateChange~0_combout\);

-- Location: LCCOMB_X99_Y36_N28
\fsm|s_stateChange~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_stateChange~2_combout\ = (\fsm|s_stateChange~1_combout\) # ((\fsm|s_stateChange~0_combout\) # (\fsm|s_currentState.STANDBY~q\ $ (!\fsm|s_nextState.STANDBY_389~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_stateChange~1_combout\,
	datab => \fsm|s_currentState.STANDBY~q\,
	datac => \fsm|s_stateChange~0_combout\,
	datad => \fsm|s_nextState.STANDBY_389~combout\,
	combout => \fsm|s_stateChange~2_combout\);

-- Location: LCCOMB_X99_Y36_N14
\fsm|s_stateChange~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_stateChange~3_combout\ = (!\KEY[2]~input_o\ & \clkDivider|pulseOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \clkDivider|pulseOut~q\,
	combout => \fsm|s_stateChange~3_combout\);

-- Location: LCCOMB_X99_Y36_N16
\fsm|s_stateChange~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_stateChange~4_combout\ = (\fsm|s_stateChange~3_combout\ & ((\regInput|startStop_state~q\ & (!\fsm|s_stateChange~2_combout\)) # (!\regInput|startStop_state~q\ & ((\fsm|s_stateChange~q\))))) # (!\fsm|s_stateChange~3_combout\ & 
-- (((\fsm|s_stateChange~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_stateChange~2_combout\,
	datab => \fsm|s_stateChange~3_combout\,
	datac => \fsm|s_stateChange~q\,
	datad => \regInput|startStop_state~q\,
	combout => \fsm|s_stateChange~4_combout\);

-- Location: FF_X99_Y36_N17
\fsm|s_stateChange\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|s_stateChange~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_stateChange~q\);

-- Location: LCCOMB_X100_Y36_N14
\timerOfFSM|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~0_combout\ = \timerOfFSM|s_counter\(0) $ (GND)
-- \timerOfFSM|Add1~1\ = CARRY(!\timerOfFSM|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(0),
	datad => VCC,
	combout => \timerOfFSM|Add1~0_combout\,
	cout => \timerOfFSM|Add1~1\);

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

-- Location: LCCOMB_X99_Y34_N0
\regInput|crumple_Time[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regInput|crumple_Time[1]~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \regInput|crumple_Time[1]~feeder_combout\);

-- Location: FF_X99_Y34_N1
\regInput|crumple_Time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \regInput|crumple_Time[1]~feeder_combout\,
	ena => \fsm|s_stateChange~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regInput|crumple_Time\(1));

-- Location: FF_X98_Y33_N27
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
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \romCrumple|dataOut\(0));

-- Location: LCCOMB_X98_Y33_N28
\fsm|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector16~0_combout\ = (\romCrumple|dataOut\(0) & \fsm|s_currentState.CRUMPLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \romCrumple|dataOut\(0),
	datab => \fsm|s_currentState.CRUMPLE~q\,
	combout => \fsm|Selector16~0_combout\);

-- Location: LCCOMB_X96_Y36_N6
\fsm|s_time_display[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_time_display[7]~0_combout\ = (\regInput|startStop_state~q\) # (\fsm|s_currentState.STANDBY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regInput|startStop_state~q\,
	datad => \fsm|s_currentState.STANDBY~q\,
	combout => \fsm|s_time_display[7]~0_combout\);

-- Location: CLKCTRL_G8
\fsm|s_time_display[7]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fsm|s_time_display[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fsm|s_time_display[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X99_Y36_N10
\fsm|time_value[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|time_value\(0) = (GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & ((\fsm|Selector16~0_combout\))) # (!GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & (\fsm|time_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|time_value\(0),
	datac => \fsm|Selector16~0_combout\,
	datad => \fsm|s_time_display[7]~0clkctrl_outclk\,
	combout => \fsm|time_value\(0));

-- Location: LCCOMB_X99_Y36_N30
\timerOfFSM|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~2_combout\ = (!\KEY[2]~input_o\ & ((\fsm|s_stateChange~q\ & (!\timerOfFSM|Add1~0_combout\)) # (!\fsm|s_stateChange~q\ & ((\fsm|time_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \fsm|s_stateChange~q\,
	datac => \timerOfFSM|Add1~0_combout\,
	datad => \fsm|time_value\(0),
	combout => \timerOfFSM|Add1~2_combout\);

-- Location: LCCOMB_X99_Y36_N8
\timerOfFSM|s_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_counter[0]~0_combout\ = (\clkDivider|pulseOut~q\ & ((\KEY[2]~input_o\) # (!\timerOfFSM|s_cntZero~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDivider|pulseOut~q\,
	datac => \KEY[2]~input_o\,
	datad => \timerOfFSM|s_cntZero~2_combout\,
	combout => \timerOfFSM|s_counter[0]~0_combout\);

-- Location: FF_X99_Y36_N31
\timerOfFSM|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|Add1~2_combout\,
	ena => \timerOfFSM|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(0));

-- Location: LCCOMB_X100_Y36_N16
\timerOfFSM|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~4_combout\ = (\timerOfFSM|s_counter\(1) & (!\timerOfFSM|Add1~1\)) # (!\timerOfFSM|s_counter\(1) & (\timerOfFSM|Add1~1\ & VCC))
-- \timerOfFSM|Add1~5\ = CARRY((\timerOfFSM|s_counter\(1) & !\timerOfFSM|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(1),
	datad => VCC,
	cin => \timerOfFSM|Add1~1\,
	combout => \timerOfFSM|Add1~4_combout\,
	cout => \timerOfFSM|Add1~5\);

-- Location: LCCOMB_X97_Y36_N10
\fsm|time_value[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|time_value\(1) = (GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & ((!\fsm|s_currentState.LEAVEN~q\))) # (!GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & (\fsm|time_value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|time_value\(1),
	datac => \fsm|s_currentState.LEAVEN~q\,
	datad => \fsm|s_time_display[7]~0clkctrl_outclk\,
	combout => \fsm|time_value\(1));

-- Location: LCCOMB_X99_Y36_N6
\timerOfFSM|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~3_combout\ = (!\fsm|s_stateChange~q\ & (\fsm|time_value\(0) $ (!\fsm|time_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|time_value\(0),
	datab => \fsm|s_stateChange~q\,
	datad => \fsm|time_value\(1),
	combout => \timerOfFSM|Add1~3_combout\);

-- Location: LCCOMB_X99_Y36_N20
\timerOfFSM|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~6_combout\ = (!\KEY[2]~input_o\ & (!\timerOfFSM|Add1~3_combout\ & ((!\timerOfFSM|Add1~4_combout\) # (!\fsm|s_stateChange~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \fsm|s_stateChange~q\,
	datac => \timerOfFSM|Add1~4_combout\,
	datad => \timerOfFSM|Add1~3_combout\,
	combout => \timerOfFSM|Add1~6_combout\);

-- Location: FF_X99_Y36_N21
\timerOfFSM|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|Add1~6_combout\,
	ena => \timerOfFSM|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(1));

-- Location: LCCOMB_X100_Y36_N18
\timerOfFSM|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~8_combout\ = (\timerOfFSM|s_counter\(2) & (\timerOfFSM|Add1~5\ $ (GND))) # (!\timerOfFSM|s_counter\(2) & ((GND) # (!\timerOfFSM|Add1~5\)))
-- \timerOfFSM|Add1~9\ = CARRY((!\timerOfFSM|Add1~5\) # (!\timerOfFSM|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(2),
	datad => VCC,
	cin => \timerOfFSM|Add1~5\,
	combout => \timerOfFSM|Add1~8_combout\,
	cout => \timerOfFSM|Add1~9\);

-- Location: LCCOMB_X99_Y34_N12
\regInput|leaven_Time[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regInput|leaven_Time[1]~0_combout\ = !\SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \regInput|leaven_Time[1]~0_combout\);

-- Location: FF_X99_Y34_N13
\regInput|leaven_Time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \regInput|leaven_Time[1]~0_combout\,
	ena => \fsm|s_stateChange~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regInput|leaven_Time\(1));

-- Location: FF_X98_Y33_N29
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
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \romLeaven|dataOut\(2));

-- Location: LCCOMB_X97_Y36_N28
\fsm|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector18~0_combout\ = (\fsm|s_currentState.CRUMPLE~q\ & ((\romCrumple|dataOut\(0)) # ((\romLeaven|dataOut\(2) & \fsm|s_currentState.LEAVEN~q\)))) # (!\fsm|s_currentState.CRUMPLE~q\ & (\romLeaven|dataOut\(2) & (\fsm|s_currentState.LEAVEN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.CRUMPLE~q\,
	datab => \romLeaven|dataOut\(2),
	datac => \fsm|s_currentState.LEAVEN~q\,
	datad => \romCrumple|dataOut\(0),
	combout => \fsm|Selector18~0_combout\);

-- Location: LCCOMB_X97_Y36_N22
\fsm|time_value[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|time_value\(2) = (GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & (\fsm|Selector18~0_combout\)) # (!GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & ((\fsm|time_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector18~0_combout\,
	datac => \fsm|time_value\(2),
	datad => \fsm|s_time_display[7]~0clkctrl_outclk\,
	combout => \fsm|time_value\(2));

-- Location: LCCOMB_X97_Y36_N24
\timerOfFSM|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~7_combout\ = (!\fsm|s_stateChange~q\ & (\fsm|time_value\(2) $ (((!\fsm|time_value\(1) & !\fsm|time_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|time_value\(1),
	datab => \fsm|s_stateChange~q\,
	datac => \fsm|time_value\(2),
	datad => \fsm|time_value\(0),
	combout => \timerOfFSM|Add1~7_combout\);

-- Location: LCCOMB_X97_Y36_N12
\timerOfFSM|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~10_combout\ = (!\KEY[2]~input_o\ & (!\timerOfFSM|Add1~7_combout\ & ((!\fsm|s_stateChange~q\) # (!\timerOfFSM|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|Add1~8_combout\,
	datab => \fsm|s_stateChange~q\,
	datac => \KEY[2]~input_o\,
	datad => \timerOfFSM|Add1~7_combout\,
	combout => \timerOfFSM|Add1~10_combout\);

-- Location: FF_X97_Y36_N13
\timerOfFSM|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|Add1~10_combout\,
	ena => \timerOfFSM|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(2));

-- Location: LCCOMB_X100_Y36_N20
\timerOfFSM|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~11_combout\ = (\timerOfFSM|s_counter\(3) & (!\timerOfFSM|Add1~9\)) # (!\timerOfFSM|s_counter\(3) & (\timerOfFSM|Add1~9\ & VCC))
-- \timerOfFSM|Add1~12\ = CARRY((\timerOfFSM|s_counter\(3) & !\timerOfFSM|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(3),
	datad => VCC,
	cin => \timerOfFSM|Add1~9\,
	combout => \timerOfFSM|Add1~11_combout\,
	cout => \timerOfFSM|Add1~12\);

-- Location: LCCOMB_X97_Y36_N18
\fsm|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector19~0_combout\ = (\fsm|s_currentState.COOK~q\) # ((\fsm|s_currentState.CRUMPLE~q\) # ((\fsm|s_currentState.LEAVEN~q\ & \romCrumple|dataOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.COOK~q\,
	datab => \fsm|s_currentState.CRUMPLE~q\,
	datac => \fsm|s_currentState.LEAVEN~q\,
	datad => \romCrumple|dataOut\(0),
	combout => \fsm|Selector19~0_combout\);

-- Location: LCCOMB_X97_Y36_N0
\fsm|time_value[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|time_value\(3) = (GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & (\fsm|Selector19~0_combout\)) # (!GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & ((\fsm|time_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector19~0_combout\,
	datab => \fsm|time_value\(3),
	datad => \fsm|s_time_display[7]~0clkctrl_outclk\,
	combout => \fsm|time_value\(3));

-- Location: LCCOMB_X97_Y36_N20
\timerOfFSM|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add0~0_combout\ = \fsm|time_value\(3) $ (((\fsm|time_value\(1)) # ((\fsm|time_value\(2)) # (\fsm|time_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|time_value\(1),
	datab => \fsm|time_value\(3),
	datac => \fsm|time_value\(2),
	datad => \fsm|time_value\(0),
	combout => \timerOfFSM|Add0~0_combout\);

-- Location: LCCOMB_X97_Y36_N8
\timerOfFSM|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~23_combout\ = (!\KEY[2]~input_o\ & ((\fsm|s_stateChange~q\ & (!\timerOfFSM|Add1~11_combout\)) # (!\fsm|s_stateChange~q\ & ((\timerOfFSM|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|Add1~11_combout\,
	datab => \fsm|s_stateChange~q\,
	datac => \KEY[2]~input_o\,
	datad => \timerOfFSM|Add0~0_combout\,
	combout => \timerOfFSM|Add1~23_combout\);

-- Location: FF_X97_Y36_N9
\timerOfFSM|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|Add1~23_combout\,
	ena => \timerOfFSM|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(3));

-- Location: LCCOMB_X100_Y36_N22
\timerOfFSM|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~13_combout\ = (\timerOfFSM|s_counter\(4) & (\timerOfFSM|Add1~12\ $ (GND))) # (!\timerOfFSM|s_counter\(4) & ((GND) # (!\timerOfFSM|Add1~12\)))
-- \timerOfFSM|Add1~14\ = CARRY((!\timerOfFSM|Add1~12\) # (!\timerOfFSM|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(4),
	datad => VCC,
	cin => \timerOfFSM|Add1~12\,
	combout => \timerOfFSM|Add1~13_combout\,
	cout => \timerOfFSM|Add1~14\);

-- Location: LCCOMB_X99_Y36_N0
\timerOfFSM|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~21_combout\ = (!\fsm|time_value\(0) & (!\fsm|time_value\(1) & (!\fsm|time_value\(2) & !\fsm|time_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|time_value\(0),
	datab => \fsm|time_value\(1),
	datac => \fsm|time_value\(2),
	datad => \fsm|time_value\(3),
	combout => \timerOfFSM|Add1~21_combout\);

-- Location: LCCOMB_X99_Y36_N2
\timerOfFSM|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~24_combout\ = (!\KEY[2]~input_o\ & ((\fsm|s_stateChange~q\ & (!\timerOfFSM|Add1~13_combout\)) # (!\fsm|s_stateChange~q\ & ((!\timerOfFSM|Add1~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_stateChange~q\,
	datab => \timerOfFSM|Add1~13_combout\,
	datac => \KEY[2]~input_o\,
	datad => \timerOfFSM|Add1~21_combout\,
	combout => \timerOfFSM|Add1~24_combout\);

-- Location: FF_X99_Y36_N3
\timerOfFSM|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|Add1~24_combout\,
	ena => \timerOfFSM|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(4));

-- Location: LCCOMB_X100_Y36_N24
\timerOfFSM|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~15_combout\ = (\timerOfFSM|s_counter\(5) & (!\timerOfFSM|Add1~14\)) # (!\timerOfFSM|s_counter\(5) & (\timerOfFSM|Add1~14\ & VCC))
-- \timerOfFSM|Add1~16\ = CARRY((\timerOfFSM|s_counter\(5) & !\timerOfFSM|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(5),
	datad => VCC,
	cin => \timerOfFSM|Add1~14\,
	combout => \timerOfFSM|Add1~15_combout\,
	cout => \timerOfFSM|Add1~16\);

-- Location: LCCOMB_X99_Y36_N24
\timerOfFSM|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~25_combout\ = (!\KEY[2]~input_o\ & ((\fsm|s_stateChange~q\ & (!\timerOfFSM|Add1~15_combout\)) # (!\fsm|s_stateChange~q\ & ((!\timerOfFSM|Add1~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_stateChange~q\,
	datab => \timerOfFSM|Add1~15_combout\,
	datac => \KEY[2]~input_o\,
	datad => \timerOfFSM|Add1~21_combout\,
	combout => \timerOfFSM|Add1~25_combout\);

-- Location: FF_X99_Y36_N25
\timerOfFSM|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|Add1~25_combout\,
	ena => \timerOfFSM|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(5));

-- Location: LCCOMB_X100_Y36_N26
\timerOfFSM|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~17_combout\ = (\timerOfFSM|s_counter\(6) & (\timerOfFSM|Add1~16\ $ (GND))) # (!\timerOfFSM|s_counter\(6) & ((GND) # (!\timerOfFSM|Add1~16\)))
-- \timerOfFSM|Add1~18\ = CARRY((!\timerOfFSM|Add1~16\) # (!\timerOfFSM|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(6),
	datad => VCC,
	cin => \timerOfFSM|Add1~16\,
	combout => \timerOfFSM|Add1~17_combout\,
	cout => \timerOfFSM|Add1~18\);

-- Location: LCCOMB_X99_Y36_N26
\timerOfFSM|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~26_combout\ = (!\KEY[2]~input_o\ & ((\fsm|s_stateChange~q\ & (!\timerOfFSM|Add1~17_combout\)) # (!\fsm|s_stateChange~q\ & ((!\timerOfFSM|Add1~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \fsm|s_stateChange~q\,
	datac => \timerOfFSM|Add1~17_combout\,
	datad => \timerOfFSM|Add1~21_combout\,
	combout => \timerOfFSM|Add1~26_combout\);

-- Location: FF_X99_Y36_N27
\timerOfFSM|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|Add1~26_combout\,
	ena => \timerOfFSM|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(6));

-- Location: LCCOMB_X100_Y36_N28
\timerOfFSM|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~19_combout\ = \timerOfFSM|s_counter\(7) $ (\timerOfFSM|Add1~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(7),
	cin => \timerOfFSM|Add1~18\,
	combout => \timerOfFSM|Add1~19_combout\);

-- Location: LCCOMB_X99_Y36_N4
\timerOfFSM|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|Add1~22_combout\ = (!\KEY[2]~input_o\ & ((\fsm|s_stateChange~q\ & (!\timerOfFSM|Add1~19_combout\)) # (!\fsm|s_stateChange~q\ & ((!\timerOfFSM|Add1~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_stateChange~q\,
	datab => \timerOfFSM|Add1~19_combout\,
	datac => \KEY[2]~input_o\,
	datad => \timerOfFSM|Add1~21_combout\,
	combout => \timerOfFSM|Add1~22_combout\);

-- Location: FF_X99_Y36_N5
\timerOfFSM|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerOfFSM|Add1~22_combout\,
	ena => \timerOfFSM|s_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_counter\(7));

-- Location: LCCOMB_X99_Y36_N22
\timerOfFSM|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_cntZero~0_combout\ = (\timerOfFSM|s_counter\(0) & (\timerOfFSM|s_counter\(1) & (\timerOfFSM|s_counter\(2) & \fsm|s_stateChange~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(0),
	datab => \timerOfFSM|s_counter\(1),
	datac => \timerOfFSM|s_counter\(2),
	datad => \fsm|s_stateChange~q\,
	combout => \timerOfFSM|s_cntZero~0_combout\);

-- Location: LCCOMB_X99_Y36_N12
\timerOfFSM|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_cntZero~1_combout\ = (\timerOfFSM|s_counter\(6) & (\timerOfFSM|s_counter\(4) & (\timerOfFSM|s_counter\(3) & \timerOfFSM|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_counter\(6),
	datab => \timerOfFSM|s_counter\(4),
	datac => \timerOfFSM|s_counter\(3),
	datad => \timerOfFSM|s_counter\(5),
	combout => \timerOfFSM|s_cntZero~1_combout\);

-- Location: LCCOMB_X99_Y36_N18
\timerOfFSM|s_cntZero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOfFSM|s_cntZero~2_combout\ = (\timerOfFSM|s_counter\(7) & (\timerOfFSM|s_cntZero~0_combout\ & \timerOfFSM|s_cntZero~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_counter\(7),
	datac => \timerOfFSM|s_cntZero~0_combout\,
	datad => \timerOfFSM|s_cntZero~1_combout\,
	combout => \timerOfFSM|s_cntZero~2_combout\);

-- Location: FF_X97_Y36_N15
\timerOfFSM|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \timerOfFSM|s_cntZero~2_combout\,
	sclr => \KEY[2]~input_o\,
	sload => VCC,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOfFSM|s_cntZero~q\);

-- Location: LCCOMB_X97_Y36_N16
\fsm|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector5~0_combout\ = (\fsm|s_currentState.CRUMPLE~q\) # ((\timerOfFSM|s_cntZero~q\ & \fsm|s_currentState.FINISH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerOfFSM|s_cntZero~q\,
	datac => \fsm|s_currentState.CRUMPLE~q\,
	datad => \fsm|s_currentState.FINISH~q\,
	combout => \fsm|Selector5~0_combout\);

-- Location: LCCOMB_X98_Y36_N10
\fsm|led\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|led~combout\ = (\fsm|Selector5~0_combout\ & ((!\fsm|s_currentState.FINISH~q\))) # (!\fsm|Selector5~0_combout\ & (\fsm|led~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|led~combout\,
	datac => \fsm|Selector5~0_combout\,
	datad => \fsm|s_currentState.FINISH~q\,
	combout => \fsm|led~combout\);

-- Location: LCCOMB_X98_Y36_N0
\fsm|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector2~0_combout\ = (\fsm|s_currentState.CRUMPLE~q\) # ((\fsm|s_currentState.COOK~q\ & \timerOfFSM|s_cntZero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.CRUMPLE~q\,
	datac => \fsm|s_currentState.COOK~q\,
	datad => \timerOfFSM|s_cntZero~q\,
	combout => \fsm|Selector2~0_combout\);

-- Location: LCCOMB_X98_Y36_N22
\fsm|ledg[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|ledg\(0) = (\fsm|Selector2~0_combout\ & (!\fsm|s_currentState.COOK~q\)) # (!\fsm|Selector2~0_combout\ & ((\fsm|ledg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.COOK~q\,
	datac => \fsm|ledg\(0),
	datad => \fsm|Selector2~0_combout\,
	combout => \fsm|ledg\(0));

-- Location: LCCOMB_X98_Y36_N6
\fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~0_combout\ = (\fsm|s_currentState.CRUMPLE~q\) # ((\timerOfFSM|s_cntZero~q\ & \fsm|s_currentState.LEAVEN~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOfFSM|s_cntZero~q\,
	datab => \fsm|s_currentState.CRUMPLE~q\,
	datad => \fsm|s_currentState.LEAVEN~q\,
	combout => \fsm|Selector0~0_combout\);

-- Location: LCCOMB_X98_Y36_N26
\fsm|ledg[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|ledg\(1) = (\fsm|Selector0~0_combout\ & ((!\fsm|s_currentState.LEAVEN~q\))) # (!\fsm|Selector0~0_combout\ & (\fsm|ledg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector0~0_combout\,
	datac => \fsm|ledg\(1),
	datad => \fsm|s_currentState.LEAVEN~q\,
	combout => \fsm|ledg\(1));

-- Location: LCCOMB_X97_Y36_N4
\fsm|ledg[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|ledg\(2) = (\fsm|s_currentState.CRUMPLE~q\ & ((!\timerOfFSM|s_cntZero~q\))) # (!\fsm|s_currentState.CRUMPLE~q\ & (\fsm|ledg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.CRUMPLE~q\,
	datab => \fsm|ledg\(2),
	datac => \timerOfFSM|s_cntZero~q\,
	combout => \fsm|ledg\(2));

-- Location: LCCOMB_X98_Y33_N20
\fsm|s_time_display[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_time_display\(0) = (GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & (\fsm|s_time_display\(0))) # (!GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & ((\romCrumple|dataOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_time_display\(0),
	datac => \romCrumple|dataOut\(0),
	datad => \fsm|s_time_display[7]~0clkctrl_outclk\,
	combout => \fsm|s_time_display\(0));

-- Location: LCCOMB_X98_Y33_N4
\timerToDisplay|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~0_combout\ = \fsm|s_time_display\(0) $ (VCC)
-- \timerToDisplay|Add0~1\ = CARRY(\fsm|s_time_display\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_time_display\(0),
	datad => VCC,
	combout => \timerToDisplay|Add0~0_combout\,
	cout => \timerToDisplay|Add0~1\);

-- Location: LCCOMB_X98_Y33_N6
\timerToDisplay|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~3_combout\ = !\timerToDisplay|Add0~1\
-- \timerToDisplay|Add0~4\ = CARRY(!\timerToDisplay|Add0~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \timerToDisplay|Add0~1\,
	combout => \timerToDisplay|Add0~3_combout\,
	cout => \timerToDisplay|Add0~4\);

-- Location: LCCOMB_X99_Y33_N14
\timerToDisplay|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~5_combout\ = (!\KEY[2]~input_o\ & !\timerToDisplay|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \timerToDisplay|Add0~3_combout\,
	combout => \timerToDisplay|Add0~5_combout\);

-- Location: FF_X99_Y33_N15
\timerToDisplay|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerToDisplay|Add0~5_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerToDisplay|s_counter\(1));

-- Location: LCCOMB_X98_Y33_N30
\fsm|s_time_display[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_time_display\(4) = (GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & ((\fsm|s_time_display\(4)))) # (!GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & (!\romCrumple|dataOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \romCrumple|dataOut\(0),
	datac => \fsm|s_time_display\(4),
	datad => \fsm|s_time_display[7]~0clkctrl_outclk\,
	combout => \fsm|s_time_display\(4));

-- Location: LCCOMB_X98_Y33_N26
\fsm|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add1~0_combout\ = (!\romCrumple|dataOut\(0) & \romLeaven|dataOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \romCrumple|dataOut\(0),
	datad => \romLeaven|dataOut\(2),
	combout => \fsm|Add1~0_combout\);

-- Location: LCCOMB_X98_Y33_N0
\fsm|s_time_display[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_time_display\(3) = (GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & ((\fsm|s_time_display\(3)))) # (!GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & (\fsm|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|Add1~0_combout\,
	datac => \fsm|s_time_display\(3),
	datad => \fsm|s_time_display[7]~0clkctrl_outclk\,
	combout => \fsm|s_time_display\(3));

-- Location: LCCOMB_X98_Y33_N2
\fsm|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~0_combout\ = \romLeaven|dataOut\(2) $ (\romCrumple|dataOut\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \romLeaven|dataOut\(2),
	datad => \romCrumple|dataOut\(0),
	combout => \fsm|Add0~0_combout\);

-- Location: LCCOMB_X98_Y33_N22
\fsm|s_time_display[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_time_display\(2) = (GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & (\fsm|s_time_display\(2))) # (!GLOBAL(\fsm|s_time_display[7]~0clkctrl_outclk\) & ((!\fsm|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_time_display\(2),
	datab => \fsm|Add0~0_combout\,
	datac => \fsm|s_time_display[7]~0clkctrl_outclk\,
	combout => \fsm|s_time_display\(2));

-- Location: LCCOMB_X98_Y33_N8
\timerToDisplay|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~6_combout\ = (\fsm|s_time_display\(2) & ((GND) # (!\timerToDisplay|Add0~4\))) # (!\fsm|s_time_display\(2) & (\timerToDisplay|Add0~4\ $ (GND)))
-- \timerToDisplay|Add0~7\ = CARRY((\fsm|s_time_display\(2)) # (!\timerToDisplay|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_time_display\(2),
	datad => VCC,
	cin => \timerToDisplay|Add0~4\,
	combout => \timerToDisplay|Add0~6_combout\,
	cout => \timerToDisplay|Add0~7\);

-- Location: LCCOMB_X98_Y33_N10
\timerToDisplay|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~8_combout\ = (\fsm|s_time_display\(3) & (\timerToDisplay|Add0~7\ & VCC)) # (!\fsm|s_time_display\(3) & (!\timerToDisplay|Add0~7\))
-- \timerToDisplay|Add0~9\ = CARRY((!\fsm|s_time_display\(3) & !\timerToDisplay|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_time_display\(3),
	datad => VCC,
	cin => \timerToDisplay|Add0~7\,
	combout => \timerToDisplay|Add0~8_combout\,
	cout => \timerToDisplay|Add0~9\);

-- Location: LCCOMB_X98_Y33_N12
\timerToDisplay|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~10_combout\ = (\fsm|s_time_display\(4) & ((GND) # (!\timerToDisplay|Add0~9\))) # (!\fsm|s_time_display\(4) & (\timerToDisplay|Add0~9\ $ (GND)))
-- \timerToDisplay|Add0~11\ = CARRY((\fsm|s_time_display\(4)) # (!\timerToDisplay|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_time_display\(4),
	datad => VCC,
	cin => \timerToDisplay|Add0~9\,
	combout => \timerToDisplay|Add0~10_combout\,
	cout => \timerToDisplay|Add0~11\);

-- Location: LCCOMB_X99_Y33_N28
\timerToDisplay|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~21_combout\ = (!\KEY[2]~input_o\ & !\timerToDisplay|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \timerToDisplay|Add0~10_combout\,
	combout => \timerToDisplay|Add0~21_combout\);

-- Location: FF_X99_Y33_N29
\timerToDisplay|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerToDisplay|Add0~21_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerToDisplay|s_counter\(4));

-- Location: LCCOMB_X98_Y33_N14
\timerToDisplay|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~12_combout\ = (\fsm|s_time_display\(0) & (\timerToDisplay|Add0~11\ & VCC)) # (!\fsm|s_time_display\(0) & (!\timerToDisplay|Add0~11\))
-- \timerToDisplay|Add0~13\ = CARRY((!\fsm|s_time_display\(0) & !\timerToDisplay|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_time_display\(0),
	datad => VCC,
	cin => \timerToDisplay|Add0~11\,
	combout => \timerToDisplay|Add0~12_combout\,
	cout => \timerToDisplay|Add0~13\);

-- Location: LCCOMB_X98_Y33_N16
\timerToDisplay|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~14_combout\ = \timerToDisplay|Add0~13\ $ (GND)
-- \timerToDisplay|Add0~15\ = CARRY(!\timerToDisplay|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \timerToDisplay|Add0~13\,
	combout => \timerToDisplay|Add0~14_combout\,
	cout => \timerToDisplay|Add0~15\);

-- Location: LCCOMB_X99_Y33_N20
\timerToDisplay|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~19_combout\ = (!\KEY[2]~input_o\ & !\timerToDisplay|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \timerToDisplay|Add0~14_combout\,
	combout => \timerToDisplay|Add0~19_combout\);

-- Location: FF_X99_Y33_N21
\timerToDisplay|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerToDisplay|Add0~19_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerToDisplay|s_counter\(6));

-- Location: LCCOMB_X98_Y33_N18
\timerToDisplay|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~16_combout\ = !\timerToDisplay|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \timerToDisplay|Add0~15\,
	combout => \timerToDisplay|Add0~16_combout\);

-- Location: LCCOMB_X98_Y33_N24
\timerToDisplay|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~18_combout\ = (!\KEY[2]~input_o\ & !\timerToDisplay|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datad => \timerToDisplay|Add0~16_combout\,
	combout => \timerToDisplay|Add0~18_combout\);

-- Location: FF_X98_Y33_N25
\timerToDisplay|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerToDisplay|Add0~18_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerToDisplay|s_counter\(7));

-- Location: LCCOMB_X99_Y33_N2
\timerToDisplay|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~20_combout\ = (!\KEY[2]~input_o\ & !\timerToDisplay|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \timerToDisplay|Add0~12_combout\,
	combout => \timerToDisplay|Add0~20_combout\);

-- Location: FF_X99_Y33_N3
\timerToDisplay|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerToDisplay|Add0~20_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerToDisplay|s_counter\(5));

-- Location: LCCOMB_X103_Y33_N12
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \timerToDisplay|s_counter\(5) $ (GND)
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(!\timerToDisplay|s_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerToDisplay|s_counter\(5),
	datad => VCC,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X103_Y33_N14
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\timerToDisplay|s_counter\(6) & (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # (!\timerToDisplay|s_counter\(6) & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((\timerToDisplay|s_counter\(6) & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerToDisplay|s_counter\(6),
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X103_Y33_N16
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\timerToDisplay|s_counter\(7) & (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC)) # (!\timerToDisplay|s_counter\(7) & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND)))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\timerToDisplay|s_counter\(7) & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerToDisplay|s_counter\(7),
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X103_Y33_N18
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

-- Location: LCCOMB_X103_Y33_N22
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (!\timerToDisplay|s_counter\(6) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timerToDisplay|s_counter\(6),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X102_Y33_N4
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X102_Y33_N10
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X103_Y33_N20
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (!\timerToDisplay|s_counter\(5) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerToDisplay|s_counter\(5),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X102_Y33_N16
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (!\timerToDisplay|s_counter\(4) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timerToDisplay|s_counter\(4),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X102_Y33_N6
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (!\timerToDisplay|s_counter\(4) & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timerToDisplay|s_counter\(4),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X103_Y33_N2
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X103_Y33_N4
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

-- Location: LCCOMB_X103_Y33_N6
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X103_Y33_N24
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (!\timerToDisplay|s_counter\(7) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timerToDisplay|s_counter\(7),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X103_Y33_N0
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

-- Location: LCCOMB_X103_Y33_N8
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

-- Location: LCCOMB_X103_Y33_N10
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

-- Location: LCCOMB_X103_Y33_N30
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X103_Y33_N28
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ 
-- & (!\timerToDisplay|s_counter\(6))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerToDisplay|s_counter\(6),
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\);

-- Location: LCCOMB_X103_Y32_N8
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X103_Y33_N26
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ 
-- & ((!\timerToDisplay|s_counter\(5)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \timerToDisplay|s_counter\(5),
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[22]~64_combout\);

-- Location: LCCOMB_X103_Y31_N22
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X103_Y31_N0
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (!\timerToDisplay|s_counter\(4) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timerToDisplay|s_counter\(4),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X99_Y33_N18
\timerToDisplay|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~22_combout\ = (!\KEY[2]~input_o\ & !\timerToDisplay|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \timerToDisplay|Add0~8_combout\,
	combout => \timerToDisplay|Add0~22_combout\);

-- Location: FF_X99_Y33_N19
\timerToDisplay|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerToDisplay|Add0~22_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerToDisplay|s_counter\(3));

-- Location: LCCOMB_X103_Y30_N0
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (!\timerToDisplay|s_counter\(3) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timerToDisplay|s_counter\(3),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X102_Y32_N4
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\timerToDisplay|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timerToDisplay|s_counter\(3),
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X103_Y32_N10
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

-- Location: LCCOMB_X103_Y32_N12
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X103_Y32_N14
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

-- Location: LCCOMB_X103_Y32_N16
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\ & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[23]~63_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X103_Y32_N18
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

-- Location: LCCOMB_X103_Y31_N4
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ 
-- & (!\timerToDisplay|s_counter\(4))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerToDisplay|s_counter\(4),
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\);

-- Location: LCCOMB_X103_Y32_N6
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X103_Y32_N20
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

-- Location: LCCOMB_X103_Y32_N0
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X102_Y32_N6
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (!\timerToDisplay|s_counter\(3) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerToDisplay|s_counter\(3),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X103_Y32_N2
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

-- Location: LCCOMB_X99_Y33_N12
\timerToDisplay|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~23_combout\ = (!\KEY[2]~input_o\ & !\timerToDisplay|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \timerToDisplay|Add0~6_combout\,
	combout => \timerToDisplay|Add0~23_combout\);

-- Location: FF_X99_Y33_N13
\timerToDisplay|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerToDisplay|Add0~23_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerToDisplay|s_counter\(2));

-- Location: LCCOMB_X102_Y32_N26
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\timerToDisplay|s_counter\(2) & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerToDisplay|s_counter\(2),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X102_Y32_N28
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (!\timerToDisplay|s_counter\(2) & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerToDisplay|s_counter\(2),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X103_Y32_N22
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X103_Y32_N24
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X103_Y32_N26
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

-- Location: LCCOMB_X103_Y32_N28
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

-- Location: LCCOMB_X103_Y32_N30
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

-- Location: LCCOMB_X103_Y32_N4
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\) # 
-- ((!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[27]~65_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~62_combout\);

-- Location: LCCOMB_X102_Y32_N8
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X102_Y32_N10
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ 
-- & (!\timerToDisplay|s_counter\(3))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \timerToDisplay|s_counter\(3),
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[32]~66_combout\);

-- Location: LCCOMB_X102_Y32_N2
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

-- Location: LCCOMB_X102_Y32_N12
\timeToDisplay|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Add1~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\timerToDisplay|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timerToDisplay|s_counter\(2),
	combout => \timeToDisplay|Add1~0_combout\);

-- Location: LCCOMB_X102_Y32_N24
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

-- Location: LCCOMB_X102_Y32_N30
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\timerToDisplay|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timerToDisplay|s_counter\(1),
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X102_Y32_N0
\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\timerToDisplay|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timerToDisplay|s_counter\(1),
	combout => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X102_Y32_N14
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\) # (\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X102_Y32_N16
\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\timeToDisplay|Add1~0_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~0_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X102_Y32_N18
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

-- Location: LCCOMB_X102_Y32_N20
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

-- Location: LCCOMB_X102_Y32_N22
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

-- Location: LCCOMB_X99_Y33_N10
\timeToDisplay|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Add1~1_combout\ = \timerToDisplay|s_counter\(1) $ (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timerToDisplay|s_counter\(1),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \timeToDisplay|Add1~1_combout\);

-- Location: LCCOMB_X99_Y33_N16
\timerToDisplay|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerToDisplay|Add0~2_combout\ = (!\KEY[2]~input_o\ & !\timerToDisplay|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \timerToDisplay|Add0~0_combout\,
	combout => \timerToDisplay|Add0~2_combout\);

-- Location: FF_X99_Y33_N17
\timerToDisplay|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerToDisplay|Add0~2_combout\,
	ena => \clkDivider|pulseOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerToDisplay|s_counter\(0));

-- Location: LCCOMB_X99_Y33_N8
\timeToDisplay|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Add1~2_combout\ = \timerToDisplay|s_counter\(2) $ (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (((\timerToDisplay|s_counter\(1) & 
-- !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerToDisplay|s_counter\(2),
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \timerToDisplay|s_counter\(1),
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \timeToDisplay|Add1~2_combout\);

-- Location: LCCOMB_X103_Y30_N18
\timeToDisplay|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Add1~3_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # ((!\timerToDisplay|s_counter\(2)) # 
-- (!\timerToDisplay|s_counter\(1))))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\timerToDisplay|s_counter\(2) & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- (!\timerToDisplay|s_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \timerToDisplay|s_counter\(1),
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \timerToDisplay|s_counter\(2),
	combout => \timeToDisplay|Add1~3_combout\);

-- Location: LCCOMB_X103_Y30_N20
\timeToDisplay|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeToDisplay|Add1~4_combout\ = \timerToDisplay|s_counter\(3) $ (\timeToDisplay|Add1~3_combout\ $ (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerToDisplay|s_counter\(3),
	datab => \timeToDisplay|Add1~3_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \timeToDisplay|Add1~4_combout\);

-- Location: LCCOMB_X99_Y33_N22
\display0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux6~0_combout\ = (\timeToDisplay|Add1~2_combout\ & (\timeToDisplay|Add1~1_combout\ & (\timerToDisplay|s_counter\(0) $ (!\timeToDisplay|Add1~4_combout\)))) # (!\timeToDisplay|Add1~2_combout\ & (!\timerToDisplay|s_counter\(0) & 
-- (\timeToDisplay|Add1~1_combout\ $ (!\timeToDisplay|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timerToDisplay|s_counter\(0),
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timeToDisplay|Add1~4_combout\,
	combout => \display0|Mux6~0_combout\);

-- Location: LCCOMB_X99_Y33_N0
\display0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux5~0_combout\ = (\timeToDisplay|Add1~1_combout\ & (\timeToDisplay|Add1~2_combout\ & (\timerToDisplay|s_counter\(0) $ (\timeToDisplay|Add1~4_combout\)))) # (!\timeToDisplay|Add1~1_combout\ & ((\timerToDisplay|s_counter\(0) & 
-- (\timeToDisplay|Add1~2_combout\)) # (!\timerToDisplay|s_counter\(0) & ((!\timeToDisplay|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timerToDisplay|s_counter\(0),
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timeToDisplay|Add1~4_combout\,
	combout => \display0|Mux5~0_combout\);

-- Location: LCCOMB_X99_Y33_N26
\display0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux4~0_combout\ = (\timeToDisplay|Add1~2_combout\ & (!\timeToDisplay|Add1~4_combout\ & ((\timerToDisplay|s_counter\(0)) # (!\timeToDisplay|Add1~1_combout\)))) # (!\timeToDisplay|Add1~2_combout\ & (!\timeToDisplay|Add1~1_combout\ & 
-- (\timerToDisplay|s_counter\(0) & \timeToDisplay|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timerToDisplay|s_counter\(0),
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timeToDisplay|Add1~4_combout\,
	combout => \display0|Mux4~0_combout\);

-- Location: LCCOMB_X99_Y33_N4
\display0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux3~0_combout\ = (\timeToDisplay|Add1~1_combout\ & (\timeToDisplay|Add1~4_combout\ & (\timerToDisplay|s_counter\(0) $ (!\timeToDisplay|Add1~2_combout\)))) # (!\timeToDisplay|Add1~1_combout\ & ((\timerToDisplay|s_counter\(0) & 
-- (!\timeToDisplay|Add1~2_combout\ & !\timeToDisplay|Add1~4_combout\)) # (!\timerToDisplay|s_counter\(0) & (\timeToDisplay|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timerToDisplay|s_counter\(0),
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timeToDisplay|Add1~4_combout\,
	combout => \display0|Mux3~0_combout\);

-- Location: LCCOMB_X99_Y33_N6
\display0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux2~0_combout\ = (\timeToDisplay|Add1~1_combout\ & ((\timeToDisplay|Add1~2_combout\ & ((\timeToDisplay|Add1~4_combout\))) # (!\timeToDisplay|Add1~2_combout\ & (!\timerToDisplay|s_counter\(0))))) # (!\timeToDisplay|Add1~1_combout\ & 
-- (!\timerToDisplay|s_counter\(0) & ((\timeToDisplay|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timerToDisplay|s_counter\(0),
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timeToDisplay|Add1~4_combout\,
	combout => \display0|Mux2~0_combout\);

-- Location: LCCOMB_X99_Y33_N24
\display0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux1~0_combout\ = (\timeToDisplay|Add1~1_combout\ & (!\timerToDisplay|s_counter\(0) & (\timeToDisplay|Add1~2_combout\ $ (\timeToDisplay|Add1~4_combout\)))) # (!\timeToDisplay|Add1~1_combout\ & (\timeToDisplay|Add1~4_combout\ & 
-- ((!\timeToDisplay|Add1~2_combout\) # (!\timerToDisplay|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timerToDisplay|s_counter\(0),
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timeToDisplay|Add1~4_combout\,
	combout => \display0|Mux1~0_combout\);

-- Location: LCCOMB_X99_Y33_N30
\display0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|Mux0~0_combout\ = (\timerToDisplay|s_counter\(0) & ((\timeToDisplay|Add1~2_combout\ $ (!\timeToDisplay|Add1~4_combout\)) # (!\timeToDisplay|Add1~1_combout\))) # (!\timerToDisplay|s_counter\(0) & ((\timeToDisplay|Add1~1_combout\ $ 
-- (!\timeToDisplay|Add1~2_combout\)) # (!\timeToDisplay|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Add1~1_combout\,
	datab => \timerToDisplay|s_counter\(0),
	datac => \timeToDisplay|Add1~2_combout\,
	datad => \timeToDisplay|Add1~4_combout\,
	combout => \display0|Mux0~0_combout\);

-- Location: LCCOMB_X103_Y30_N6
\display1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux6~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display1|Mux6~0_combout\);

-- Location: LCCOMB_X103_Y30_N24
\display1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux5~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display1|Mux5~0_combout\);

-- Location: LCCOMB_X103_Y30_N10
\display1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux4~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display1|Mux4~0_combout\);

-- Location: LCCOMB_X103_Y30_N12
\display1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux3~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display1|Mux3~0_combout\);

-- Location: LCCOMB_X103_Y30_N22
\display1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux2~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (((!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display1|Mux2~0_combout\);

-- Location: LCCOMB_X103_Y30_N4
\display1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux1~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display1|Mux1~0_combout\);

-- Location: LCCOMB_X103_Y30_N26
\display1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|Mux0~0_combout\ = (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \timeToDisplay|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display1|Mux0~0_combout\);

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

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


