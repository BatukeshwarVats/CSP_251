----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:32:17 09/19/2019 
-- Design Name: 
-- Module Name:    led7 - Behavioral 
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

entity led7 is
	Port ( b : in bit_vector(3 downto 0);
           A : out bit_vector(6 downto 0) 
			 );
end led7;

architecture casestmt of led7 is

begin
process(b)
		begin
			case b is
				when "0000" => A <="0000001";
				when "0001" => A <="1001111";
				when "0010" => A <="0010010";
				when "0011" => A <="0000110";
				when "0100" => A <="1001100";
				when "0101" => A <="0100100";
				when "0110" => A <="0100000";
				when "0111" => A <="0001111";
				when "1000" => A <="0000000";
				when "1001" => A <="0000100";
				when "1010" => A <="0001000";
				when "1011" => A <="1100000";
				when "1100" => A <="0110001";
				when "1101" => A <="1000010";
				when "1110" => A <="0110000";
				when "1111" => A <="0111000";
			end case;
		end process;
end architecture casestmt ;

