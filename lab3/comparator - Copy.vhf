--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : comparator.vhf
-- /___/   /\     Timestamp : 09/05/2019 16:28:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl D:/digital lab/comparator/comparator.vhf -w D:/CSL215/comparator/comparator.sch
--Design Name: comparator
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL NOR6_HXILINX_comparator -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOR6_HXILINX_comparator is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end NOR6_HXILINX_comparator;

architecture NOR6_HXILINX_comparator_V of NOR6_HXILINX_comparator is
begin
  O <= not (I0 or I1 or I2 or I3 or I4 or I5);
end NOR6_HXILINX_comparator_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity comparator is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          A3 : in    std_logic; 
          B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          B3 : in    std_logic; 
          E  : out   std_logic; 
          G  : out   std_logic; 
          L  : out   std_logic);
end comparator;

architecture BEHAVIORAL of comparator is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal AEB      : std_logic;
   signal AGB      : std_logic;
   signal BGA      : std_logic;
   signal XLXN_18  : std_logic;
   signal XLXN_19  : std_logic;
   signal XLXN_20  : std_logic;
   signal XLXN_21  : std_logic;
   signal XLXN_22  : std_logic;
   signal XLXN_23  : std_logic;
   signal XLXN_34  : std_logic;
   signal XLXN_38  : std_logic;
   signal XLXN_39  : std_logic;
   signal XLXN_41  : std_logic;
   signal XLXN_43  : std_logic;
   signal XLXN_45  : std_logic;
   signal XLXN_46  : std_logic;
   signal XLXN_47  : std_logic;
   signal XLXN_48  : std_logic;
   signal XLXN_51  : std_logic;
   signal XLXN_54  : std_logic;
   signal XLXN_55  : std_logic;
   signal XLXN_60  : std_logic;
   signal XLXN_65  : std_logic;
   signal XLXN_86  : std_logic;
   signal XLXN_95  : std_logic;
   signal XLXN_97  : std_logic;
   signal XLXN_98  : std_logic;
   signal XLXN_104 : std_logic;
   signal XLXN_105 : std_logic;
   signal XLXN_107 : std_logic;
   signal XLXN_108 : std_logic;
   signal XLXN_109 : std_logic;
   signal XLXN_119 : std_logic;
   signal XLXN_143 : std_logic;
   signal XLXN_152 : std_logic;
   signal XLXN_154 : std_logic;
   signal XLXN_155 : std_logic;
   signal XLXN_156 : std_logic;
   signal XLXN_157 : std_logic;
   signal E_DUMMY  : std_logic;
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
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component NOR6_HXILINX_comparator
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_68 : label is "XLXI_68_0";
begin
   E <= E_DUMMY;
   XLXI_8 : AND2
      port map (I0=>A2,
                I1=>XLXN_18,
                O=>XLXN_41);
   
   XLXI_9 : AND2
      port map (I0=>XLXN_19,
                I1=>B2,
                O=>XLXN_43);
   
   XLXI_10 : AND2
      port map (I0=>A1,
                I1=>XLXN_20,
                O=>XLXN_51);
   
   XLXI_11 : AND2
      port map (I0=>XLXN_21,
                I1=>B1,
                O=>XLXN_54);
   
   XLXI_12 : AND2
      port map (I0=>A0,
                I1=>XLXN_22,
                O=>XLXN_55);
   
   XLXI_13 : AND2
      port map (I0=>XLXN_23,
                I1=>B0,
                O=>XLXN_60);
   
   XLXI_19 : AND2
      port map (I0=>XLXN_34,
                I1=>XLXN_51,
                O=>XLXN_45);
   
   XLXI_20 : AND2
      port map (I0=>XLXN_54,
                I1=>XLXN_34,
                O=>XLXN_47);
   
   XLXI_24 : AND3
      port map (I0=>XLXN_39,
                I1=>XLXN_38,
                I2=>XLXN_34,
                O=>AEB);
   
   XLXI_25 : OR3
      port map (I0=>XLXN_46,
                I1=>XLXN_45,
                I2=>XLXN_41,
                O=>AGB);
   
   XLXI_26 : OR3
      port map (I0=>XLXN_48,
                I1=>XLXN_47,
                I2=>XLXN_43,
                O=>BGA);
   
   XLXI_27 : AND3
      port map (I0=>XLXN_38,
                I1=>XLXN_34,
                I2=>XLXN_55,
                O=>XLXN_46);
   
   XLXI_29 : AND3
      port map (I0=>XLXN_60,
                I1=>XLXN_38,
                I2=>XLXN_34,
                O=>XLXN_48);
   
   XLXI_31 : NOR2
      port map (I0=>XLXN_43,
                I1=>XLXN_41,
                O=>XLXN_34);
   
   XLXI_32 : NOR2
      port map (I0=>XLXN_54,
                I1=>XLXN_51,
                O=>XLXN_38);
   
   XLXI_33 : NOR2
      port map (I0=>XLXN_60,
                I1=>XLXN_55,
                O=>XLXN_39);
   
   XLXI_34 : XNOR2
      port map (I0=>B3,
                I1=>A3,
                O=>XLXN_65);
   
   XLXI_37 : AND2
      port map (I0=>XLXN_65,
                I1=>AEB,
                O=>XLXN_119);
   
   XLXI_40 : OR2
      port map (I0=>B3,
                I1=>AGB,
                O=>XLXN_86);
   
   XLXI_41 : AND2
      port map (I0=>XLXN_107,
                I1=>XLXN_86,
                O=>XLXN_97);
   
   XLXI_42 : AND3
      port map (I0=>A3,
                I1=>B3,
                I2=>XLXN_95,
                O=>XLXN_98);
   
   XLXI_43 : INV
      port map (I=>B2,
                O=>XLXN_18);
   
   XLXI_44 : INV
      port map (I=>A2,
                O=>XLXN_19);
   
   XLXI_45 : INV
      port map (I=>B1,
                O=>XLXN_20);
   
   XLXI_49 : INV
      port map (I=>A1,
                O=>XLXN_21);
   
   XLXI_50 : INV
      port map (I=>B0,
                O=>XLXN_22);
   
   XLXI_51 : INV
      port map (I=>A0,
                O=>XLXN_23);
   
   XLXI_52 : INV
      port map (I=>AGB,
                O=>XLXN_95);
   
   XLXI_54 : INV
      port map (I=>A3,
                O=>XLXN_107);
   
   XLXI_55 : OR2
      port map (I0=>XLXN_98,
                I1=>XLXN_97,
                O=>XLXN_152);
   
   XLXI_56 : OR2
      port map (I0=>XLXN_108,
                I1=>XLXN_157,
                O=>XLXN_104);
   
   XLXI_57 : INV
      port map (I=>BGA,
                O=>XLXN_157);
   
   XLXI_58 : INV
      port map (I=>B3,
                O=>XLXN_108);
   
   XLXI_59 : AND3
      port map (I0=>BGA,
                I1=>XLXN_108,
                I2=>XLXN_107,
                O=>XLXN_109);
   
   XLXI_60 : AND2
      port map (I0=>A3,
                I1=>XLXN_104,
                O=>XLXN_105);
   
   XLXI_61 : OR2
      port map (I0=>XLXN_109,
                I1=>XLXN_105,
                O=>XLXN_156);
   
   XLXI_62 : OR2
      port map (I0=>XLXN_143,
                I1=>XLXN_119,
                O=>E_DUMMY);
   
   XLXI_68 : NOR6_HXILINX_comparator
      port map (I0=>A2,
                I1=>A1,
                I2=>A0,
                I3=>B0,
                I4=>B1,
                I5=>B2,
                O=>XLXN_143);
   
   XLXI_69 : INV
      port map (I=>XLXN_143,
                O=>XLXN_155);
   
   XLXI_73 : AND3
      port map (I0=>XLXN_155,
                I1=>XLXN_152,
                I2=>XLXN_154,
                O=>G);
   
   XLXI_76 : AND3
      port map (I0=>XLXN_156,
                I1=>XLXN_155,
                I2=>XLXN_154,
                O=>L);
   
   XLXI_78 : INV
      port map (I=>E_DUMMY,
                O=>XLXN_154);
   
end BEHAVIORAL;


