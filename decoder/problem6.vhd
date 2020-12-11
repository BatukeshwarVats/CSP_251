library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


ENTITY Reg8 IS 
PORT( 
 clk:IN STD_LOGIC;
 A : IN STD_LOGIC_vector (7 downto 0);
 Mode: IN STD_LOGIC_VECTOR (1 downto 0);
 Q : OUT STD_LOGIC_VECTOR (7 downto 0) );
 --Q : OUT STD_LOGIC_VECTOR (7 downto 0) );
 END Reg8; 
ARCHITECTURE beh OF Reg8 IS 
 signal t :STD_LOGIC_VECTOR  (7 DOWNTO 0):="00000000";
 BEGIN 
 PROCESS (clk) 
 BEGIN 
 IF (clk='1' and clk'EVENT) THEN 
 CASE Mode IS
 WHEN "00" => t<= t; 
 WHEN "01" => t<= A;
 WHEN "10" => t <= '0'& t(7 DOWNTO 1);
 WHEN "11" => t <=t(6 DOWNTO 0)&'0';
 WHEN others => NULL;
 END CASE;
 END IF;
 END PROCESS ;
 Q <= t;
 END beh ;