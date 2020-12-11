
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity t_flip_flop is
Port(
t: in std_logic;
clk:in std_logic;
q: out std_logic
);

end t_flip_flop;

architecture Behavioral of t_flip_flop is
signal s :std_logic:='0';

begin
process(clk)

begin
if(clk'event and clk='0') then
s<=not t;
end if;

end process;

q<=s;
end Behavioral;

