####################################################################################
## GNSS Anti-Jamming IP
####################################################################################

LIBRARY_NAME := adaptive_nulling


GENERIC_DEPS += ../../../fpga/design/adaptive_nulling.v
GENERIC_DEPS += ../../../fpga/design/adaptive_nulling_top.sv
GENERIC_DEPS += ../../../fpga/design/covariance.sv
GENERIC_DEPS += ../../../fpga/design/asyncFIFO.v
GENERIC_DEPS += ../../../fpga/design/fixedpoint.v
GENERIC_DEPS += ../../../fpga/design/weight_calc.sv
GENERIC_DEPS += ../../../fpga/design/complex_mult.sv
GENERIC_DEPS += ../../../fpga/design/mult_pipe_split3.v

XILINX_DEPS += adaptive_nulling_ip.tcl

include ../scripts/library.mk