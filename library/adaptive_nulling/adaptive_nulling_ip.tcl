# adaptive_nulling_ip.tcl
source ../../scripts/adi_env.tcl
source $ad_hdl_dir/library/scripts/adi_ip_xilinx.tcl

adi_ip_create adaptive_nulling
adi_ip_files adaptive_nulling [list \
  "../../../fpga/design/adaptive_nulling.v" \
  "../../../fpga/design/adaptive_nulling_top.sv" \
  "../../../fpga/design/asyncFIFO.v" \
  "../../../fpga/design/covariance.sv" \
  "../../../fpga/design/fixedpoint.v" \
  "../../../fpga/design/weight_calc.sv" \
  "../../../fpga/design/complex_mult.sv" \
  "../../../fpga/design/mult_pipe_split3.v"
]

adi_ip_properties_lite adaptive_nulling

# Define ports and interfaces
ipx::infer_bus_interface clk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface radio_rst xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface adaptive_nulling_clk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface adaptive_nulling_rst xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]


ipx::save_core [ipx::current_core]