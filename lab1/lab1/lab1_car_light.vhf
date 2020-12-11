--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : lab1_car_light.vhf
-- /___/   /\     Timestamp : 08/23/2019 21:22:06
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl D:/CSL215/lab1_car_light/lab1_car_light.vhf -w D:/CSL215/lab1_car_light/lab1_car_light.sch
--Design Name: lab1_car_light
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lab1_car_light is
   port ( D1      : in    std_logic; 
          D2      : in    std_logic; 
          D3      : in    std_logic; 
          D4      : in    std_logic; 
          SW_DOOR : in    std_logic; 
          SW_OFF  : in    std_logic; 
          SW_ON   : in    std_logic; 
          INVALID : out   std_logic; 
          LIGHT   : out   std_logic);
end lab1_car_light;

architecture BEHAVIORAL of lab1_car_light is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_28 : std_logic;
   signal XLXN_30 : std_logic;
   signal XLXN_31 : std_logic;
   signal XLXN_32 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
begin
   XLXI_2 : AND2
      port map (I0=>SW_ON,
                I1=>XLXN_16,
                O=>XLXN_18);
   
   XLXI_3 : AND3
      port map (I0=>XLXN_14,
                I1=>SW_DOOR,
                I2=>XLXN_1,
                O=>XLXN_17);
   
   XLXI_5 : NAND2
      port map (I0=>SW_DOOR,
                I1=>SW_DOOR,
                O=>XLXN_16);
   
   XLXI_6 : NAND2
      port map (I0=>SW_ON,
                I1=>SW_ON,
                O=>XLXN_14);
   
   XLXI_7 : NAND2
      port map (I0=>SW_OFF,
                I1=>SW_OFF,
                O=>XLXN_20);
   
   XLXI_8 : OR2
      port map (I0=>XLXN_18,
                I1=>XLXN_17,
                O=>XLXN_19);
   
   XLXI_9 : AND2
      port map (I0=>XLXN_20,
                I1=>XLXN_19,
                O=>LIGHT);
   
   XLXI_10 : XNOR2
      port map (I0=>SW_ON,
                I1=>SW_OFF,
                O=>XLXN_28);
   
   XLXI_11 : OR2
      port map (I0=>SW_ON,
                I1=>SW_OFF,
                O=>XLXN_30);
   
   XLXI_12 : AND2
      port map (I0=>XLXN_16,
                I1=>XLXN_28,
                O=>XLXN_31);
   
   XLXI_13 : AND2
      port map (I0=>SW_DOOR,
                I1=>XLXN_30,
                O=>XLXN_32);
   
   XLXI_14 : OR2
      port map (I0=>XLXN_32,
                I1=>XLXN_31,
                O=>INVALID);
   
   XLXI_15 : OR4
      port map (I0=>D4,
                I1=>D3,
                I2=>D2,
                I3=>D1,
                O=>XLXN_1);
   
end BEHAVIORAL;


