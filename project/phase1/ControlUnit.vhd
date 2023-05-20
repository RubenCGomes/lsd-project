library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ControlUnit is
	port(reset 	: in  std_logic;
		 clk	: in  std_logic;
		 status	: in  std_logic
	);
end ControlUnit;

architecture Behavioral of ControlUnit is

	-- times sets for each program
	constant HOMEMADE_CRUMPLE_TIME, HOMEMADE_COOK_TIME	: std_logic_vector(7 downto 0) := "00001010"; -- 10 s
	constant HOMEMADE_LEAVEN_TIME						: std_logic_vector(7 downto 0) := "00000100"; -- 4 s
	constant RUSTIC_CRUMPLE_TIME						: std_logic_vector(7 downto 0) := "00001111"; -- 15 s
	constant RUSTIC_LEAVEN_TIME							: std_logic_vector(7 downto 0) := "00001000"; -- 8 s
	constant RUSTIC_COOK_TIME							: std_logic_vector(7 downto 0) := "00001010"; -- 10 s

	type BState is (DEFAULT, CRUMPLE, LEAVEN, COOK); -- define states, add more if necessary
	signal s_currentState, s_nextState : BState;
	
begin
	clk_call : process(clk) -- update when clock is active
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= DEFAULT;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	fsm_states : (s_currentState, ) -- TODO: add ports to check!!!
	begin
		case(s_currentState)is
		when DEFAULT =>
			-- add code...
		
		when CRUMPLE =>
			-- add code...
			
		when LEAVEN =>
			-- add code...
			
		when COOK =>
			-- add code...
		end case;
	end process;
end Behavioral;
