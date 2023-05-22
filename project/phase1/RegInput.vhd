library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RegInput is
	port(clk			: in std_logic;
		 reset			: in std_logic;
		 startStop		: in std_logic;
		 time_adjust	: in std_logic_vector(7 downto 0); --extra time to end program
		 program		: in std_logic;
		 leaven_Time	: out std_logic_vector(2 downto 0);
		 crumple_Time	: out std_logic_vector(2 downto 0);
		 cook_Time		: out std_logic_vector(2 downto 0);
		 time_toAdjust	: out std_logic_vector(7 downto 0);
		 fsmEnable		: out std_logic
		 );
end RegInput;

architecture Behavioral of RegInput is

	signal startStop_state	: std_logic := '0';
	signal sTime_adjust		: std_logic_vector(7 downto 0);
	
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				sTime_adjust <= (others => '0');
			else 
				if (program = '0') then
					crumple_Time <= "001";
					leaven_Time  <= "010";
					cook_Time	 <= "001";
				else
					crumple_Time <= "011";
					leaven_Time  <= "100";
					cook_Time 	 <= "001";
				end if;
			end if;
			if (startStop = '1') then
				if	(startStop_state = '0') then
					startStop_state <= '1';
				else
					startStop_state <= '0';
				end if;
			end if;
		end if;
		fsmEnable <= startStop_state;
		time_toAdjust <= sTime_adjust;
	end process;
end Behavioral;
	
					
					
					
		 
