
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity prbs is
port(
		clk: in std_logic;
		a: out std_logic_vector(3 downto 0));
end prbs;

architecture Behavioral of prbs is
		signal s: std_logic_vector(3 downto 0):= "0100" ;
		
begin
	process(clk)
begin

		if(clk'event and clk='1') then
		s<=(s(1) xor s(0)) & s(3 downto 1);
end if;


end process;
a(3)<=s(3);
a(2)<=s(2);
a(1)<=s(1);
a(0)<=s(0);
end Behavioral;
