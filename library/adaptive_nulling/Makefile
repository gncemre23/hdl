####################################################################################
## GNSS Anti-Jamming IP
####################################################################################

LIBRARY_NAME := adaptive_nulling


GENERIC_DEPS += ../../../fpga/design/adaptive_nulling.v
GENERIC_DEPS += ../../../fpga/design/adaptive_nulling_top.v
GENERIC_DEPS += ../../../fpga/design/covariance.v
GENERIC_DEPS += ../../../fpga/design/asyncFIFO.v
GENERIC_DEPS += ../../../fpga/design/fixedpoint.v
GENERIC_DEPS += ../../../fpga/design/matrix_inverse_2x2.v
GENERIC_DEPS += ../../../fpga/design/mult_pipe_split3.v
GENERIC_DEPS += ../../../fpga/design/mult_pipe_split4.v

XILINX_DEPS += adaptive_nulling_ip.tcl

include ../scripts/library.mk