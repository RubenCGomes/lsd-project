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
		 time_value		: out std_logic_vector(7 downto 0);
		 new_time		: out std_logic;
		 time_display	: out std_logic_vector(7 downto 0)
		 );
end ControlUnit;

architecture Behavioral of ControlUnit is

	type BState is (DEFAULT, CRUMPLE, LEAVEN, COOK, FINISH); -- define states, add more if necessary
	signal s_currentState, s_nextState : BState := DEFAULT;
	
	signal s_stateChange	: std_logic := '1';
	signal s_time_display	: std_logic_vector(7 downto 0);
	
begin
	clk_call : process(clk) -- update when clock is active
	begin
		if (rising_edge(clk) and clk_enable = '1') then
			if (reset = '1') then
				s_currentState <= DEFAULT;
			elsif (status = '1') then
				if (s_currentState /= s_nextState) then
					s_stateChange <= '1';
				else
					s_stateChange <= '0';
				end if;
				s_currentState <= s_nextState;
			elsif (status = '0' and s_currentState /= DEFAULT) then
				time_display <= (others => '-');
			end if;
		end if;
	end process;
	
	new_time <= s_stateChange;
	time_display <= s_time_display;
	

	fsm_states : process(s_currentState, time_exp) -- TODO: add ports to check!!!
	begin
		case(s_currentState)is
		when DEFAULT =>
			if (status = '1') then
				time_value <= time_delay;
				if(time_exp = '1') then
					s_nextState <= CRUMPLE;
				end if;
			else
				s_nextState <= DEFAULT;
			s_time_display <= std_logic_vector(unsigned(time_crumple) + unsigned(time_leaven) + 
								unsigned(time_cook) + unsigned(time_extra));	
			end if;
		
		when CRUMPLE =>
			led <= '1';
			time_value <= time_crumple;
			
			if (time_exp = '1') then
				s_nextState <= LEAVEN;
				s_time_display <= std_logic_vector(unsigned(s_time_display) - unsigned(time_crumple));
			else
				s_nextState <= CRUMPLE;
			end if;
			
		when LEAVEN =>
			time_value <= time_leaven;
			
			if (time_exp = '1') then
				s_time_display <= std_logic_vector(unsigned(s_time_display) - unsigned(time_leaven));
				s_nextState <= COOK;
			else
				s_nextState <= LEAVEN;
			end if;	
			
		when COOK =>
			time_value <= std_logic_vector(unsigned(time_cook) + unsigned(time_extra));
			
			if (time_exp = '1') then
				s_time_display <= std_logic_vector(unsigned(s_time_display) - unsigned(time_cook) - 
								unsigned(time_extra));
				s_nextState <= FINISH;
			else
				s_nextState <= COOK;
			end if;
		
		when FINISH =>
			time_value <= "00000010";
			
			if (time_exp = '1') then
				led <= '0';
				s_nextState <= DEFAULT;
			else
				s_nextState <= FINISH;
			end if;
		end case;
	end process;
end Behavioral;
