set_property PACKAGE_PIN AL29 [get_ports cnt]
set_property PACKAGE_PIN AK34 [get_ports rst]
set_property PACKAGE_PIN AL31 [get_ports clk]
set_property PACKAGE_PIN AN27 [get_ports {light[2]}]
set_property PACKAGE_PIN AP27 [get_ports {light[1]}]
set_property PACKAGE_PIN AF24 [get_ports {light[0]}]

create_clock -name CLK -period 2 [get_ports {clk}]

set_property IOSTANDARD LVCMOS18 [all_inputs]
set_property IOSTANDARD LVCMOS18 [all_outputs]