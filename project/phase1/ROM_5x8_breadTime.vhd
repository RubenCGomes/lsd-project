library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM_5x8_breadTime is
	port(clk     	: in std_logic;
		 address 	: in std_logic_vector(2 downto 0);
		 dataOut 	: out std_logic_vector(7 downto 0));
end ROM_5x8_breadTime;

architecture Behavioral of ROM_5x8_breadTime is
	
	subtype Tdata is std_logic_vector(7 downto 0);
	type Tmemory is array (0 to 4) of Tdata;
	constant memory: Tmemory := ("00000000", 
								"00001010", -- 10s HOMEMADE_CRUMPLE,COOK RUSTIC_COOK
								"00000100", -- 4s HOMEMADE_LEAVEN
								"00001111", -- 15s RUSTIC_CRUMPLE 
								"00001000"); --8s RUSTIC_LEAVEN
	
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			dataOut <= memory(to_integer(unsigned(address)));
		end if;
	end process;
end Behavioral;

	