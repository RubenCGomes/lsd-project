library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ToggleSwitch is
	port(clk		 : in  std_logic;
		 toggle      : in  std_logic;
		 orderToStop : in  std_logic;
		 reset		 : in  std_logic;
		 startStop   : out std_logic
	);
end ToggleSwitch;

architecture Behavioral of ToggleSwitch is
	signal current_state : std_logic;
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if (reset = '1' or orderToStop = '1') then
				current_state <= '0';
			elsif (toggle = '1') then
				current_state <= not current_state;
			end if;
		end if;
	end process;
	startStop <= current_state;
end Behavioral;