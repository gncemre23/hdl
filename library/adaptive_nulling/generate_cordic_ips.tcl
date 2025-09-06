# Generate CORDIC IP cores for ESPRIT DOA calculations
# This script creates device-specific CORDIC IPs for the current project

proc generate_cordic_atan_ip {} {
    # Create CORDIC Arc Tan IP for atan2 calculations
    create_ip -name cordic -vendor xilinx.com -library ip -version 6.0 -module_name cordic_atan
    
    set_property -dict [list \
        CONFIG.Functional_Selection {Arc_Tan} \
        CONFIG.Architectural_Configuration {Parallel} \
        CONFIG.Pipelining_Mode {Maximum} \
        CONFIG.Data_Format {SignedFraction} \
        CONFIG.Phase_Format {Scaled_Radians} \
        CONFIG.Input_Width {16} \
        CONFIG.Output_Width {16} \
        CONFIG.Round_Mode {Truncate} \
        CONFIG.Coarse_Rotation {true} \
        CONFIG.Compensation_Scaling {No_Scale_Compensation} \
        CONFIG.flow_control {NonBlocking} \
        CONFIG.optimize_goal {Performance} \
        CONFIG.out_tready {false} \
        CONFIG.ACLKEN {false} \
        CONFIG.ARESETN {false} \
    ] [get_ips cordic_atan]
    
    puts "INFO: Created cordic_atan IP for current project part"
}

proc generate_cordic_translate_ip {} {
    # Create CORDIC Translate IP for vectoring mode (magnitude + phase)
    create_ip -name cordic -vendor xilinx.com -library ip -version 6.0 -module_name cordic_translate
    
    set_property -dict [list \
        CONFIG.Functional_Selection {Translate} \
        CONFIG.Architectural_Configuration {Parallel} \
        CONFIG.Pipelining_Mode {Maximum} \
        CONFIG.Data_Format {SignedFraction} \
        CONFIG.Phase_Format {Scaled_Radians} \
        CONFIG.Input_Width {16} \
        CONFIG.Output_Width {16} \
        CONFIG.Round_Mode {Truncate} \
        CONFIG.Coarse_Rotation {true} \
        CONFIG.Compensation_Scaling {LUT_based} \
        CONFIG.flow_control {NonBlocking} \
        CONFIG.optimize_goal {Performance} \
        CONFIG.out_tready {false} \
        CONFIG.ACLKEN {false} \
        CONFIG.ARESETN {false} \
    ] [get_ips cordic_translate]
    
    puts "INFO: Created cordic_translate IP for current project part"
}

# Generate both CORDIC IPs
puts "INFO: Generating CORDIC IPs for ESPRIT DOA calculations..."
generate_cordic_atan_ip
generate_cordic_translate_ip

# Generate IP output products
generate_target all [get_ips cordic_atan]
generate_target all [get_ips cordic_translate]

puts "INFO: CORDIC IP generation completed successfully" 