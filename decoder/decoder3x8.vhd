library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
ENTITY decoder3x8 IS 
Port ( EN : in STD_LOGIC;
 A_in : in STD_LOGIC_VECTOR (2 downto 0); 
 B_out : out STD_LOGIC_VECTOR (7 downto 0));
 end decoder3x8; 
 ARCHITECTURE Behavioral OF decoder3x8 IS
 BEGIN
 B_out <= "00000000" when EN='0' else 
 "00000001" when A_in="000" else
 "00000010" when A_in="001" else
 "00000100" when A_in="010" else
 "00001000" when A_in="011" else
 "00010000" when A_in="100" else 
 "00100000" when A_in="101" else
 "01000000" when A_in="110" else
 "10000000"; 
end Behavioral;