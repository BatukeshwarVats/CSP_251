library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
entity dec4to16 is 
Port ( X_in : in STD_LOGIC_VECTOR (3 downto 0); 
Y : out STD_LOGIC_VECTOR (15 downto 0);
 EN : in STD_LOGIC); 
 end dec4to16;
 
 ARCHITECTURE Behavioral OF dec4to16 IS
 COMPONENT decoder3x8 IS
 Port ( EN : in STD_LOGIC;
 A_in : in STD_LOGIC_VECTOR(2 downto 0);
 --CTOR (2 downto 0); 
 B_out : out STD_LOGIC_VECTOR(7 downto 0));
 end component;
 
 signal m0: STD_LOGIC; 
 signal m1:STD_LOGIC; 
begin 
 m0 <= NOT X_in(3) AND EN;
 m1 <= X_in(3) AND EN;
 U1: decoder3x8 Port map(m0,X_in(2 downto 0),Y(7 downto 0));
 U2: decoder3x8 Port map(m1,X_in(2 downto 0),Y(15 downto 8));
 END Behavioral;