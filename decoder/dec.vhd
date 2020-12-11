----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:43:17 10/31/2019 
-- Design Name: 
-- Module Name:    dec - Behavioral 
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
ENTITY dec IS
  port (a: in std_logic_vector(2 downto 0);
        e: in std_logic ;
        y:out std_logic_vector(7 downto 0));
END ENTITY dec;


ARCHITECTURE RTL OF dec IS
BEGIN
  process (e , a)
    begin
      if e = '1' then
         if a="000" then y<="00000001"
      elsif a="001" then y<="00000010"
      elsif a="010" then y<="00000100"
      elsif a="011" then y<="00001000"
      elsif a="100" then y<="00010000"
      elsif a="101" then y<="00100000"
      elsif a="110" then y<="01000000"
      elsif a="111" then y<="10000000"
      else y<="00000000";
      end if;
   end process  
END ARCHITECTURE RTL;

