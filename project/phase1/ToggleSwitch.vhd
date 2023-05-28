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
	signal current_state : std_logic := '1';
	signal s_toggle		 : std_logic;
begin
	process(toggle, reset, orderToStop)
	begin
	s_toggle <= toggle;
		if (reset = '1' or orderToStop = '1') then
			s_toggle <= '1';
			current_state <= '1';
		end if;
		if (s_toggle = '1') then
			if (current_state = '1') then
				current_state <= '0';
			else
				current_state <= '1';
			end if;
		end if;
	end process;
	startStop <= current_state;
end Behavioral;