library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerAuxFSM is
	port(reset		: in  std_logic;
		  clk		: in  std_logic;
		  clk_enable: in  std_logic;
		  timeEn	: in  std_logic;
		  new_time	: in  std_logic;
		  timeVal	: in  std_logic_vector(7 downto 0);
		  timeExp	: out std_logic;
		  timeCounter: out std_logic_vector(7 downto 0));
end TimerAuxFSM;

architecture Behavioral of TimerAuxFSM is

	signal s_counter : unsigned(7 downto 0);
	signal s_cntZero : std_logic := '0';

begin	
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_counter <= (unsigned(timeVal));
				s_cntZero <= '0';
			elsif(new_time = '1') then 
				s_counter <= unsigned(timeVal);
			else 
				if (clk_enable = '1') then
					if (s_counter = "00000000") then
						s_cntZero <= '1';
					elsif (timeEn = '1') then
						s_counter <= s_counter - 1;
						s_cntZero <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;
	
	timeCounter <= std_logic_vector(s_counter);
	timeExp <= s_cntZero;
end Behavioral;
