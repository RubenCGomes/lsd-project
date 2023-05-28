library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerToDisplay is
	port(reset		: in  std_logic;
		  clk		: in  std_logic;
		  clk_enable: in  std_logic;
		  timeEnable: in  std_logic;
		  timeVal	: in  std_logic_vector(7 downto 0);
		  timeExp	: out std_logic;
		  timeToDisplay	: out std_logic_vector(7 downto 0));
end TimerToDisplay;

architecture Behavioral of TimerToDisplay is

	signal s_counter : unsigned(7 downto 0) := unsigned(timeVal);
	signal s_cntZero : std_logic := '0';

begin
	process(clk)
	begin
		if (rising_edge(clk) and clk_enable = '1') then
			if (reset = '1') then
				s_counter <= unsigned(timeVal);
				s_cntZero <= '0';
			elsif (timeEnable = '0') then
				s_cntZero <= '0';
			else
				s_counter <= s_counter  - 1;
			end if;
		end if;
	end process;
	
	timeToDisplay <= std_logic_vector(s_counter);
	timeExp <= s_cntZero;
end Behavioral;
