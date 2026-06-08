set_attr lib_search_path {/home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/lib}
set_attr hdl_search_path {/home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best}
set_attr library {/home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/lib/slow.lib}

# Read and elaborate design

read_hdl /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/HA.v
elaborate

# Apply constraints

read_sdc /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/best.sdc

# Run synthesis

synthesize -to_mapped -effort best


# Create report/output directory

file mkdir /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/syn_report_best


# Set current design

current_design HA


# Write out SDF (Standard Delay Format)
# NOTE: Use '>' redirection instead of filename argument

write_sdf -design code \
    -timescale ns \
    -nonegchecks \
    -recrem split \
    -edges check_edge \
    > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/syn_report_best/delays.sdf


# Export synthesized netlist and constraint files

# Write out timing and netlist files



write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge \
    > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/syn_report_best/best/delays.sdf

# export the synthesised gate level verilog netlist
write_hdl HA \
    > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/syn_report_best/synthesized_netlist.v

# export the cleaned up sdc constraints that will be used in place and route 
write_sdc HA \
    > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/syn_report_best/dc_file_for_physical_design.sdc

# Script(saves the synthesis commands useful for documentation)
write_script HA \
    > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/syn_report_best/synthesis_script_sdc.g


# Generate synthesis reports

report_timing > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/syn_report_best/synthesis_timing_report.rep

report_power > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/syn_report_best/synthesis_power_report.rep

report_gates > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/syn_report_best/synthesis_cell_report.rep

report_area > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/best/syn_report_best/synthesis_area_report.rep


# Final design check

check_design
