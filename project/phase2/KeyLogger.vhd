library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity KeyLogger is
	generic(limiter	 : positive := 5);
	port(press		 : in  std_logic;
		 clk 		 : in  std_logic;
		 press_count : out std_logic_vector(7 downto 0)
		);
end KeyLogger;

architecture Behavioral of KeyLogger is
	signal s_count : unsigned(7 downto 0);
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if (press = '0') then
				s_count <= s_count + 1;
			end if;
			if (to_integer(s_count) = limiter + 1) then
				s_count <= (others => '0');
			end if;
		end if;
	end process;
	press_count <= std_logic_vector(s_count);
	
end Behavioral;
	