----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:45:13 09/12/2019 
-- Design Name: 
-- Module Name:    andgate - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity andgate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in STD_LOGIC;
			  S : out  STD_LOGIC;
			  CO : out  STD_LOGIC);
end andgate ;

architecture Behavioral of andgate  is

begin
	S <= (A XOR B) XOR C;
	CO <= (A XOR B) AND C;

end Behavioral;

