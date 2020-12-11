----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:13:15 09/24/2019 
-- Design Name: 
-- Module Name:    clock4 - Behavioral 
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

entity clock is
	port(clk : in std_logic;
		  anode : out bit_vector(3 downto 0) );
end clock;

architecture behavourial of clock is

signal count : bit_vector (1 downto 0);
signal final : bit_vector (1 downto 0);

begin
	
	process(clk,count) begin
		if(clk='1' and clk'event) then
			case count is
				when "00" => count <= "01";
				when "01" => count <= "10";
				when "10" => count <= "11";
				when "11" => count <= "00";
			end case;
		end if;
	end process;
	final <= count;
	
	process (final) begin
		case final is
			when "00" => anode <= "0111";
			when "01" => anode <= "1011";
			when "10" => anode <= "1101";
			when "11" => anode <= "1110";
		end case;
	end process;
	
end Behavourial;


