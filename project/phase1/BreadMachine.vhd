library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity BreadMachine is
	port(CLOCK_50								: in std_logic;
		 KEY									: in std_logic_vector(3 downto 0);
		 SW										: in std_logic_vector(0 downto 0);
		 LEDR									: out std_logic_vector(0 downto 0);
		 LEDG									: out std_logic_vector(2 downto 0);
		 HEX0, HEX1, HEX4 /*HEX5 HEX6 */		: out std_logic_vector(6 downto 0)
		 );
end BreadMachine;

architecture Shell of BreadMachine is

	signal s_clk_1Hz	: std_logic;
	signal s_debounce	: std_logic;
	signal s_toggle		: std_logic;
	
	-- FSM outputs
	signal s_time_value		: std_logic_vector(7 downto 0);
	signal s_led			: std_logic;
	signal s_ledg			: std_logic_vector(2 downto 0);
	signal s_TimerEnable	: std_logic;
	signal s_time_exp		: std_logic;
	signal s_delayTimeExp	: std_logic;
	signal s_orderToStop 	: std_logic;
	signal s_newTime		: std_logic;
	signal s_delayEnable	: std_logic;
	signal s_delayNewTime	: std_logic;
	signal s_delayToTimer	: std_logic_vector (7 downto 0);
	signal s_delay			: std_logic_vector(7 downto 0);
	
	-- Register outputs
	signal s_RegisterTimeCook	: std_logic_vector(7 downto 0);
	signal s_time_Getcrumple	: std_logic_vector(2 downto 0);
	signal s_time_Getleaven		: std_logic_vector(2 downto 0);
	signal s_time_Getcook		: std_logic_vector(2 downto 0);
	signal s_status				: std_logic;
	signal s_timeToDelay		: std_logic_vector(7 downto 0);
	
	-- Counter
	signal s_CounterTimeCook	: std_logic_vector(7 downto 0);
	signal s_CounterTimeDelay	: std_logic_vector(7 downto 0);
	
	-- Bread Times
	signal s_LeavenTime 	: std_logic_vector(7 downto 0);
	signal s_CrumpleTime	: std_logic_vector(7 downto 0);
	signal s_CookTime		: std_logic_vector(7 downto 0);
	
	--Times to Display
	signal s_timeToDisplay			: std_logic_vector(7 downto 0);
	signal s_timeAdjustToDisplay	: std_logic_vector(7 downto 0);
	signal S_TimeDelayToDisplay		: std_logic_vector(7 downto 0);
	signal s_timeCounter			: std_logic_vector(7 downto 0);
	
begin

	clkDivider : entity work.ClkDividerN(Behavioral)
				generic map(divFactor => 50000000)
				port map(clkIn 		=> CLOCK_50,
						 pulseOut	=> s_clk_1Hz);
						 
	debounceUnit : entity work.DebounceUnit(Behavioral)
				port map(refClk		=> CLOCK_50,
						 dirtyIn	=> not KEY(1),
						 pulsedOut	=> s_debounce);
						 
	toggleSwitch : entity work.ToggleSwitch(Behavioral)
				port map(toggle 		=> s_debounce,
						 orderToStop	=> s_orderToStop,
						 reset			=> not KEY(2),
						 startStop		=> s_toggle);

	keyLoggerDelay : entity work.KeyLogger(Behavioral)
					generic map(limiter => 58)
					port map(press			=> KEY(3),
							 reset 			=> not KEY(2),
							 press_count	=> s_counterTimeDelay);
							 
	keyLoggerAdjust : entity work.KeyLogger(Behavioral)
					generic map(limiter	=> 5)
					port map(press			=> KEY(0),
							 reset			=> not KEY(2),
							 press_count 	=> s_counterTimeCook);
						 
	regInput : entity work.RegInput(Behavioral)
				port map(clk => CLOCK_50,
						 clk_enable => s_clk_1Hz,
						 reset => not KEY(2),
						 time_Cook 	=> s_CounterTimeCook, --comes from keyLoggerAdjust
						 time_Delay => s_CounterTimeDelay,
						 startStop	=> s_toggle,
						 program 	=> SW(0),
						 --Outputs
						 time_toCook 	=> s_RegisterTimeCook, --go directly to Display4 as well to FSM
						 leaven_Time 	=> s_time_Getleaven,	
						 crumple_Time 	=> s_time_Getcrumple, -- getTimes from ROM
						 cook_Time 		=> s_time_Getcook,
						 time_ToDelay 	=> s_timeToDelay,
						 fsmEnable 		=> s_status);
	
	--Rom to get the time values
	romLeaven : entity work.ROM_5x8_breadTime(Behavioral)
				port map(clk => CLOCK_50,
						 address => s_time_Getleaven,
						 dataOut => s_LeavenTime);
						
	romCrumple : entity work.ROM_5x8_breadTime(Behavioral)
				port map(clk => CLOCK_50,
						 address => s_time_Getcrumple,
						 dataOut => s_CrumpleTime);
						 
	romCook : entity work.ROM_5x8_breadTime(Behavioral)
				port map(clk => CLOCK_50,
						 address => s_time_Getcook,
						 dataOut => s_CookTime);
						 
						 
	fsm	: entity work.ControlUnit(Behavioral)
				port map(clk => CLOCK_50,
						 clk_enable 	=> s_clk_1Hz,
						 reset 			=> not KEY(2),
						 status 		=> s_status,
						 time_crumple 	=> s_CrumpleTime,
						 time_leaven 	=> s_LeavenTime,
						 time_cook 		=> s_CookTime,
						 delayExp  		=> s_delayTimeExp,
						 time_extra 	=> s_RegisterTimeCook,
						 time_exp 		=> s_time_exp,
						 current_time 	=> s_timeCounter,
						 time_delay 	=> s_timeToDelay,
						 
						 --outputs 
						 led 				=> LEDR(0),
						 ledg(2 downto 0) 	=> LEDG(2 downto 0),
						 time_value 		=> s_time_value,
						 delayNewTime 		=> s_delayNewTime,
						 orderToStop 		=> s_orderToStop,
						 delayToTimer		=> s_delay,
						 new_time 			=> s_newTime,
						 delay_enable 		=> s_delayEnable,
						 timerEnable 		=> s_TimerEnable);
	
	
	-- timer for delay
	timerOfDelay : entity work.TimerAuxFSM(Behavioral)
				port map(reset => not KEY(2),
						 clk 		=> CLOCK_50,
						 clk_enable => s_clk_1Hz,
						 timeEn 	=> s_delayEnable,
						 new_time 	=> s_delayNewTime,
						 timeVal 	=> "00000001",
						 --output
						 timeExp 		=> s_delayTimeExp,
						 timeCounter	=> s_delayToTimer);
						 
	--timer for FSM to change states
	timerOfFSM : entity work.TimerAuxFSM(Behavioral)
				port map(reset => not KEY(2),
						 clk => CLOCK_50,
						 clk_enable => s_clk_1Hz,
						 timeEn 	=> s_TimerEnable,
						 new_time 	=> s_newTime,
						 timeVal 	=> s_time_value,
						 --output
						 timeExp 	=> s_time_exp,
						 timeCounter => s_timeCounter);
						 
	 -- time for 
			
						 
	timeToDisplay : entity work.ShowTimeToDisplay(Behavioral)
				port map(input => s_timeCounter,
						 output => s_timeToDisplay);
						 
	timeAdjustToDisplay : entity work.ShowTimeToDisplay(Behavioral)
				port map(input => s_RegisterTimeCook,--time extra to Cook
						 output => s_timeAdjustToDisplay);
	 
	--time to Delay FSM start
	timeDelayToDisplay : entity work.ShowTimeToDisplay(Behavioral)
				port map(input => s_delayToTimer,
						 output => s_TimeDelayToDisplay);
			
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
--	display6 : entity work.Bin7SegDecoder(RTL)
--				port map(binInput => S_TimeDelayToDisplay(3 downto 0),
--						 decOut_n => HEX6(6 downto 0));
--	
--	display7 : entity work.Bin7SegDecoder(RTL)
--				port map(binInput => S_TimeDelayToDisplay(7 downto 4),
--						 decOut_n => HEX7(6 downto 0));
end Shell;
						 
						 
						 
		
	
	

