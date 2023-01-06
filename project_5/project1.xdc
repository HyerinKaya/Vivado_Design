# mclk is from the 100 MHz oscillator on Boolean board
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports Clk]

# On-board Slide Switches
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {DATA_INPUT[0]}]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {DATA_INPUT[1]}]
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports {DATA_INPUT[2]}]

# On-board LEDs
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {DATA_OUTPUT}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {NOT_DATA_OUTPUT}]





