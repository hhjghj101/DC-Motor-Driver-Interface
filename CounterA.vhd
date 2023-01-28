library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity CounterA is
    Port ( Clock: in std_logic; 
           Reset: in std_logic; 
			  CE: in std_logic; 
           CoutA: out std_logic_vector(3 downto 0) 
     );
end CounterA;

architecture Behavioral of CounterA is
signal s_CountUp: std_logic_vector(3 downto 0);
begin
-- up counter
process(Clock, Reset) is
begin
	if (Reset = '1') then
		s_CountUp <= "0000";
	elsif(rising_edge(Clock)) then
			if(CE='1') then
					s_CountUp <= s_CountUp + "1";
			end if;
		end if;
end process;
CoutA <= s_CountUp;
end Behavioral;