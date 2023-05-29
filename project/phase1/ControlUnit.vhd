library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ControlUnit is
	port(reset			: in  std_logic;
		 clk			: in  std_logic;
		 clk_enable		: in std_logic;
		 status			: in  std_logic;-- start/stop
		 time_crumple	: in std_logic_vector(7 downto 0);
		 time_leaven	: in std_logic_vector(7 downto 0);
		 time_cook		: in std_logic_vector(7 downto 0);
		 time_extra		: in std_logic_vector(7 downto 0);
		 time_exp		: in std_logic;
		 delayExp		: in std_logic;
		 time_delay		: in std_logic_vector(7 downto 0);
		 current_time	: in std_logic_vector(7 downto 0);
		 led			: out std_logic := '0';
		 ledg			: out std_logic_vector(2 downto 0);
		 time_value		: out std_logic_vector(7 downto 0);
		 timerEnable	: out std_logic;
		 new_time		: out std_logic;
		 delay_enable	: out std_logic;
		 delayNewTime	: out std_logic;
		 delayToTimer	: out std_logic_vector(7 downto 0);
		 orderToStop	: out std_logic
		 );
end ControlUnit;

architecture Behavioral of ControlUnit is

	type BState is (STANDBY, DELAY, CRUMPLE, LEAVEN, COOK, FINISH); -- define states, add more if necessary
	signal s_currentState, s_nextState : BState := STANDBY;
	
	signal s_stateChange	: std_logic := '1';
	signal s_time_display	: std_logic_vector(7 downto 0);
	signal s_currentTime	: unsigned(7 downto 0);
	
begin
	s_currentTime <= unsigned(current_time);
	clk_call : process(clk) -- update when clock is active 
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= STANDBY;
			else 
				s_currentState <= s_nextState;
			end if;
			if (s_currentState /= s_nextState) then
				s_stateChange <= '1';
			else
				s_stateChange <= '0';
			end if;
		end if;
	end process;

	time_value <= std_logic_vector(unsigned(time_crumple) + unsigned(time_leaven) + 
								unsigned(time_cook) + unsigned(time_extra) + unsigned(time_delay));
	
	fsm_states : process(s_currentState, time_exp, status)
	begin
		orderToStop <= '0';
		case(s_currentState) is
		when STANDBY =>
			new_time <= '1';
			timerEnable <= '0';
			delay_enable <= '0';
			led <= '0';
			ledg <= (others => '0');
			
			if (status = '1') then
				s_nextState <= DELAY;
			else
				s_nextState <= STANDBY;
			end if;
			
		when DELAY =>
			new_time <= '0';
			timerEnable <= status;
			
			if (s_currentTime = unsigned(time_value) - unsigned(time_delay)) then
				s_nextState <= CRUMPLE;
			else
				s_nextState <= DELAY;
			end if;
		
		when CRUMPLE =>
			new_time <= '0';
			
			if (status = '1') then
				timerEnable <= '1';
			else
				timerEnable <= '0';
			end if;
				
			led <= '1';
			ledg(2 downto 0) <= (others => '1');
			
			if (s_currentTime = unsigned(time_value) - unsigned(time_delay) - unsigned(time_crumple) - 1) then
				s_nextState <= LEAVEN;
			else
				s_nextState <= CRUMPLE;
			end if;
			
		when LEAVEN =>
			new_time <= '0';
			
			if (status = '1') then
				timerEnable <= '1';
			else
				timerEnable <= '0';
			end if;
				
			led <= '1';
			ledg(2) <= '0';
			ledg(1 downto 0) <= (others => '1');
			if (s_currentTime = unsigned(time_value) - unsigned(time_delay) - unsigned(time_crumple) - unsigned(time_leaven) - 1) then
				s_nextState <= COOK;
 			else
				s_nextState <= LEAVEN;
			end if;
			
		when COOK =>
			new_time <= '0';
			
			if (status = '1') then
				timerEnable <= '1';
			else
				timerEnable <= '0';
			end if;
				
			ledg(2 downto 1) <= (others => '0');
			ledg(0) <= '1';
			led <= '1';
			if (time_exp = '1') then
				delayNewTime <= '1';
				delay_enable <= '1';
				s_nextState <= FINISH;
			else
				s_nextState <= COOK;
			end if;
		
		when FINISH =>
			new_time <= '0';
			orderToStop <= '1';
			timerEnable <= '0';
			
			delayNewTime <= '0';
			delay_enable <= '1';
			
			led <= '1';
			ledg <= (others => '0');
			if (delayExp = '1') then
				led <= '0';
				s_nextState <= STANDBY;
			else
				s_nextState <= FINISH;
			end if;
		end case;
	end process;
end Behavioral;
