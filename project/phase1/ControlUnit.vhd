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
		 time_delay		: in std_logic_vector(7 downto 0);
		 led			: out std_logic;
		 ledg			: out std_logic_vector(2 downto 0);
		 time_value		: out std_logic_vector(7 downto 0);
		 new_time		: out std_logic;
		 time_display	: out std_logic_vector(7 downto 0);
		 orderToStop	: out std_logic := '0';
		 timerEnable	: out std_logic
		 );
end ControlUnit;

architecture Behavioral of ControlUnit is

	type BState is (STANDBY, CRUMPLE, LEAVEN, COOK, FINISH); -- define states, add more if necessary
	signal s_currentState, s_nextState : BState := STANDBY;
	
	signal s_stateChange	: std_logic := '1';
	signal s_time_display	: std_logic_vector(7 downto 0);
	
	
begin
	clk_call : process(clk) -- update when clock is active
	begin
		if (rising_edge(clk) and clk_enable = '1') then
			if (reset = '1') then
				s_currentState <= STANDBY;
			elsif (status = '1') then
				if (s_currentState /= s_nextState) then
					s_stateChange <= '1';
				else
					s_stateChange <= '0';
				end if;
				s_currentState <= s_nextState;
			elsif (status = '0' and s_currentState /= STANDBY) then
				time_display <= (others => '-');
			end if;
		end if;
	end process;
	
	new_time <= s_stateChange;
	time_display <= s_time_display;
	

	fsm_states : process(s_currentState, time_exp)
	begin
		case(s_currentState)is
		when STANDBY =>
			if (status = '1') then
				time_value <= time_delay;
				if(time_exp = '1') then
					s_nextState <= CRUMPLE;
				end if;
			else
				s_nextState <= STANDBY;
			s_time_display <= std_logic_vector(unsigned(time_crumple) + unsigned(time_leaven) + 
								unsigned(time_cook) + unsigned(time_extra));	
			end if;
		
		when CRUMPLE =>
			timerEnable <= '1';
			led <= '1';
			time_value <= time_crumple;
			ledg(2 downto 0) <= (others => '1');
			
			if (time_exp = '1') then
				s_nextState <= LEAVEN;
				ledg(2) <= '0';
			else
				s_nextState <= CRUMPLE;
			end if;
			
		when LEAVEN =>
			time_value <= time_leaven;
			
			if (time_exp = '1') then
				s_nextState <= COOK;
				ledg(1) <= '0';
 			else
				s_nextState <= LEAVEN;
			end if;	
			
		when COOK =>
			time_value <= std_logic_vector(unsigned(time_cook) + unsigned(time_extra));
			
			if (time_exp = '1') then
				s_nextState <= FINISH;
				ledg(0) <= '0';
			else
				s_nextState <= COOK;
			end if;
		
		when FINISH =>
			time_value <= "00000010";
			
			if (time_exp = '1') then
				led <= '0';
				s_nextState <= STANDBY;
				orderToStop <= '1';
			else
				s_nextState <= FINISH;
			end if;
		end case;
	end process;
end Behavioral;
