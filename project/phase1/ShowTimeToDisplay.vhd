library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShowTimeToDisplay is
	port(input	: in  std_logic_vector(7 downto 0);
		 output : out std_logic_vector(7 downto 0)
		 );
end ShowTimeToDisplay;

architecture Behavioral of ShowTimeToDisplay is

	signal s_int : integer := to_integer(unsigned(input));
	signal s_out : std_logic_vector(7 downto 0);
	signal s_dec : integer;

begin
	process(input)
	begin
		s_dec <= s_int / 10;
		s_out(7 downto 4) <= std_logic_vector(to_unsigned(s_dec, 4));
		s_out(3 downto 0) <= std_logic_vector(to_unsigned(s_int - s_dec * 10, 4));
	end process;
	
	output <= s_out;
end Behavioral;
