library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity BreadMachine is
	port(CLOCK_50	: in std_logic;
		 KEY		: in std_logic_vector(2 downto 9);
		 SW			: in std_logic_vector(0 downto 0);
		 LEDR		: out std_logic_vector(0 downto 0);
		 HEX0		: out std_logic_vector(6 downto 0);
		 HEX1		: out std_logic_vector(6 downto 0);
		 HEX4		: out std_logic_vector(6 downto 0)
		 );
end BreadMachine;

architecture Shell of BreadMachine is

	signal s_clk_1Hz	: std_logic;
	signal s_time_exp	: std_logic;
	-- FSM outputs
	signal s_new_time	: std_logic;
	signal s_time_value	: std_logic_vector(7 downto 0);
	signal s_time_display	: std_logic_vector(7 downto 0);
	-- Register outputs
	signal s_RegisterTimeExtra	: std_logic_vector(7 downto 0);
	signal s_time_Getcrumple	: std_logic_vector(3 downto 0);
	signal s_time_Getleaven	: std_logic_vector(3 downto 0);
	signal s_time_Getcook	: std_logic_vector(3 downto 0);
	signal s_status		: std_logic;
	signal s_timeToDelay	: std_logic_vector(7 downto 0);
	signal s_RegisterTimeAdjust : std_logic_vector(7 downto 0);
	
	-- Counter
	signal s_CounterTimeAdjust	: std_logic_vector(7 downto 0);
	
	-- Bread Times
	signal s_LeavenTime : std_logic_vector(7 downto 0);
	signal s_CrumpleTime : std_logic_vector(7 downto 0);
	signal s_CookTime : std_logic_vector(7 downto 0);
	
	--Times to Display
	signal s_timeToDisplay : std_logic_vector(7 downto 0);
	signal s_timeAdjustToDisplay : std_logic_vector(7 downto 0);
	signal s_timeDelay : std_logic_vector(7 downto 0);
	signal s_TimeExtraToDisplay : std_logic_vector(7 downto 0);
	
begin

	clkDivider : entity work.ClkDividerN(RTL)
				generic map(divFactor => 50000000)
				port map(clkIn => CLOCK_50,
						 pulseOut => s_clk_1Hz);
						 
	keyLogger : entity work.KeyLogger(Behavioral)
				port map()

	regInput : entity work.RegInput(Behavioral)
				port map(clk => CLOCK_50,
						 clk_enable => s_clk_1Hz,
						 reset => KEY(2),
						 time_adjust => s_RegisterTimeAdjust,
						 startStop => KEY(1),
						 program => SW(0),
						 time_delay => s_RegisterDelay,
						 time_toAdjust => s_RegisterTimeExtra,
						 leaven_Time => s_time_Getleaven,	
						 crumple_Time => s_time_Getcrumple,
						 cook_Time => s_time_Getcook,
						 time_ToDelay => s_timeToDelay,
						 fsmEnable => s_status);
						 
	romLeaven : entity work.ROM_5x8_breadTime(Behavioral)
				port map(clk => CLOCK_50,
						 clk_enable	=> s_clk_1Hz,
						 address => s_time_Getleaven,
						 dataOut => s_LeavenTime);
						
	romCrumple : entity work.ROM_5x8_breadTime(Behavioral)
				port map(clk => CLOCK_50,
						 clk_enable	=> s_clk_1Hz,
						 address => s_time_Getcrumple,
						 dataOut => s_CrumpleTime);
						 
	romCook : entity work.ROM_5x8_breadTime(Behavioral)
				port map(clk => CLOCK_50,
						 clk_enable	=> s_clk_1Hz,
						 address => s_time_Getcook,
						 dataOut => s_CookTime);
						 
	fsm	: entity work.ControlUnitBehavioral)
				port map(clk => CLOCK_50,
						 clk_enable => s_clk_1Hz,
						 reset => KEY(2),
						 status => s_status,
						 time_delay => s_RegisterDelay,
						 time_crumple => s_CrumpleTime,
						 time_leaven => s_LeavenTime,
						 time_cook => s_CookTime,
						 time_extra => s_RegisterTimeExtra,
						 time_exp => s_time_exp,
						 led => LEDR(0),
						 time_value => s_time_value,
						 new_time => s_new_time,
						 time_display => s_time_display);
						 
	timer : entity work.TimerAuxFSM(Behavioral)
				port map(reset => KEY(2),
						 clk => CLOCK_50,
						 clk_enable => s_clk_1Hz,
						 newTime => s_new_time,
						 timeVal => s_time_value,
						 timeExp => s_time_exp);
						 
	timeToDisplay : entity work.ShowTimeToDisplay(Behavioral)
				port map(input => s_time_display,
						 output => s_timeToDisplay);
						 
	timeAdjustToDisplay : entity work.ShowTimeToDisplay(Behavioral)
				port map(input => s_RegisterTimeExtra,
						 output => s_timeAdjustToDisplay)
						 
	timeExtraToDisplay : entity work.ShowTimeToDisplay(Behavioral)
				port map(input => s_RegisterTimeExtra,
						 output => S_TimeExtraToDisplay);
						 
	display1 : entity work.Bin7SegDecoder(Behavioral)
				port map(binInput => s_timeToDisplay(7 downto 4),
						 decOut_n => HEX1(6 downto 0));
						 
	display0 : entity work.Bin7SegDecoder(Behavioral)
				port map(binInput => s_timeToDisplay(3 downto 0),
						 decOut_n => HEX0(6 downto 0));
						 
	display4 : entity work.Bin7SegDecoder(Behavioral)
				port map(binInput => s_timeAdjustToDisplay,
						 decOut_n => HEX4(6 downto 0));
						 
	display6 : entity work.Bin7SegDecoder8Behavioral
				port map(binInput => s_timeDelay(3 downto 0),
						 decOut_n => HEX4(6 downto 0));
	
	display7 : entity work.Bin7SegDecoder(Behavioral)
				port map(binInput => s_timeDelay(7 downto 4),
						 decOut_n => HEX4(6 downto 0));
						 
						 
						 
						 
		
	
	

