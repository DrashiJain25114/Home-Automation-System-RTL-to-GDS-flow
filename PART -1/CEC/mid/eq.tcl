file mkdir /home/drashi25114/Desktop/cmos65/90nm/verilog/CEC/mid/logic_eq_check_mid
set_log_file logical_equivalence_checking.log -replace
read_library /home/drashi25114/Desktop/cmos65/90nm/verilog/CEC/mid/lib/slow.v -verilog -both

read_design /home/drashi25114/Desktop/cmos65/90nm/verilog/CEC/mid/HA.v -verilog -golden

read_design /home/drashi25114/Desktop/cmos65/90nm/verilog/CEC/mid/synthesized_netlist.v -verilog -revised

set_system_mode lec
add_compared_points -all
compare
report_messages -compare -verb
report_compare_data -noneq
report_verification

write_compared_points -replace /home/drashi25114/Desktop/cmos65/90nm/verilog/CEC/mid/lec_compared_points
write_mapped_points -replace /home/drashi25114/Desktop/cmos65/90nm/verilog/CEC/mid/lec_mapped_points
set_verification_information /home/drashi25114/Desktop/cmos65/90nm/verilog/CEC/mid
write_verification_information

