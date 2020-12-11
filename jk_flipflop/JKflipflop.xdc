## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock signal
#Bank = 34, Pin name = ,					Sch name = CLK100MHZ
#		set_property PACKAGE_PIN W5 [get_ports CLK]
#		set_property IOSTANDARD LVCMOS33 [get_ports CLK]
#		create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports CLK]

# Switches
set_property PACKAGE_PIN R2 [get_ports R0]
set_property IOSTANDARD LVCMOS33 [get_ports R0]

set_property PACKAGE_PIN T1 [get_ports DE0 1]
set_property IOSTANDARD LVCMOS33 [get_ports DE0 1]

set_property PACKAGE_PIN U1 [get_ports DE0 0]
set_property IOSTANDARD LVCMOS33 [get_ports DE0 0]

set_property PACKAGE_PIN W2 [get_ports DIN0]
set_property IOSTANDARD LVCMOS33 [get_ports DIN0]

set_property PACKAGE_PIN T2 [get_ports R1]
set_property IOSTANDARD LVCMOS33 [get_ports R1]

set_property PACKAGE_PIN T3 [get_ports DE1 1]
set_property IOSTANDARD LVCMOS33 [get_ports DE1 1]

set_property PACKAGE_PIN V2 [get_ports DE1 0]
set_property IOSTANDARD LVCMOS33 [get_ports DE1 0]

set_property PACKAGE_PIN W13 [get_ports DIN1]
set_property IOSTANDARD LVCMOS33 [get_ports DIN1]

set_property PACKAGE_PIN V15 [get_ports R2]
set_property IOSTANDARD LVCMOS33 [get_ports R2]

set_property PACKAGE_PIN W15 [get_ports DE2 1]
set_property IOSTANDARD LVCMOS33 [get_ports DE2 1]

set_property PACKAGE_PIN W17 [get_ports DE2 0]
set_property IOSTANDARD LVCMOS33 [get_ports DE2 0]

set_property PACKAGE_PIN W16 [get_ports DIN 2]
set_property IOSTANDARD LVCMOS33 [get_ports DIN 2]

# LEDs
set_property PACKAGE_PIN P1 [get_ports A0]
set_property IOSTANDARD LVCMOS33 [get_ports A0]

set_property PACKAGE_PIN N3 [get_ports DOUT0]
set_property IOSTANDARD LVCMOS33 [get_ports DOUT0]

set_property PACKAGE_PIN V3 [get_ports A1]
set_property IOSTANDARD LVCMOS33 [get_ports A1]

set_property PACKAGE_PIN V13 [get_ports DOUT1]
set_property IOSTANDARD LVCMOS33 [get_ports DOUT1]

set_property PACKAGE_PIN W18 [get_ports A2]
set_property IOSTANDARD LVCMOS33 [get_ports A2]

set_property PACKAGE_PIN V19 [get_ports DOUT2]
set_property IOSTANDARD LVCMOS33 [get_ports DOUT2]

set_property PACKAGE_PIN E19 [get_ports S1]
set_property IOSTANDARD LVCMOS33 [get_ports S1]

set_property PACKAGE_PIN U16 [get_ports S0]
set_property IOSTANDARD LVCMOS33 [get_ports S0]

# Others (BITSTREAM, CONFIG)
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]


