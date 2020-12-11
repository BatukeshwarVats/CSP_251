----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:55:05 09/21/2019 
-- Design Name: 
-- Module Name:    lab4_seven_segment_display - Behavioral 
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

entity lab4_seven_segment_display is
	 port( clk,pushbutton : in std_logic;
			 b : in bit_vector (15 downto 0);
			 anode : inout bit_vector (3 downto 0);
			 cathode : out bit_vector (6 downto 0) );
end lab4_seven_segment_display;

architecture Behavioral of lab4_seven_segment_display is

	component clockdivider is
		port ( clk,reset : in std_logic;
			 clock_out : out std_logic );
	end component;
	
	component clocking is 
		port(clk : in std_logic;
		  anode : out bit_vector(3 downto 0) );
	end component;
	
	component demux is
			port( anode : in bit_vector(3 downto 0);
			b : in bit_vector (15 downto 0);
			h : out bit_vector (3 downto 0) );
	end component;
	
	component led7 is
		Port ( b : in bit_vector(3 downto 0);
           A : out bit_vector(6 downto 0) );
	end component;

	signal clock_out: std_logic;
	signal fourbit: bit_vector(3 downto 0);
	signal anode_buffer: bit_vector(3 downto 0);

begin
	u1: clockdivider port map (clk => clk, reset => pushbutton, clock_out => clock_out) ;
	u2: clocking port map (clk => clock_out, anode => anode) ;
	u3: demux port map (anode => anode, b => b, h=> fourbit);
	u4: led7 port map (b=> fourbit, A=>cathode);


end Behavioral;

