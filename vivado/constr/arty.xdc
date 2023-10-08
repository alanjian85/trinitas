set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports resetn]
set_property -dict {PACKAGE_PIN E15 IOSTANDARD LVCMOS33} [get_ports {vga_r[0]}]
set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33} [get_ports {vga_r[1]}]
set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports {vga_r[2]}]
set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33} [get_ports {vga_r[3]}]
set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports {vga_b[0]}]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports {vga_b[1]}]
set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS33} [get_ports {vga_b[2]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {vga_b[3]}]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {vga_g[0]}]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {vga_g[1]}]
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports {vga_g[2]}]
set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVCMOS33} [get_ports {vga_g[3]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports vga_hsync]
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports vga_vsync]

set_property ASYNC_REG true [get_cells trinity/fbSwapper_io_displayVsync_REG_reg]
set_property ASYNC_REG true [get_cells trinity/fbSwapper_io_displayVsync_REG_1_reg]
set_property ASYNC_REG true [get_cells trinity/fbSwapper_io_graphicsDone_REG_reg]
set_property ASYNC_REG true [get_cells trinity/fbSwapper_io_graphicsDone_REG_1_reg]
set_property ASYNC_REG true [get_cells trinity/display_io_fbId_REG_reg]
set_property ASYNC_REG true [get_cells trinity/display_io_fbId_REG_1_reg]
set_property ASYNC_REG true [get_cells trinity/graphics_io_fbId_REG_reg]
set_property ASYNC_REG true [get_cells trinity/graphics_io_fbId_REG_1_reg]

set_false_path -from [get_cells trinity/displayVsync_REG_reg] -to [get_cells trinity/fbSwapper_io_displayVsync_REG_reg]
set_false_path -from [get_cells trinity/graphicsDone_REG_reg] -to [get_cells trinity/fbSwapper_io_graphicsDone_REG_reg]
set_false_path -from [get_cells trinity/fbSwapper/displayFbId_reg] -to [get_cells trinity/display_io_fbId_REG_reg]
set_false_path -from [get_cells trinity/fbSwapper/graphicsFbId_reg] -to [get_cells trinity/graphics_io_fbId_REG_reg]