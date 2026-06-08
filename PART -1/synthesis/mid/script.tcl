set_attr lib_search_path {/home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/lib}
set_attr hdl_search_path {/home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid}
set_attr library {/home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/lib/slow.lib}

# Read and elaborate design

read_hdl /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/HA.v
elaborate

# Apply constraints

read_sdc /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/mid.sdc

# Run synthesis

synthesize -to_mapped -effort medium


# Create report/output directory

file mkdir /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/syn_report_mid


# Set current design

current_design HA


# Write out SDF (Standard Delay Format)
# NOTE: Use '>' redirection instead of filename argument

write_sdf -design code \
    -timescale ns \
    -nonegchecks \
    -recrem split \
    -edges check_edge \
    > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/syn_report_mid/delays.sdf


# Export synthesized netlist and constraint files

# Write out timing and netlist files


# SDF 
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge \
    > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/syn_report_mid/delays.sdf

# Netlist 
write_hdl HA \
    > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/syn_report_mid/synthesized_netlist.v

# SDC 
write_sdc HA \
    > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/syn_report_mid/dc_file_for_physical_design.sdc

# Script
write_script HA \
    > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/syn_report_mid/synthesis_script_sdc.g


# Generate synthesis reports

report_timing > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/syn_report_mid/synthesis_timing_report.rep

report_power > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/syn_report_mid/synthesis_power_report.rep

report_gates > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/syn_report_mid/synthesis_cell_report.rep

report_area > /home/drashi25114/Desktop/cmos65/90nm/verilog/synthesis/mid/syn_report_mid/synthesis_area_report.rep


# Final design check

check_design
