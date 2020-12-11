
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity prbs is

port(

clk: in std_logic;
b: out std_logic_vector(3 downto 0));
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




b(3)<=s(3);
b(2)<=s(2);
b(1)<=s(1);
b(0)<=s(0);



end Behavioral;
