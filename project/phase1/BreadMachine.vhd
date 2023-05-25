library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity BreadMachine is
	port(CLOCK_50	: in std_logic;
		 KEY		: in std_logic_vector(2 downto 0);
		 SW			: in std_logic_vector(0 downto 0);
		 LEDR		: out std_logic_vector(0 downto 0);
		 LEDG		: out std_logic_vector(2 downto 0);
		 HEX0		: out std_logic_vector(6 downto 0);
		 HEX1		: out std_logic_vector(6 downto 0);
		 HEX4		: out std_logic_vector(6 downto 0);
		 HEX6		: out std_logic_vector(6 downto 0);
		 HEX7		: out std_logic_vector(6 downto 0)
		 );
end BreadMachine;

architecture Shell of BreadMachine is

	signal s_clk_1Hz	: std_logic;
	signal s_time_exp	: std_logic;
	-- FSM outputs
	signal s_new_time	: std_logic;
	signal s_time_value	: std_logic_vector(7 downto 0);
	signal s_time_display	: std_logic_vector(7 downto 0);
	signal s_orderToStop	: std_logic;
	signal s_led			: std_logic;
	signal s_ledg			: std_logic_vector(2 downto 0);
	signal s_TimerEnable	: std_logic;
	
	-- Register outputs
	signal s_RegisterTimeCook	: std_logic_vector(7 downto 0);
	signal s_time_Getcrumple	: std_logic_vector(2 downto 0);
	signal s_time_Getleaven	: std_logic_vector(2 downto 0);
	signal s_time_Getcook	: std_logic_vector(2 downto 0);
	signal s_status			: std_logic;
	signal s_timeToDelay	: std_logic_vector(7 downto 0);
	signal s_RegisterTimeAdjust : std_logic_vector(7 downto 0);
	
	-- Counter
	signal s_CounterTimeCook	: std_logic_vector(7 downto 0);
	signal s_CounterTimeExtra	: std_logic_vector(7 downto 0);
	
	-- Bread Times
	signal s_LeavenTime : std_logic_vector(7 downto 0);
	signal s_CrumpleTime : std_logic_vector(7 downto 0);
	signal s_CookTime : std_logic_vector(7 downto 0);
	
	--Times to Display
	signal s_TimeFromTimerDisplay	: std_logic_vector(7 downto 0);
	signal s_timeToDisplay : std_logic_vector(7 downto 0);
	signal s_timeAdjustToDisplay : std_logic_vector(7 downto 0);
	signal s_timeDelay : std_logic_vector(7 downto 0);
	signal s_TimeExtraToDisplay : std_logic_vector(7 downto 0);
	
begin

	clkDivider : entity work.ClkDividerN(Behavioral)
				generic map(divFactor => 50000000)
				port map(clkIn => CLOCK_50,
						 pulseOut => s_clk_1Hz);
						 
	/*keyLoggerAdjust : entity work.KeyLogger(Behavioral)
				port map();
				
	keyLoggerDelay	: entity work.KeyLogger(Behavioral)
				port map();*/

	regInput : entity work.RegInput(Behavioral)
				port map(clk => CLOCK_50,
						 clk_enable => s_clk_1Hz,
						 reset => KEY(2),
						 time_Cook => s_CounterTimeCook, --comes from keyLoggerAdjust
						 time_Delay => s_CounterTimeExtra,
						 startStop => KEY(1),
						 program => SW(0),
						 orderToStop => s_orderToStop,
						 --Outputs
						 time_toCook => s_RegisterTimeCook,
						 leaven_Time => s_time_Getleaven,	
						 crumple_Time => s_time_Getcrumple, -- getTimes from ROM
						 cook_Time => s_time_Getcook,
						 time_ToDelay => s_timeToDelay, -- time to delay fsm start
						 fsmEnable => s_status);
	
	--Rom to get the time values
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
						 
	fsm	: entity work.ControlUnit(Behavioral)
				port map(clk => CLOCK_50,
						 clk_enable => s_clk_1Hz,
						 reset => KEY(2),
						 status => s_status,
						 time_crumple => s_CrumpleTime,
						 time_leaven => s_LeavenTime,
						 time_cook => s_CookTime,
						 time_extra => s_RegisterTimeCook,
						 time_delay => s_timeToDelay,
						 time_exp => s_time_exp,
						 --outputs 
						 led => LEDR(0),
						 ledg(2 downto 0) => LEDG(2 downto 0),
						 time_value => s_time_value,
						 new_time => s_new_time,
						 time_display => s_time_display,
						 timerEnable => s_TimerEnable);
			
	--timer for FSM to change states
	timerOfFSM : entity work.TimerAuxFSM(Behavioral)
				port map(reset => KEY(2),
						 clk => CLOCK_50,
						 clk_enable => s_clk_1Hz,
						 newTime => s_new_time,
						 timeVal => s_time_value,
						 --output
						 timeExp => s_time_exp);
				
	--timer to show on Display			
	timerToDisplay	: entity work.TimerToDisplay(Behavioral)
				port map(reset => KEY(2),
						clk => CLOCK_50,
						clk_enable => s_clk_1Hz,
						timeEnable => s_TimerEnable,
						timeVal => s_time_display,
						--output
						timeToDisplay => s_TimeFromTimerDisplay);
						 
	timeToDisplay : entity work.ShowTimeToDisplay(Behavioral)
				port map(input => s_TimeFromTimerDisplay,
						 output => s_timeToDisplay);
						 
	timeAdjustToDisplay : entity work.ShowTimeToDisplay(Behavioral)
				port map(input => s_RegisterTimeCook,--time extra to Cook
						 output => s_timeAdjustToDisplay);
						 
	--time to Delay FSM start
	timeDelayToDisplay : entity work.ShowTimeToDisplay(Behavioral)
				port map(input => s_TimeToDelay,
						 output => S_TimeExtraToDisplay);
			
	--Main Display
	display1 : entity work.Bin7SegDecoder(RTL)
				port map(binInput => s_timeToDisplay(7 downto 4),
						 decOut_n => HEX1(6 downto 0));
						 
	display0 : entity work.Bin7SegDecoder(RTL)
				port map(binInput => s_timeToDisplay(3 downto 0),
						 decOut_n => HEX0(6 downto 0));
						 
	--Display to show the time Adjust
	display4 : entity work.Bin7SegDecoder(RTL)
				port map(binInput => s_timeAdjustToDisplay(3 downto 0),
						 decOut_n => HEX4(6 downto 0));
					
	--Display to show the time to Delay FSM start		
	display6 : entity work.Bin7SegDecoder(RTL)
				port map(binInput => s_timeDelay(3 downto 0),
						 decOut_n => HEX6(6 downto 0));
	
	display7 : entity work.Bin7SegDecoder(RTL)
				port map(binInput => s_timeDelay(7 downto 4),
						 decOut_n => HEX7(6 downto 0));
end Shell;
						 
						 
						 
		
	
	

