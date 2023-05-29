library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ToggleSwitch is
	port(toggle      : in  std_logic;
		 orderToStop : in  std_logic;
		 reset		 : in  std_logic;
		 startStop   : out std_logic
	);
end ToggleSwitch;

architecture Behavioral of ToggleSwitch is
	signal current_state : std_logic;
begin
	process(toggle, reset, orderToStop)
	begin
		if (reset = '1' or orderToStop = '1') then
			current_state <= '0';
		elsif (toggle = '1') then
			current_state <= not current_state;
		end if;
	end process;
	startStop <= current_state;
end Behavioral;