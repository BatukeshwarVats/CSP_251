----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:18:24 09/24/2019 
-- Design Name: 
-- Module Name:    demux - Behavioral 
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

entity demux is
	port( anode : in bit_vector(3 downto 0);
			b : in bit_vector (15 downto 0);
			h : out bit_vector (3 downto 0)
			);
end demux;

architecture behavourial of demux is

begin
 
gen : for i in 0 to 3 generate
	h(i) <= ( (not anode(3) and b (12+i)) or (not anode(2) and b (8+i)) or (not anode(1) and b(4+i)) or (not anode(0) and b(i)) ) ;
end generate;

end behavourial;

