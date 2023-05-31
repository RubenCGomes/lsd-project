library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

-- Entidade sem portos 
entity FSM_Tb is 
end FSM_Tb; 

architecture Stimulus of FSM_Tb is 
	-- Sinais para ligar às entradas da UUT 
	signal s_clk				: std_logic;
	signal s_clk_enable			: std_logic;
	signal s_reset				: std_logic;
	signal s_status				: std_logic;
	signal s_time_crumple		: std_logic_vector(7 downto 0) := "00001010";
	signal s_time_leaven		: std_logic_vector(7 downto 0) := "00000100";
	signal s_time_cook			: std_logic_vector(7 downto 0) := "00001010";
	signal s_time_extra			: std_logic_vector(7 downto 0);
	signal s_time_delay			: std_logic_vector(7 downto 0);
	signal s_delayExp			: std_logic;
	signal s_time_exp			: std_logic;
	signal s_current_time		: std_logic_vector(7 downto 0);
 
	-- Sinal para ligar às saídas da UUT 
	signal s_time_value			: std_logic_vector(7 downto 0);
	signal s_timerEnable		: std_logic;
	signal s_delay_enable		: std_logic;
	signal s_new_time			: std_logic;
	signal s_orderToStop		: std_logic;
	signal s_led				: std_logic;
	signal s_ledg				: std_logic_vector(2 downto 0);
	signal s_delayNewTime		: std_logic;

begin 
	-- Instanciação da Unit Under Test (UUT) 
	uut: entity work.ControlUnit(Behavioral) 
	port map(clk 			=> s_clk,
			 clk_enable		=> s_clk_enable,
			 reset			=> s_reset,
			 status			=> s_status,
			 time_crumple	=> s_time_crumple,
			 time_leaven	=> s_time_leaven,
			 time_cook		=> s_time_cook,
			 time_extra		=> s_time_extra,
			 time_delay		=> s_time_delay,
			 delayExp		=> s_delayExp,
			 time_exp		=> s_time_exp,
			 current_time	=> s_current_time,
			 time_value		=> s_time_value,
			 timerEnable	=> s_timerEnable,
			 delay_enable	=> s_delay_enable,
			 new_time		=> s_new_time,
			 orderToStop	=> s_orderToStop,
			 led			=> s_led,
			 ledg			=> s_ledg,
			 delayNewTime	=> s_delayNewTime 
		); 
		
	timer: entity work.TimerAuxFSM(Behavioral)
		port map(clk		=> s_clk,
				 clk_enable => s_clk_enable,
				 reset		=> s_reset,
				 timeEN		=> s_timerEnable,
				 new_time	=> s_new_time,
				 timeVal 	=> s_time_value,
				 timeExp	=> s_time_exp,
				 timeCounter	=> s_current_time
				 );
 
	--Clock 50MHz process
	clock_proc : process
	begin
		s_clk <= '1';
		wait for 20 ns;
		s_clk <= '0';
		wait for 20 ns;
	end process;
	
	--Clock 1Hz process
	clock1Hz_proc : process
	begin
		s_clk_enable <= '0';
		wait for 100000 ms;
		s_clk_enable <= '1';
		wait for 100000 ms;
	end process;
	
	--Process stim 
	stim_proc : process 
	begin 
		s_reset <= '0';
		wait for 100 ns; 
		s_status <= '1';
		wait for 5000 ms;
		s_status <= '0';
		wait for 2000 ms;
		s_reset <= '1';	 
	end process; 
end Stimulus;