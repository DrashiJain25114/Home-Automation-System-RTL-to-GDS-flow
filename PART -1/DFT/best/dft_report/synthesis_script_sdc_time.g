######################################################################

# Created by Genus(TM) Synthesis Solution 19.13-s073_1 on Wed Nov 05 12:08:07 IST 2025

# This file contains the RC script for /designs/HA

######################################################################

::legacy::set_attribute -quiet init_lib_search_path /home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/lib /
::legacy::set_attribute -quiet common_ui false /
::legacy::set_attribute -quiet design_mode_process no_value /
::legacy::set_attribute -quiet phys_assume_met_fill 0.0 /
::legacy::set_attribute -quiet map_placed_for_hum false /
::legacy::set_attribute -quiet phys_use_invs_extraction true /
::legacy::set_attribute -quiet phys_route_time_out 120.0 /
::legacy::set_attribute -quiet capacitance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet resistance_per_unit_length_mmmc {} /
::legacy::set_attribute -quiet runtime_by_stage { {to_generic 1 18 1 7}  {first_condense 1 20 2 10}  {reify 2 22 1 11}  {global_incr_map 1 23 0 12}  {incr_opt 1 24 0 13} } /
::legacy::set_attribute -quiet tinfo_tstamp_file .rs_drashi25114.tstamp /
::legacy::set_attribute -quiet phys_use_segment_parasitics true /
::legacy::set_attribute -quiet probabilistic_extraction true /
::legacy::set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
::legacy::set_attribute -quiet maximum_interval_of_vias inf /
::legacy::set_attribute -quiet layer_aware_buffer true /
::legacy::set_attribute -quiet interconnect_mode wireload /
::legacy::set_attribute -quiet wireload_mode enclosed /
::legacy::set_attribute -quiet wireload_selection none /
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/slow/operating_conditions/slow
::legacy::set_attribute -quiet tree_type balanced_tree /libraries/slow/operating_conditions/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name clk -domain domain_1 -period 1800.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design /designs/HA /designs/HA/ports_in/clk
::legacy::set_attribute -quiet clock_setup_uncertainty {150.0 150.0} /designs/HA/timing/clock_domains/domain_1/clk
::legacy::set_attribute -quiet clock_hold_uncertainty {150.0 150.0} /designs/HA/timing/clock_domains/domain_1/clk
::legacy::set_attribute -quiet slew {20.0 500.0 300.0 60.0} /designs/HA/timing/clock_domains/domain_1/clk
define_cost_group -design /designs/HA -name clk
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock /designs/HA/timing/clock_domains/domain_1/clk -name create_clock_delay_domain_1_clk_R_0 /designs/HA/ports_in/clk
::legacy::set_attribute -quiet clock_network_latency_included true /designs/HA/timing/external_delays/create_clock_delay_domain_1_clk_R_0
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -edge_fall -name create_clock_delay_domain_1_clk_F_0 /designs/HA/ports_in/clk
::legacy::set_attribute -quiet clock_network_latency_included true /designs/HA/timing/external_delays/create_clock_delay_domain_1_clk_F_0
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11 /designs/HA/ports_out/heater_on
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_1_1 /designs/HA/ports_out/cooler_on
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_2_1 /designs/HA/ports_out/water_pump_on
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_3_1 /designs/HA/ports_out/water_valve_close
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_4_1 {{/designs/HA/ports_out/led_brightness[7]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_5_1 {{/designs/HA/ports_out/led_brightness[6]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_6_1 {{/designs/HA/ports_out/led_brightness[5]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_7_1 {{/designs/HA/ports_out/led_brightness[4]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_8_1 {{/designs/HA/ports_out/led_brightness[3]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_9_1 {{/designs/HA/ports_out/led_brightness[2]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_10_1 {{/designs/HA/ports_out/led_brightness[1]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_11_1 {{/designs/HA/ports_out/led_brightness[0]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_12_1 /designs/HA/ports_out/burglar_alarm_out
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_13_1 {{/designs/HA/ports_out/visitor_count[7]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_14_1 {{/designs/HA/ports_out/visitor_count[6]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_15_1 {{/designs/HA/ports_out/visitor_count[5]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_16_1 {{/designs/HA/ports_out/visitor_count[4]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_17_1 {{/designs/HA/ports_out/visitor_count[3]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_18_1 {{/designs/HA/ports_out/visitor_count[2]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_19_1 {{/designs/HA/ports_out/visitor_count[1]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_20_1 {{/designs/HA/ports_out/visitor_count[0]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_21_1 {{/designs/HA/ports_out/window_state[1]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_22_1 {{/designs/HA/ports_out/window_state[0]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_23_1 /designs/HA/ports_out/tv_on
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_24_1 /designs/HA/ports_out/music_on
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_25_1 {{/designs/HA/ports_out/volume_level[3]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_26_1 {{/designs/HA/ports_out/volume_level[2]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_27_1 {{/designs/HA/ports_out/volume_level[1]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_28_1 {{/designs/HA/ports_out/volume_level[0]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_29_1 /designs/HA/ports_out/ac_on
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_30_1 /designs/HA/ports_out/fan_on
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_31_1 /designs/HA/ports_out/lights_on
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_32_1 /designs/HA/ports_out/door_locked
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_33_1 {{/designs/HA/ports_out/lock_status[1]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_34_1 {{/designs/HA/ports_out/lock_status[0]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_35_1 /designs/HA/ports_out/humidifier_on
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_36_1 /designs/HA/ports_out/dehumidifier_on
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_37_1 {{/designs/HA/ports_out/system_status[7]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_38_1 {{/designs/HA/ports_out/system_status[6]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_39_1 {{/designs/HA/ports_out/system_status[5]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_40_1 {{/designs/HA/ports_out/system_status[4]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_41_1 {{/designs/HA/ports_out/system_status[3]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_42_1 {{/designs/HA/ports_out/system_status[2]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_43_1 {{/designs/HA/ports_out/system_status[1]}}
external_delay -accumulate -output {100.0 100.0 100.0 100.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_11_44_1 {{/designs/HA/ports_out/system_status[0]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12 /designs/HA/ports_in/rst_n
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_45_1 {{/designs/HA/ports_in/temp_sensor[7]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_46_1 {{/designs/HA/ports_in/temp_sensor[6]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_47_1 {{/designs/HA/ports_in/temp_sensor[5]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_48_1 {{/designs/HA/ports_in/temp_sensor[4]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_49_1 {{/designs/HA/ports_in/temp_sensor[3]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_50_1 {{/designs/HA/ports_in/temp_sensor[2]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_51_1 {{/designs/HA/ports_in/temp_sensor[1]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_52_1 {{/designs/HA/ports_in/temp_sensor[0]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_53_1 {{/designs/HA/ports_in/temp_setpoint[7]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_54_1 {{/designs/HA/ports_in/temp_setpoint[6]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_55_1 {{/designs/HA/ports_in/temp_setpoint[5]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_56_1 {{/designs/HA/ports_in/temp_setpoint[4]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_57_1 {{/designs/HA/ports_in/temp_setpoint[3]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_58_1 {{/designs/HA/ports_in/temp_setpoint[2]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_59_1 {{/designs/HA/ports_in/temp_setpoint[1]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_60_1 {{/designs/HA/ports_in/temp_setpoint[0]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_61_1 {{/designs/HA/ports_in/water_level[3]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_62_1 {{/designs/HA/ports_in/water_level[2]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_63_1 {{/designs/HA/ports_in/water_level[1]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_64_1 {{/designs/HA/ports_in/water_level[0]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_65_1 {{/designs/HA/ports_in/light_sensor[7]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_66_1 {{/designs/HA/ports_in/light_sensor[6]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_67_1 {{/designs/HA/ports_in/light_sensor[5]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_68_1 {{/designs/HA/ports_in/light_sensor[4]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_69_1 {{/designs/HA/ports_in/light_sensor[3]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_70_1 {{/designs/HA/ports_in/light_sensor[2]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_71_1 {{/designs/HA/ports_in/light_sensor[1]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_72_1 {{/designs/HA/ports_in/light_sensor[0]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_73_1 /designs/HA/ports_in/motion_sensor
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_74_1 /designs/HA/ports_in/door_sensor
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_75_1 /designs/HA/ports_in/window_sensor
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_76_1 /designs/HA/ports_in/alarm_arm
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_77_1 /designs/HA/ports_in/entry_sensor
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_78_1 /designs/HA/ports_in/exit_sensor
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_79_1 /designs/HA/ports_in/window_auto_mode
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_80_1 /designs/HA/ports_in/window_manual_open
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_81_1 /designs/HA/ports_in/window_manual_close
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_82_1 /designs/HA/ports_in/tv_on_cmd
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_83_1 /designs/HA/ports_in/music_on_cmd
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_84_1 {{/designs/HA/ports_in/volume_cmd[3]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_85_1 {{/designs/HA/ports_in/volume_cmd[2]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_86_1 {{/designs/HA/ports_in/volume_cmd[1]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_87_1 {{/designs/HA/ports_in/volume_cmd[0]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_88_1 /designs/HA/ports_in/ac_cmd
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_89_1 /designs/HA/ports_in/fan_cmd
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_90_1 /designs/HA/ports_in/light_cmd
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_91_1 /designs/HA/ports_in/door_lock_cmd
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_92_1 /designs/HA/ports_in/door_unlock_cmd
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_93_1 {{/designs/HA/ports_in/pin_input[3]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_94_1 {{/designs/HA/ports_in/pin_input[2]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_95_1 {{/designs/HA/ports_in/pin_input[1]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_96_1 {{/designs/HA/ports_in/pin_input[0]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_97_1 {{/designs/HA/ports_in/humidity_sensor[7]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_98_1 {{/designs/HA/ports_in/humidity_sensor[6]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_99_1 {{/designs/HA/ports_in/humidity_sensor[5]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_100_1 {{/designs/HA/ports_in/humidity_sensor[4]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_101_1 {{/designs/HA/ports_in/humidity_sensor[3]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_102_1 {{/designs/HA/ports_in/humidity_sensor[2]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_103_1 {{/designs/HA/ports_in/humidity_sensor[1]}}
external_delay -accumulate -input {1780.0 1780.0 1780.0 1780.0} -clock /designs/HA/timing/clock_domains/domain_1/clk -name best.sdc_line_12_104_1 {{/designs/HA/ports_in/humidity_sensor[0]}}
path_group -paths [specify_paths -to /designs/HA/timing/clock_domains/domain_1/clk]  -name clk -group /designs/HA/timing/cost_groups/clk -user_priority -1047552
# BEGIN DFT SECTION
::legacy::set_attribute -quiet dft_scan_style muxed_scan /
::legacy::set_attribute -quiet dft_scanbit_waveform_analysis false /
define_dft test_clock -name clk -domain clk -function test_clock -period 50000.0 -divide_period 1 -rise 1 -divide_rise 2 -fall 9 -divide_fall 10 -controllable /designs/HA/ports_in/clk
::legacy::set_attribute -quiet user_defined_signal false /designs/HA/dft/test_clock_domains/clk/clk
::legacy::set_attribute -quiet tree_name clk /designs/HA/dft/test_clock_domains/clk/clk
::legacy::set_attribute -quiet partition_info {} /designs/HA/dft/test_clock_domains/clk/clk
define_test_signal -name scan_en -active high   /designs/HA/ports_in/scan_en -function shift_enable  -index 0   -no_ideal  
::legacy::set_attribute -quiet pmbist_use none /designs/HA/dft/test_signals/scan_en
::legacy::set_attribute -quiet default_shift_enable true /designs/HA/dft/test_signals/scan_en
::legacy::set_attribute -quiet lec_value auto /designs/HA/dft/test_signals/scan_en
define_test_signal -name test_mode -active high   /designs/HA/ports_in/test_mode -function test_mode  -index 0   -no_ideal -skip_has_fanout_check 
::legacy::set_attribute -quiet pmbist_use none /designs/HA/dft/test_signals/test_mode
::legacy::set_attribute -quiet lec_value auto /designs/HA/dft/test_signals/test_mode
define_test_signal -name rst_n -active high   /designs/HA/ports_in/rst_n -function async_set_reset  -index 0  -shared_input -no_ideal -skip_has_fanout_check 
::legacy::set_attribute -quiet pmbist_use none /designs/HA/dft/test_signals/rst_n
::legacy::set_attribute -quiet user_defined_signal false /designs/HA/dft/test_signals/rst_n
::legacy::set_attribute -quiet lec_value auto /designs/HA/dft/test_signals/rst_n
::legacy::set_attribute -quiet atpg_use none /designs/HA/dft/test_clock_domains/clk/clk
identify_multibit_cell_abstract_scan_segments -design /designs/HA
#define_dft scan_chain -name AutoChain_1 -sdi /designs/HA/ports_in/DFT_sdi_1  -sdo /designs/HA/ports_out/DFT_sdo_1  -analyze -non_shared_out      -write_script_flow
#::legacy::set_attribute -quiet compressed true /designs/HA/dft/report/actual_scan_chains/AutoChain_1
#define_dft scan_chain -name AutoChain_2 -sdi /designs/HA/ports_in/DFT_sdi_2  -sdo /designs/HA/ports_out/DFT_sdo_2  -analyze -non_shared_out      -write_script_flow
#::legacy::set_attribute -quiet compressed true /designs/HA/dft/report/actual_scan_chains/AutoChain_2
# END DFT SECTION
::legacy::set_attribute -quiet seq_reason_deleted_internal {} /designs/HA
::legacy::set_attribute -quiet qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 7846} {cell_count 619} {utilization  0.00} {runtime 1 18 1 7} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 7491} {cell_count 599} {utilization  0.00} {runtime 1 20 2 10} }{reify {wns -192} {tns 11589} {vep 63} {area 6261} {cell_count 448} {utilization  0.00} {runtime 2 22 1 11} }{global_incr_map {wns -192} {tns 11573} {vep 62} {area 6017} {cell_count 437} {utilization  0.00} {runtime 1 23 0 12} }{incr_opt {wns -192} {tns 11550} {vep 60} {area 6007} {cell_count 430} {utilization  0.00} {runtime 1 24 0 13} }} /designs/HA
::legacy::set_attribute -quiet seq_mbci_coverage 0.0 /designs/HA
::legacy::set_attribute -quiet hdl_user_name HA /designs/HA
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL/HA.v} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/HA
::legacy::set_attribute -quiet verification_directory fv/HA /designs/HA
::legacy::set_attribute -quiet dft_min_number_of_scan_chains 2 /designs/HA
::legacy::set_attribute -quiet dft_mix_clock_edges_in_scan_chains true /designs/HA
::legacy::set_attribute -quiet original_name clk /designs/HA/ports_in/clk
::legacy::set_attribute -quiet original_name rst_n /designs/HA/ports_in/rst_n
::legacy::set_attribute -quiet original_name {temp_sensor[7]} {/designs/HA/ports_in/temp_sensor[7]}
::legacy::set_attribute -quiet original_name {temp_sensor[6]} {/designs/HA/ports_in/temp_sensor[6]}
::legacy::set_attribute -quiet original_name {temp_sensor[5]} {/designs/HA/ports_in/temp_sensor[5]}
::legacy::set_attribute -quiet original_name {temp_sensor[4]} {/designs/HA/ports_in/temp_sensor[4]}
::legacy::set_attribute -quiet original_name {temp_sensor[3]} {/designs/HA/ports_in/temp_sensor[3]}
::legacy::set_attribute -quiet original_name {temp_sensor[2]} {/designs/HA/ports_in/temp_sensor[2]}
::legacy::set_attribute -quiet original_name {temp_sensor[1]} {/designs/HA/ports_in/temp_sensor[1]}
::legacy::set_attribute -quiet original_name {temp_sensor[0]} {/designs/HA/ports_in/temp_sensor[0]}
::legacy::set_attribute -quiet original_name {temp_setpoint[7]} {/designs/HA/ports_in/temp_setpoint[7]}
::legacy::set_attribute -quiet original_name {temp_setpoint[6]} {/designs/HA/ports_in/temp_setpoint[6]}
::legacy::set_attribute -quiet original_name {temp_setpoint[5]} {/designs/HA/ports_in/temp_setpoint[5]}
::legacy::set_attribute -quiet original_name {temp_setpoint[4]} {/designs/HA/ports_in/temp_setpoint[4]}
::legacy::set_attribute -quiet original_name {temp_setpoint[3]} {/designs/HA/ports_in/temp_setpoint[3]}
::legacy::set_attribute -quiet original_name {temp_setpoint[2]} {/designs/HA/ports_in/temp_setpoint[2]}
::legacy::set_attribute -quiet original_name {temp_setpoint[1]} {/designs/HA/ports_in/temp_setpoint[1]}
::legacy::set_attribute -quiet original_name {temp_setpoint[0]} {/designs/HA/ports_in/temp_setpoint[0]}
::legacy::set_attribute -quiet original_name {water_level[3]} {/designs/HA/ports_in/water_level[3]}
::legacy::set_attribute -quiet original_name {water_level[2]} {/designs/HA/ports_in/water_level[2]}
::legacy::set_attribute -quiet original_name {water_level[1]} {/designs/HA/ports_in/water_level[1]}
::legacy::set_attribute -quiet original_name {water_level[0]} {/designs/HA/ports_in/water_level[0]}
::legacy::set_attribute -quiet original_name {light_sensor[7]} {/designs/HA/ports_in/light_sensor[7]}
::legacy::set_attribute -quiet original_name {light_sensor[6]} {/designs/HA/ports_in/light_sensor[6]}
::legacy::set_attribute -quiet original_name {light_sensor[5]} {/designs/HA/ports_in/light_sensor[5]}
::legacy::set_attribute -quiet original_name {light_sensor[4]} {/designs/HA/ports_in/light_sensor[4]}
::legacy::set_attribute -quiet original_name {light_sensor[3]} {/designs/HA/ports_in/light_sensor[3]}
::legacy::set_attribute -quiet original_name {light_sensor[2]} {/designs/HA/ports_in/light_sensor[2]}
::legacy::set_attribute -quiet original_name {light_sensor[1]} {/designs/HA/ports_in/light_sensor[1]}
::legacy::set_attribute -quiet original_name {light_sensor[0]} {/designs/HA/ports_in/light_sensor[0]}
::legacy::set_attribute -quiet original_name motion_sensor /designs/HA/ports_in/motion_sensor
::legacy::set_attribute -quiet original_name door_sensor /designs/HA/ports_in/door_sensor
::legacy::set_attribute -quiet original_name window_sensor /designs/HA/ports_in/window_sensor
::legacy::set_attribute -quiet original_name alarm_arm /designs/HA/ports_in/alarm_arm
::legacy::set_attribute -quiet original_name entry_sensor /designs/HA/ports_in/entry_sensor
::legacy::set_attribute -quiet original_name exit_sensor /designs/HA/ports_in/exit_sensor
::legacy::set_attribute -quiet original_name window_auto_mode /designs/HA/ports_in/window_auto_mode
::legacy::set_attribute -quiet original_name window_manual_open /designs/HA/ports_in/window_manual_open
::legacy::set_attribute -quiet original_name window_manual_close /designs/HA/ports_in/window_manual_close
::legacy::set_attribute -quiet original_name tv_on_cmd /designs/HA/ports_in/tv_on_cmd
::legacy::set_attribute -quiet original_name music_on_cmd /designs/HA/ports_in/music_on_cmd
::legacy::set_attribute -quiet original_name {volume_cmd[3]} {/designs/HA/ports_in/volume_cmd[3]}
::legacy::set_attribute -quiet original_name {volume_cmd[2]} {/designs/HA/ports_in/volume_cmd[2]}
::legacy::set_attribute -quiet original_name {volume_cmd[1]} {/designs/HA/ports_in/volume_cmd[1]}
::legacy::set_attribute -quiet original_name {volume_cmd[0]} {/designs/HA/ports_in/volume_cmd[0]}
::legacy::set_attribute -quiet original_name ac_cmd /designs/HA/ports_in/ac_cmd
::legacy::set_attribute -quiet original_name fan_cmd /designs/HA/ports_in/fan_cmd
::legacy::set_attribute -quiet original_name light_cmd /designs/HA/ports_in/light_cmd
::legacy::set_attribute -quiet original_name door_lock_cmd /designs/HA/ports_in/door_lock_cmd
::legacy::set_attribute -quiet original_name door_unlock_cmd /designs/HA/ports_in/door_unlock_cmd
::legacy::set_attribute -quiet original_name {pin_input[3]} {/designs/HA/ports_in/pin_input[3]}
::legacy::set_attribute -quiet original_name {pin_input[2]} {/designs/HA/ports_in/pin_input[2]}
::legacy::set_attribute -quiet original_name {pin_input[1]} {/designs/HA/ports_in/pin_input[1]}
::legacy::set_attribute -quiet original_name {pin_input[0]} {/designs/HA/ports_in/pin_input[0]}
::legacy::set_attribute -quiet original_name {humidity_sensor[7]} {/designs/HA/ports_in/humidity_sensor[7]}
::legacy::set_attribute -quiet original_name {humidity_sensor[6]} {/designs/HA/ports_in/humidity_sensor[6]}
::legacy::set_attribute -quiet original_name {humidity_sensor[5]} {/designs/HA/ports_in/humidity_sensor[5]}
::legacy::set_attribute -quiet original_name {humidity_sensor[4]} {/designs/HA/ports_in/humidity_sensor[4]}
::legacy::set_attribute -quiet original_name {humidity_sensor[3]} {/designs/HA/ports_in/humidity_sensor[3]}
::legacy::set_attribute -quiet original_name {humidity_sensor[2]} {/designs/HA/ports_in/humidity_sensor[2]}
::legacy::set_attribute -quiet original_name {humidity_sensor[1]} {/designs/HA/ports_in/humidity_sensor[1]}
::legacy::set_attribute -quiet original_name {humidity_sensor[0]} {/designs/HA/ports_in/humidity_sensor[0]}
::legacy::set_attribute -quiet dft_auto_created 6 /designs/HA/ports_in/scan_en
::legacy::set_attribute -quiet dft_auto_created 7 /designs/HA/ports_in/test_mode
::legacy::set_attribute -quiet dft_auto_created 2 /designs/HA/ports_in/DFT_sdi_1
::legacy::set_attribute -quiet dft_auto_created 2 /designs/HA/ports_in/DFT_sdi_2
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/heater_on
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/heater_on
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/heater_on
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/heater_on
::legacy::set_attribute -quiet original_name heater_on /designs/HA/ports_out/heater_on
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/heater_on
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/cooler_on
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/cooler_on
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/cooler_on
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/cooler_on
::legacy::set_attribute -quiet original_name cooler_on /designs/HA/ports_out/cooler_on
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/cooler_on
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/water_pump_on
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/water_pump_on
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/water_pump_on
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/water_pump_on
::legacy::set_attribute -quiet original_name water_pump_on /designs/HA/ports_out/water_pump_on
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/water_pump_on
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/water_valve_close
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/water_valve_close
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/water_valve_close
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/water_valve_close
::legacy::set_attribute -quiet original_name water_valve_close /designs/HA/ports_out/water_valve_close
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/water_valve_close
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/led_brightness[7]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[7]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/led_brightness[7]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/led_brightness[7]}
::legacy::set_attribute -quiet original_name {led_brightness[7]} {/designs/HA/ports_out/led_brightness[7]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[7]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/led_brightness[6]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[6]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/led_brightness[6]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/led_brightness[6]}
::legacy::set_attribute -quiet original_name {led_brightness[6]} {/designs/HA/ports_out/led_brightness[6]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[6]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/led_brightness[5]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[5]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/led_brightness[5]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/led_brightness[5]}
::legacy::set_attribute -quiet original_name {led_brightness[5]} {/designs/HA/ports_out/led_brightness[5]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[5]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/led_brightness[4]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[4]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/led_brightness[4]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/led_brightness[4]}
::legacy::set_attribute -quiet original_name {led_brightness[4]} {/designs/HA/ports_out/led_brightness[4]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[4]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/led_brightness[3]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[3]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/led_brightness[3]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/led_brightness[3]}
::legacy::set_attribute -quiet original_name {led_brightness[3]} {/designs/HA/ports_out/led_brightness[3]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[3]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/led_brightness[2]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[2]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/led_brightness[2]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/led_brightness[2]}
::legacy::set_attribute -quiet original_name {led_brightness[2]} {/designs/HA/ports_out/led_brightness[2]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[2]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/led_brightness[1]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[1]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/led_brightness[1]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/led_brightness[1]}
::legacy::set_attribute -quiet original_name {led_brightness[1]} {/designs/HA/ports_out/led_brightness[1]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[1]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/led_brightness[0]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[0]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/led_brightness[0]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/led_brightness[0]}
::legacy::set_attribute -quiet original_name {led_brightness[0]} {/designs/HA/ports_out/led_brightness[0]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/led_brightness[0]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/burglar_alarm_out
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/burglar_alarm_out
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/burglar_alarm_out
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/burglar_alarm_out
::legacy::set_attribute -quiet original_name burglar_alarm_out /designs/HA/ports_out/burglar_alarm_out
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/burglar_alarm_out
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/visitor_count[7]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[7]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/visitor_count[7]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/visitor_count[7]}
::legacy::set_attribute -quiet original_name {visitor_count[7]} {/designs/HA/ports_out/visitor_count[7]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[7]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/visitor_count[6]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[6]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/visitor_count[6]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/visitor_count[6]}
::legacy::set_attribute -quiet original_name {visitor_count[6]} {/designs/HA/ports_out/visitor_count[6]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[6]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/visitor_count[5]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[5]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/visitor_count[5]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/visitor_count[5]}
::legacy::set_attribute -quiet original_name {visitor_count[5]} {/designs/HA/ports_out/visitor_count[5]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[5]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/visitor_count[4]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[4]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/visitor_count[4]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/visitor_count[4]}
::legacy::set_attribute -quiet original_name {visitor_count[4]} {/designs/HA/ports_out/visitor_count[4]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[4]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/visitor_count[3]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[3]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/visitor_count[3]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/visitor_count[3]}
::legacy::set_attribute -quiet original_name {visitor_count[3]} {/designs/HA/ports_out/visitor_count[3]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[3]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/visitor_count[2]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[2]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/visitor_count[2]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/visitor_count[2]}
::legacy::set_attribute -quiet original_name {visitor_count[2]} {/designs/HA/ports_out/visitor_count[2]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[2]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/visitor_count[1]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[1]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/visitor_count[1]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/visitor_count[1]}
::legacy::set_attribute -quiet original_name {visitor_count[1]} {/designs/HA/ports_out/visitor_count[1]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[1]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/visitor_count[0]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[0]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/visitor_count[0]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/visitor_count[0]}
::legacy::set_attribute -quiet original_name {visitor_count[0]} {/designs/HA/ports_out/visitor_count[0]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/visitor_count[0]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/window_state[1]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/window_state[1]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/window_state[1]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/window_state[1]}
::legacy::set_attribute -quiet original_name {window_state[1]} {/designs/HA/ports_out/window_state[1]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/window_state[1]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/window_state[0]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/window_state[0]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/window_state[0]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/window_state[0]}
::legacy::set_attribute -quiet original_name {window_state[0]} {/designs/HA/ports_out/window_state[0]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/window_state[0]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/tv_on
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/tv_on
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/tv_on
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/tv_on
::legacy::set_attribute -quiet original_name tv_on /designs/HA/ports_out/tv_on
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/tv_on
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/music_on
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/music_on
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/music_on
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/music_on
::legacy::set_attribute -quiet original_name music_on /designs/HA/ports_out/music_on
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/music_on
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/volume_level[3]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/volume_level[3]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/volume_level[3]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/volume_level[3]}
::legacy::set_attribute -quiet original_name {volume_level[3]} {/designs/HA/ports_out/volume_level[3]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/volume_level[3]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/volume_level[2]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/volume_level[2]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/volume_level[2]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/volume_level[2]}
::legacy::set_attribute -quiet original_name {volume_level[2]} {/designs/HA/ports_out/volume_level[2]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/volume_level[2]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/volume_level[1]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/volume_level[1]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/volume_level[1]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/volume_level[1]}
::legacy::set_attribute -quiet original_name {volume_level[1]} {/designs/HA/ports_out/volume_level[1]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/volume_level[1]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/volume_level[0]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/volume_level[0]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/volume_level[0]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/volume_level[0]}
::legacy::set_attribute -quiet original_name {volume_level[0]} {/designs/HA/ports_out/volume_level[0]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/volume_level[0]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/ac_on
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/ac_on
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/ac_on
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/ac_on
::legacy::set_attribute -quiet original_name ac_on /designs/HA/ports_out/ac_on
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/ac_on
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/fan_on
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/fan_on
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/fan_on
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/fan_on
::legacy::set_attribute -quiet original_name fan_on /designs/HA/ports_out/fan_on
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/fan_on
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/lights_on
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/lights_on
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/lights_on
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/lights_on
::legacy::set_attribute -quiet original_name lights_on /designs/HA/ports_out/lights_on
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/lights_on
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/door_locked
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/door_locked
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/door_locked
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/door_locked
::legacy::set_attribute -quiet original_name door_locked /designs/HA/ports_out/door_locked
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/door_locked
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/lock_status[1]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/lock_status[1]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/lock_status[1]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/lock_status[1]}
::legacy::set_attribute -quiet original_name {lock_status[1]} {/designs/HA/ports_out/lock_status[1]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/lock_status[1]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/lock_status[0]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/lock_status[0]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/lock_status[0]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/lock_status[0]}
::legacy::set_attribute -quiet original_name {lock_status[0]} {/designs/HA/ports_out/lock_status[0]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/lock_status[0]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/humidifier_on
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/humidifier_on
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/humidifier_on
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/humidifier_on
::legacy::set_attribute -quiet original_name humidifier_on /designs/HA/ports_out/humidifier_on
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/humidifier_on
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 /designs/HA/ports_out/dehumidifier_on
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} /designs/HA/ports_out/dehumidifier_on
::legacy::set_attribute -quiet external_capacitance_min 1000.0 /designs/HA/ports_out/dehumidifier_on
::legacy::set_attribute -quiet max_capacitance 1800.0 /designs/HA/ports_out/dehumidifier_on
::legacy::set_attribute -quiet original_name dehumidifier_on /designs/HA/ports_out/dehumidifier_on
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} /designs/HA/ports_out/dehumidifier_on
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/system_status[7]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/system_status[7]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/system_status[7]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/system_status[7]}
::legacy::set_attribute -quiet original_name {system_status[7]} {/designs/HA/ports_out/system_status[7]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/system_status[7]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/system_status[6]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/system_status[6]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/system_status[6]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/system_status[6]}
::legacy::set_attribute -quiet original_name {system_status[6]} {/designs/HA/ports_out/system_status[6]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/system_status[6]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/system_status[5]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/system_status[5]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/system_status[5]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/system_status[5]}
::legacy::set_attribute -quiet original_name {system_status[5]} {/designs/HA/ports_out/system_status[5]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/system_status[5]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/system_status[4]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/system_status[4]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/system_status[4]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/system_status[4]}
::legacy::set_attribute -quiet original_name {system_status[4]} {/designs/HA/ports_out/system_status[4]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/system_status[4]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/system_status[3]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/system_status[3]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/system_status[3]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/system_status[3]}
::legacy::set_attribute -quiet original_name {system_status[3]} {/designs/HA/ports_out/system_status[3]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/system_status[3]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/system_status[2]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/system_status[2]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/system_status[2]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/system_status[2]}
::legacy::set_attribute -quiet original_name {system_status[2]} {/designs/HA/ports_out/system_status[2]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/system_status[2]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/system_status[1]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/system_status[1]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/system_status[1]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/system_status[1]}
::legacy::set_attribute -quiet original_name {system_status[1]} {/designs/HA/ports_out/system_status[1]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/system_status[1]}
::legacy::set_attribute -quiet external_pin_cap_min 1000.0 {/designs/HA/ports_out/system_status[0]}
::legacy::set_attribute -quiet external_capacitance_max {1000.0 1000.0} {/designs/HA/ports_out/system_status[0]}
::legacy::set_attribute -quiet external_capacitance_min 1000.0 {/designs/HA/ports_out/system_status[0]}
::legacy::set_attribute -quiet max_capacitance 1800.0 {/designs/HA/ports_out/system_status[0]}
::legacy::set_attribute -quiet original_name {system_status[0]} {/designs/HA/ports_out/system_status[0]}
::legacy::set_attribute -quiet external_pin_cap {1000.0 1000.0} {/designs/HA/ports_out/system_status[0]}
::legacy::set_attribute -quiet dft_auto_created 3 /designs/HA/ports_out/DFT_sdo_1
::legacy::set_attribute -quiet dft_auto_created 3 /designs/HA/ports_out/DFT_sdo_2
::legacy::set_attribute -quiet hdl_user_name appliances_controller /designs/HA/subdesigns/appliances_controller
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL/HA.v} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/HA/subdesigns/appliances_controller
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_appliances/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_appliances/subports_in/DFT_sen
::legacy::set_attribute -quiet original_name u_appliances/ac_on /designs/HA/instances_hier/u_appliances/instances_seq/ac_on_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_appliances/instances_seq/ac_on_reg
::legacy::set_attribute -quiet single_bit_orig_name u_appliances/ac_on /designs/HA/instances_hier/u_appliances/instances_seq/ac_on_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_appliances/instances_seq/ac_on_reg
::legacy::set_attribute -quiet original_name u_appliances/ac_on/q /designs/HA/instances_hier/u_appliances/instances_seq/ac_on_reg/pins_out/Q
::legacy::set_attribute -quiet original_name u_appliances/fan_on /designs/HA/instances_hier/u_appliances/instances_seq/fan_on_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_appliances/instances_seq/fan_on_reg
::legacy::set_attribute -quiet single_bit_orig_name u_appliances/fan_on /designs/HA/instances_hier/u_appliances/instances_seq/fan_on_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_appliances/instances_seq/fan_on_reg
::legacy::set_attribute -quiet original_name u_appliances/fan_on/q /designs/HA/instances_hier/u_appliances/instances_seq/fan_on_reg/pins_out/Q
::legacy::set_attribute -quiet original_name u_appliances/lights_on /designs/HA/instances_hier/u_appliances/instances_seq/lights_on_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_appliances/instances_seq/lights_on_reg
::legacy::set_attribute -quiet single_bit_orig_name u_appliances/lights_on /designs/HA/instances_hier/u_appliances/instances_seq/lights_on_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_appliances/instances_seq/lights_on_reg
::legacy::set_attribute -quiet original_name u_appliances/lights_on/q /designs/HA/instances_hier/u_appliances/instances_seq/lights_on_reg/pins_out/Q
::legacy::set_attribute -quiet hdl_user_name burglar_alarm /designs/HA/subdesigns/burglar_alarm
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL/HA.v} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/HA/subdesigns/burglar_alarm
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_burglar/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_burglar/subports_in/DFT_sen
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_burglar/subports_out/DFT_sdo
::legacy::set_attribute -quiet original_name {{u_burglar/delay_counter[6]}} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {u_burglar/delay_counter[6]} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[6]}
::legacy::set_attribute -quiet original_name {u_burglar/delay_counter[6]/q} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_burglar/delay_counter[5]}} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {u_burglar/delay_counter[5]} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[5]}
::legacy::set_attribute -quiet original_name {u_burglar/delay_counter[5]/q} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_burglar/delay_counter[7]}} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {u_burglar/delay_counter[7]} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[7]}
::legacy::set_attribute -quiet original_name {u_burglar/delay_counter[7]/q} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_burglar/delay_counter[3]}} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {u_burglar/delay_counter[3]} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[3]}
::legacy::set_attribute -quiet original_name {u_burglar/delay_counter[3]/q} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_burglar/delay_counter[4]}} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {u_burglar/delay_counter[4]} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[4]}
::legacy::set_attribute -quiet original_name {u_burglar/delay_counter[4]/q} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_burglar/delay_counter[8]}} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[8]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[8]}
::legacy::set_attribute -quiet single_bit_orig_name {u_burglar/delay_counter[8]} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[8]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[8]}
::legacy::set_attribute -quiet original_name {u_burglar/delay_counter[8]/q} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[8]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_burglar/delay_counter[2]}} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {u_burglar/delay_counter[2]} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[2]}
::legacy::set_attribute -quiet original_name {u_burglar/delay_counter[2]/q} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name u_burglar/alarm_out /designs/HA/instances_hier/u_burglar/instances_seq/alarm_out_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_burglar/instances_seq/alarm_out_reg
::legacy::set_attribute -quiet single_bit_orig_name u_burglar/alarm_out /designs/HA/instances_hier/u_burglar/instances_seq/alarm_out_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_burglar/instances_seq/alarm_out_reg
::legacy::set_attribute -quiet original_name u_burglar/alarm_out/q /designs/HA/instances_hier/u_burglar/instances_seq/alarm_out_reg/pins_out/Q
::legacy::set_attribute -quiet original_name {{u_burglar/delay_counter[1]}} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {u_burglar/delay_counter[1]} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[1]}
::legacy::set_attribute -quiet original_name {u_burglar/delay_counter[1]/q} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_burglar/delay_counter[0]}} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {u_burglar/delay_counter[0]} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[0]}
::legacy::set_attribute -quiet original_name {u_burglar/delay_counter[0]/q} {/designs/HA/instances_hier/u_burglar/instances_seq/delay_counter_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet hdl_user_name door_lock_controller /designs/HA/subdesigns/door_lock_controller
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL/HA.v} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/HA/subdesigns/door_lock_controller
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_door_lock/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_door_lock/subports_in/DFT_sen
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_door_lock/subports_out/DFT_sdo
::legacy::set_attribute -quiet original_name u_door_lock/door_locked /designs/HA/instances_hier/u_door_lock/instances_seq/door_locked_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_door_lock/instances_seq/door_locked_reg
::legacy::set_attribute -quiet single_bit_orig_name u_door_lock/door_locked /designs/HA/instances_hier/u_door_lock/instances_seq/door_locked_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_door_lock/instances_seq/door_locked_reg
::legacy::set_attribute -quiet original_name u_door_lock/door_locked/q /designs/HA/instances_hier/u_door_lock/instances_seq/door_locked_reg/pins_out/Q
::legacy::set_attribute -quiet original_name {{u_door_lock/lock_status[1]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/lock_status_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/lock_status_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/lock_status[1]} {/designs/HA/instances_hier/u_door_lock/instances_seq/lock_status_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/lock_status_reg[1]}
::legacy::set_attribute -quiet original_name {u_door_lock/lock_status[1]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/lock_status_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/lock_status[0]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/lock_status_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/lock_status_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/lock_status[0]} {/designs/HA/instances_hier/u_door_lock/instances_seq/lock_status_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/lock_status_reg[0]}
::legacy::set_attribute -quiet original_name {u_door_lock/lock_status[0]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/lock_status_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/timeout_counter[7]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/timeout_counter[7]} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[7]}
::legacy::set_attribute -quiet original_name {u_door_lock/timeout_counter[7]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/timeout_counter[6]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/timeout_counter[6]} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[6]}
::legacy::set_attribute -quiet original_name {u_door_lock/timeout_counter[6]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/timeout_counter[5]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/timeout_counter[5]} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[5]}
::legacy::set_attribute -quiet original_name {u_door_lock/timeout_counter[5]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/timeout_counter[4]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/timeout_counter[4]} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[4]}
::legacy::set_attribute -quiet original_name {u_door_lock/timeout_counter[4]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/timeout_counter[3]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/timeout_counter[3]} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[3]}
::legacy::set_attribute -quiet original_name {u_door_lock/timeout_counter[3]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/attempt_counter[0]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/attempt_counter[0]} {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[0]}
::legacy::set_attribute -quiet original_name {u_door_lock/attempt_counter[0]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/attempt_counter[1]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/attempt_counter[1]} {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[1]}
::legacy::set_attribute -quiet original_name {u_door_lock/attempt_counter[1]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/timeout_counter[1]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/timeout_counter[1]} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[1]}
::legacy::set_attribute -quiet original_name {u_door_lock/timeout_counter[1]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/timeout_counter[2]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/timeout_counter[2]} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[2]}
::legacy::set_attribute -quiet original_name {u_door_lock/timeout_counter[2]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/state[1]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/state_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/state_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/state[1]} {/designs/HA/instances_hier/u_door_lock/instances_seq/state_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/state_reg[1]}
::legacy::set_attribute -quiet original_name {u_door_lock/state[1]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/state_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/state[0]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/state_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/state_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/state[0]} {/designs/HA/instances_hier/u_door_lock/instances_seq/state_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/state_reg[0]}
::legacy::set_attribute -quiet original_name {u_door_lock/state[0]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/state_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/timeout_counter[0]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/timeout_counter[0]} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[0]}
::legacy::set_attribute -quiet original_name {u_door_lock/timeout_counter[0]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/timeout_counter_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_door_lock/attempt_counter[2]}} {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {u_door_lock/attempt_counter[2]} {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[2]}
::legacy::set_attribute -quiet original_name {u_door_lock/attempt_counter[2]/q} {/designs/HA/instances_hier/u_door_lock/instances_seq/attempt_counter_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet hdl_user_name entertainment_system /designs/HA/subdesigns/entertainment_system
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL/HA.v} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/HA/subdesigns/entertainment_system
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_entertainment/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_entertainment/subports_in/DFT_sen
::legacy::set_attribute -quiet original_name u_entertainment/tv_on /designs/HA/instances_hier/u_entertainment/instances_seq/tv_on_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_entertainment/instances_seq/tv_on_reg
::legacy::set_attribute -quiet single_bit_orig_name u_entertainment/tv_on /designs/HA/instances_hier/u_entertainment/instances_seq/tv_on_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_entertainment/instances_seq/tv_on_reg
::legacy::set_attribute -quiet original_name u_entertainment/tv_on/q /designs/HA/instances_hier/u_entertainment/instances_seq/tv_on_reg/pins_out/Q
::legacy::set_attribute -quiet original_name u_entertainment/music_on /designs/HA/instances_hier/u_entertainment/instances_seq/music_on_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_entertainment/instances_seq/music_on_reg
::legacy::set_attribute -quiet single_bit_orig_name u_entertainment/music_on /designs/HA/instances_hier/u_entertainment/instances_seq/music_on_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_entertainment/instances_seq/music_on_reg
::legacy::set_attribute -quiet original_name u_entertainment/music_on/q /designs/HA/instances_hier/u_entertainment/instances_seq/music_on_reg/pins_out/Q
::legacy::set_attribute -quiet original_name {{u_entertainment/volume_level[0]}} {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {u_entertainment/volume_level[0]} {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[0]}
::legacy::set_attribute -quiet original_name {u_entertainment/volume_level[0]/q} {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_entertainment/volume_level[2]}} {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {u_entertainment/volume_level[2]} {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[2]}
::legacy::set_attribute -quiet original_name {u_entertainment/volume_level[2]/q} {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_entertainment/volume_level[1]}} {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {u_entertainment/volume_level[1]} {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[1]}
::legacy::set_attribute -quiet original_name {u_entertainment/volume_level[1]/q} {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_entertainment/volume_level[3]}} {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {u_entertainment/volume_level[3]} {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[3]}
::legacy::set_attribute -quiet original_name {u_entertainment/volume_level[3]/q} {/designs/HA/instances_hier/u_entertainment/instances_seq/volume_level_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet hdl_user_name humidity_controller /designs/HA/subdesigns/humidity_controller
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL/HA.v} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/HA/subdesigns/humidity_controller
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_humidity/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_humidity/subports_in/DFT_sen
::legacy::set_attribute -quiet original_name u_humidity/dehumidifier_on /designs/HA/instances_hier/u_humidity/instances_seq/dehumidifier_on_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_humidity/instances_seq/dehumidifier_on_reg
::legacy::set_attribute -quiet single_bit_orig_name u_humidity/dehumidifier_on /designs/HA/instances_hier/u_humidity/instances_seq/dehumidifier_on_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_humidity/instances_seq/dehumidifier_on_reg
::legacy::set_attribute -quiet original_name u_humidity/dehumidifier_on/q /designs/HA/instances_hier/u_humidity/instances_seq/dehumidifier_on_reg/pins_out/Q
::legacy::set_attribute -quiet original_name u_humidity/humidifier_on /designs/HA/instances_hier/u_humidity/instances_seq/humidifier_on_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_humidity/instances_seq/humidifier_on_reg
::legacy::set_attribute -quiet single_bit_orig_name u_humidity/humidifier_on /designs/HA/instances_hier/u_humidity/instances_seq/humidifier_on_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_humidity/instances_seq/humidifier_on_reg
::legacy::set_attribute -quiet original_name u_humidity/humidifier_on/q /designs/HA/instances_hier/u_humidity/instances_seq/humidifier_on_reg/pins_out/Q
::legacy::set_attribute -quiet hdl_user_name luminosity_controller /designs/HA/subdesigns/luminosity_controller
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL/HA.v} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/HA/subdesigns/luminosity_controller
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_lum_ctrl/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_lum_ctrl/subports_in/DFT_sen
::legacy::set_attribute -quiet original_name {{u_lum_ctrl/led_brightness[4]}} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {u_lum_ctrl/led_brightness[4]} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[4]}
::legacy::set_attribute -quiet original_name {u_lum_ctrl/led_brightness[4]/q} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_lum_ctrl/led_brightness[6]}} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {u_lum_ctrl/led_brightness[6]} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[6]}
::legacy::set_attribute -quiet original_name {u_lum_ctrl/led_brightness[6]/q} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_lum_ctrl/led_brightness[7]}} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {u_lum_ctrl/led_brightness[7]} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[7]}
::legacy::set_attribute -quiet original_name {u_lum_ctrl/led_brightness[7]/q} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_lum_ctrl/led_brightness[0]}} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {u_lum_ctrl/led_brightness[0]} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[0]}
::legacy::set_attribute -quiet original_name {u_lum_ctrl/led_brightness[0]/q} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_lum_ctrl/led_brightness[2]}} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {u_lum_ctrl/led_brightness[2]} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[2]}
::legacy::set_attribute -quiet original_name {u_lum_ctrl/led_brightness[2]/q} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_lum_ctrl/led_brightness[5]}} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {u_lum_ctrl/led_brightness[5]} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[5]}
::legacy::set_attribute -quiet original_name {u_lum_ctrl/led_brightness[5]/q} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_lum_ctrl/led_brightness[3]}} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {u_lum_ctrl/led_brightness[3]} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[3]}
::legacy::set_attribute -quiet original_name {u_lum_ctrl/led_brightness[3]/q} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_lum_ctrl/led_brightness[1]}} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {u_lum_ctrl/led_brightness[1]} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[1]}
::legacy::set_attribute -quiet original_name {u_lum_ctrl/led_brightness[1]/q} {/designs/HA/instances_hier/u_lum_ctrl/instances_seq/led_brightness_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet hdl_user_name temperature_controller /designs/HA/subdesigns/temperature_controller
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL/HA.v} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/HA/subdesigns/temperature_controller
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_temp_ctrl/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_temp_ctrl/subports_in/DFT_sen
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_temp_ctrl/subports_out/DFT_sdo
::legacy::set_attribute -quiet original_name u_temp_ctrl/cooler_on /designs/HA/instances_hier/u_temp_ctrl/instances_seq/cooler_on_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_temp_ctrl/instances_seq/cooler_on_reg
::legacy::set_attribute -quiet single_bit_orig_name u_temp_ctrl/cooler_on /designs/HA/instances_hier/u_temp_ctrl/instances_seq/cooler_on_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_temp_ctrl/instances_seq/cooler_on_reg
::legacy::set_attribute -quiet original_name u_temp_ctrl/cooler_on/q /designs/HA/instances_hier/u_temp_ctrl/instances_seq/cooler_on_reg/pins_out/Q
::legacy::set_attribute -quiet original_name u_temp_ctrl/heater_on /designs/HA/instances_hier/u_temp_ctrl/instances_seq/heater_on_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_temp_ctrl/instances_seq/heater_on_reg
::legacy::set_attribute -quiet single_bit_orig_name u_temp_ctrl/heater_on /designs/HA/instances_hier/u_temp_ctrl/instances_seq/heater_on_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_temp_ctrl/instances_seq/heater_on_reg
::legacy::set_attribute -quiet original_name u_temp_ctrl/heater_on/q /designs/HA/instances_hier/u_temp_ctrl/instances_seq/heater_on_reg/pins_out/Q
::legacy::set_attribute -quiet original_name u_temp_ctrl/heater_on/q /designs/HA/instances_hier/u_temp_ctrl/instances_seq/heater_on_reg/pins_out/QN
::legacy::set_attribute -quiet hdl_user_name visitor_counter /designs/HA/subdesigns/visitor_counter
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL/HA.v} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/HA/subdesigns/visitor_counter
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_visitor/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_visitor/subports_in/DFT_sen
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_visitor/subports_out/DFT_sdo
::legacy::set_attribute -quiet original_name {{u_visitor/count[6]}} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {u_visitor/count[6]} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[6]}
::legacy::set_attribute -quiet original_name {u_visitor/count[6]/q} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_visitor/count[5]}} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {u_visitor/count[5]} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[5]}
::legacy::set_attribute -quiet original_name {u_visitor/count[5]/q} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_visitor/count[7]}} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {u_visitor/count[7]} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[7]}
::legacy::set_attribute -quiet original_name {u_visitor/count[7]/q} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_visitor/count[4]}} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {u_visitor/count[4]} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[4]}
::legacy::set_attribute -quiet original_name {u_visitor/count[4]/q} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_visitor/count[1]}} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {u_visitor/count[1]} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[1]}
::legacy::set_attribute -quiet original_name {u_visitor/count[1]/q} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_visitor/count[2]}} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {u_visitor/count[2]} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[2]}
::legacy::set_attribute -quiet original_name {u_visitor/count[2]/q} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_visitor/count[3]}} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {u_visitor/count[3]} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[3]}
::legacy::set_attribute -quiet original_name {u_visitor/count[3]/q} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_visitor/count[0]}} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {u_visitor/count[0]} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[0]}
::legacy::set_attribute -quiet original_name {u_visitor/count[0]/q} {/designs/HA/instances_hier/u_visitor/instances_seq/count_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name u_visitor/exit_prev /designs/HA/instances_hier/u_visitor/instances_seq/exit_prev_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_visitor/instances_seq/exit_prev_reg
::legacy::set_attribute -quiet single_bit_orig_name u_visitor/exit_prev /designs/HA/instances_hier/u_visitor/instances_seq/exit_prev_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_visitor/instances_seq/exit_prev_reg
::legacy::set_attribute -quiet original_name u_visitor/exit_prev/q /designs/HA/instances_hier/u_visitor/instances_seq/exit_prev_reg/pins_out/Q
::legacy::set_attribute -quiet original_name u_visitor/entry_prev /designs/HA/instances_hier/u_visitor/instances_seq/entry_prev_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_visitor/instances_seq/entry_prev_reg
::legacy::set_attribute -quiet single_bit_orig_name u_visitor/entry_prev /designs/HA/instances_hier/u_visitor/instances_seq/entry_prev_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_visitor/instances_seq/entry_prev_reg
::legacy::set_attribute -quiet original_name u_visitor/entry_prev/q /designs/HA/instances_hier/u_visitor/instances_seq/entry_prev_reg/pins_out/Q
::legacy::set_attribute -quiet hdl_user_name water_level_controller /designs/HA/subdesigns/water_level_controller
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL/HA.v} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/HA/subdesigns/water_level_controller
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_water_ctrl/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_water_ctrl/subports_in/DFT_sen
::legacy::set_attribute -quiet original_name u_water_ctrl/valve_close /designs/HA/instances_hier/u_water_ctrl/instances_seq/valve_close_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_water_ctrl/instances_seq/valve_close_reg
::legacy::set_attribute -quiet single_bit_orig_name u_water_ctrl/valve_close /designs/HA/instances_hier/u_water_ctrl/instances_seq/valve_close_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_water_ctrl/instances_seq/valve_close_reg
::legacy::set_attribute -quiet original_name u_water_ctrl/valve_close/q /designs/HA/instances_hier/u_water_ctrl/instances_seq/valve_close_reg/pins_out/Q
::legacy::set_attribute -quiet original_name u_water_ctrl/pump_on /designs/HA/instances_hier/u_water_ctrl/instances_seq/pump_on_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_hier/u_water_ctrl/instances_seq/pump_on_reg
::legacy::set_attribute -quiet single_bit_orig_name u_water_ctrl/pump_on /designs/HA/instances_hier/u_water_ctrl/instances_seq/pump_on_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_hier/u_water_ctrl/instances_seq/pump_on_reg
::legacy::set_attribute -quiet original_name u_water_ctrl/pump_on/q /designs/HA/instances_hier/u_water_ctrl/instances_seq/pump_on_reg/pins_out/Q
::legacy::set_attribute -quiet hdl_user_name window_treatment /designs/HA/subdesigns/window_treatment
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL/HA.v} {/home/drashi25114/Desktop/cmos65/90nm/verilog/DFT/best/RTL} {}}} /designs/HA/subdesigns/window_treatment
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_window/subports_in/DFT_sdi
::legacy::set_attribute -quiet dft_auto_created 1 /designs/HA/instances_hier/u_window/subports_in/DFT_sen
::legacy::set_attribute -quiet original_name {{u_window/window_state[0]}} {/designs/HA/instances_hier/u_window/instances_seq/window_state_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_window/instances_seq/window_state_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {u_window/window_state[0]} {/designs/HA/instances_hier/u_window/instances_seq/window_state_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_window/instances_seq/window_state_reg[0]}
::legacy::set_attribute -quiet original_name {u_window/window_state[0]/q} {/designs/HA/instances_hier/u_window/instances_seq/window_state_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{u_window/window_state[1]}} {/designs/HA/instances_hier/u_window/instances_seq/window_state_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_hier/u_window/instances_seq/window_state_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {u_window/window_state[1]} {/designs/HA/instances_hier/u_window/instances_seq/window_state_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_hier/u_window/instances_seq/window_state_reg[1]}
::legacy::set_attribute -quiet original_name {u_window/window_state[1]/q} {/designs/HA/instances_hier/u_window/instances_seq/window_state_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name water_valve_close_r /designs/HA/instances_seq/water_valve_close_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/water_valve_close_r_reg
::legacy::set_attribute -quiet single_bit_orig_name water_valve_close_r /designs/HA/instances_seq/water_valve_close_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/water_valve_close_r_reg
::legacy::set_attribute -quiet original_name water_valve_close_r/q /designs/HA/instances_seq/water_valve_close_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name tv_on_r /designs/HA/instances_seq/tv_on_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/tv_on_r_reg
::legacy::set_attribute -quiet single_bit_orig_name tv_on_r /designs/HA/instances_seq/tv_on_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/tv_on_r_reg
::legacy::set_attribute -quiet original_name tv_on_r/q /designs/HA/instances_seq/tv_on_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name music_on_r /designs/HA/instances_seq/music_on_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/music_on_r_reg
::legacy::set_attribute -quiet single_bit_orig_name music_on_r /designs/HA/instances_seq/music_on_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/music_on_r_reg
::legacy::set_attribute -quiet original_name music_on_r/q /designs/HA/instances_seq/music_on_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name {{led_brightness_r[2]}} {/designs/HA/instances_seq/led_brightness_r_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/led_brightness_r_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {led_brightness_r[2]} {/designs/HA/instances_seq/led_brightness_r_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/led_brightness_r_reg[2]}
::legacy::set_attribute -quiet original_name {led_brightness_r[2]/q} {/designs/HA/instances_seq/led_brightness_r_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{led_brightness_r[7]}} {/designs/HA/instances_seq/led_brightness_r_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/led_brightness_r_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {led_brightness_r[7]} {/designs/HA/instances_seq/led_brightness_r_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/led_brightness_r_reg[7]}
::legacy::set_attribute -quiet original_name {led_brightness_r[7]/q} {/designs/HA/instances_seq/led_brightness_r_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{led_brightness_r[3]}} {/designs/HA/instances_seq/led_brightness_r_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/led_brightness_r_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {led_brightness_r[3]} {/designs/HA/instances_seq/led_brightness_r_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/led_brightness_r_reg[3]}
::legacy::set_attribute -quiet original_name {led_brightness_r[3]/q} {/designs/HA/instances_seq/led_brightness_r_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name humidifier_on_r /designs/HA/instances_seq/humidifier_on_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/humidifier_on_r_reg
::legacy::set_attribute -quiet single_bit_orig_name humidifier_on_r /designs/HA/instances_seq/humidifier_on_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/humidifier_on_r_reg
::legacy::set_attribute -quiet original_name humidifier_on_r/q /designs/HA/instances_seq/humidifier_on_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name dehumidifier_on_r /designs/HA/instances_seq/dehumidifier_on_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/dehumidifier_on_r_reg
::legacy::set_attribute -quiet single_bit_orig_name dehumidifier_on_r /designs/HA/instances_seq/dehumidifier_on_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/dehumidifier_on_r_reg
::legacy::set_attribute -quiet original_name dehumidifier_on_r/q /designs/HA/instances_seq/dehumidifier_on_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name lights_on_r /designs/HA/instances_seq/lights_on_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/lights_on_r_reg
::legacy::set_attribute -quiet single_bit_orig_name lights_on_r /designs/HA/instances_seq/lights_on_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/lights_on_r_reg
::legacy::set_attribute -quiet original_name lights_on_r/q /designs/HA/instances_seq/lights_on_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name lights_on_r/q /designs/HA/instances_seq/lights_on_r_reg/pins_out/QN
::legacy::set_attribute -quiet original_name {{led_brightness_r[1]}} {/designs/HA/instances_seq/led_brightness_r_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/led_brightness_r_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {led_brightness_r[1]} {/designs/HA/instances_seq/led_brightness_r_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/led_brightness_r_reg[1]}
::legacy::set_attribute -quiet original_name {led_brightness_r[1]/q} {/designs/HA/instances_seq/led_brightness_r_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{led_brightness_r[0]}} {/designs/HA/instances_seq/led_brightness_r_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/led_brightness_r_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {led_brightness_r[0]} {/designs/HA/instances_seq/led_brightness_r_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/led_brightness_r_reg[0]}
::legacy::set_attribute -quiet original_name {led_brightness_r[0]/q} {/designs/HA/instances_seq/led_brightness_r_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{led_brightness_r[6]}} {/designs/HA/instances_seq/led_brightness_r_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/led_brightness_r_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {led_brightness_r[6]} {/designs/HA/instances_seq/led_brightness_r_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/led_brightness_r_reg[6]}
::legacy::set_attribute -quiet original_name {led_brightness_r[6]/q} {/designs/HA/instances_seq/led_brightness_r_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{led_brightness_r[5]}} {/designs/HA/instances_seq/led_brightness_r_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/led_brightness_r_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {led_brightness_r[5]} {/designs/HA/instances_seq/led_brightness_r_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/led_brightness_r_reg[5]}
::legacy::set_attribute -quiet original_name {led_brightness_r[5]/q} {/designs/HA/instances_seq/led_brightness_r_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{led_brightness_r[4]}} {/designs/HA/instances_seq/led_brightness_r_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/led_brightness_r_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {led_brightness_r[4]} {/designs/HA/instances_seq/led_brightness_r_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/led_brightness_r_reg[4]}
::legacy::set_attribute -quiet original_name {led_brightness_r[4]/q} {/designs/HA/instances_seq/led_brightness_r_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name ac_on_r /designs/HA/instances_seq/ac_on_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/ac_on_r_reg
::legacy::set_attribute -quiet single_bit_orig_name ac_on_r /designs/HA/instances_seq/ac_on_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/ac_on_r_reg
::legacy::set_attribute -quiet original_name ac_on_r/q /designs/HA/instances_seq/ac_on_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name ac_on_r/q /designs/HA/instances_seq/ac_on_r_reg/pins_out/QN
::legacy::set_attribute -quiet original_name fan_on_r /designs/HA/instances_seq/fan_on_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/fan_on_r_reg
::legacy::set_attribute -quiet single_bit_orig_name fan_on_r /designs/HA/instances_seq/fan_on_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/fan_on_r_reg
::legacy::set_attribute -quiet original_name fan_on_r/q /designs/HA/instances_seq/fan_on_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name fan_on_r/q /designs/HA/instances_seq/fan_on_r_reg/pins_out/QN
::legacy::set_attribute -quiet original_name {{lock_status_r[0]}} {/designs/HA/instances_seq/lock_status_r_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/lock_status_r_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {lock_status_r[0]} {/designs/HA/instances_seq/lock_status_r_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/lock_status_r_reg[0]}
::legacy::set_attribute -quiet original_name {lock_status_r[0]/q} {/designs/HA/instances_seq/lock_status_r_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{lock_status_r[1]}} {/designs/HA/instances_seq/lock_status_r_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/lock_status_r_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {lock_status_r[1]} {/designs/HA/instances_seq/lock_status_r_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/lock_status_r_reg[1]}
::legacy::set_attribute -quiet original_name {lock_status_r[1]/q} {/designs/HA/instances_seq/lock_status_r_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name door_locked_r /designs/HA/instances_seq/door_locked_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/door_locked_r_reg
::legacy::set_attribute -quiet single_bit_orig_name door_locked_r /designs/HA/instances_seq/door_locked_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/door_locked_r_reg
::legacy::set_attribute -quiet original_name door_locked_r/q /designs/HA/instances_seq/door_locked_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name door_locked_r/q /designs/HA/instances_seq/door_locked_r_reg/pins_out/QN
::legacy::set_attribute -quiet original_name {{volume_level_r[2]}} {/designs/HA/instances_seq/volume_level_r_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/volume_level_r_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {volume_level_r[2]} {/designs/HA/instances_seq/volume_level_r_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/volume_level_r_reg[2]}
::legacy::set_attribute -quiet original_name {volume_level_r[2]/q} {/designs/HA/instances_seq/volume_level_r_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{volume_level_r[3]}} {/designs/HA/instances_seq/volume_level_r_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/volume_level_r_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {volume_level_r[3]} {/designs/HA/instances_seq/volume_level_r_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/volume_level_r_reg[3]}
::legacy::set_attribute -quiet original_name {volume_level_r[3]/q} {/designs/HA/instances_seq/volume_level_r_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{volume_level_r[1]}} {/designs/HA/instances_seq/volume_level_r_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/volume_level_r_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {volume_level_r[1]} {/designs/HA/instances_seq/volume_level_r_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/volume_level_r_reg[1]}
::legacy::set_attribute -quiet original_name {volume_level_r[1]/q} {/designs/HA/instances_seq/volume_level_r_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{volume_level_r[0]}} {/designs/HA/instances_seq/volume_level_r_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/volume_level_r_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {volume_level_r[0]} {/designs/HA/instances_seq/volume_level_r_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/volume_level_r_reg[0]}
::legacy::set_attribute -quiet original_name {volume_level_r[0]/q} {/designs/HA/instances_seq/volume_level_r_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name water_pump_on_r /designs/HA/instances_seq/water_pump_on_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/water_pump_on_r_reg
::legacy::set_attribute -quiet single_bit_orig_name water_pump_on_r /designs/HA/instances_seq/water_pump_on_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/water_pump_on_r_reg
::legacy::set_attribute -quiet original_name water_pump_on_r/q /designs/HA/instances_seq/water_pump_on_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name water_pump_on_r/q /designs/HA/instances_seq/water_pump_on_r_reg/pins_out/QN
::legacy::set_attribute -quiet original_name {{pin_input_r[3]}} {/designs/HA/instances_seq/pin_input_r_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/pin_input_r_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {pin_input_r[3]} {/designs/HA/instances_seq/pin_input_r_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/pin_input_r_reg[3]}
::legacy::set_attribute -quiet original_name {pin_input_r[3]/q} {/designs/HA/instances_seq/pin_input_r_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name ac_cmd_r /designs/HA/instances_seq/ac_cmd_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/ac_cmd_r_reg
::legacy::set_attribute -quiet single_bit_orig_name ac_cmd_r /designs/HA/instances_seq/ac_cmd_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/ac_cmd_r_reg
::legacy::set_attribute -quiet original_name ac_cmd_r/q /designs/HA/instances_seq/ac_cmd_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name {{visitor_count_r[1]}} {/designs/HA/instances_seq/visitor_count_r_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/visitor_count_r_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {visitor_count_r[1]} {/designs/HA/instances_seq/visitor_count_r_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/visitor_count_r_reg[1]}
::legacy::set_attribute -quiet original_name {visitor_count_r[1]/q} {/designs/HA/instances_seq/visitor_count_r_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{visitor_count_r[5]}} {/designs/HA/instances_seq/visitor_count_r_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/visitor_count_r_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {visitor_count_r[5]} {/designs/HA/instances_seq/visitor_count_r_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/visitor_count_r_reg[5]}
::legacy::set_attribute -quiet original_name {visitor_count_r[5]/q} {/designs/HA/instances_seq/visitor_count_r_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{visitor_count_r[4]}} {/designs/HA/instances_seq/visitor_count_r_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/visitor_count_r_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {visitor_count_r[4]} {/designs/HA/instances_seq/visitor_count_r_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/visitor_count_r_reg[4]}
::legacy::set_attribute -quiet original_name {visitor_count_r[4]/q} {/designs/HA/instances_seq/visitor_count_r_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{visitor_count_r[2]}} {/designs/HA/instances_seq/visitor_count_r_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/visitor_count_r_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {visitor_count_r[2]} {/designs/HA/instances_seq/visitor_count_r_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/visitor_count_r_reg[2]}
::legacy::set_attribute -quiet original_name {visitor_count_r[2]/q} {/designs/HA/instances_seq/visitor_count_r_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{visitor_count_r[3]}} {/designs/HA/instances_seq/visitor_count_r_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/visitor_count_r_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {visitor_count_r[3]} {/designs/HA/instances_seq/visitor_count_r_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/visitor_count_r_reg[3]}
::legacy::set_attribute -quiet original_name {visitor_count_r[3]/q} {/designs/HA/instances_seq/visitor_count_r_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{window_state_r[1]}} {/designs/HA/instances_seq/window_state_r_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/window_state_r_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {window_state_r[1]} {/designs/HA/instances_seq/window_state_r_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/window_state_r_reg[1]}
::legacy::set_attribute -quiet original_name {window_state_r[1]/q} {/designs/HA/instances_seq/window_state_r_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{visitor_count_r[0]}} {/designs/HA/instances_seq/visitor_count_r_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/visitor_count_r_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {visitor_count_r[0]} {/designs/HA/instances_seq/visitor_count_r_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/visitor_count_r_reg[0]}
::legacy::set_attribute -quiet original_name {visitor_count_r[0]/q} {/designs/HA/instances_seq/visitor_count_r_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{window_state_r[0]}} {/designs/HA/instances_seq/window_state_r_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/window_state_r_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {window_state_r[0]} {/designs/HA/instances_seq/window_state_r_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/window_state_r_reg[0]}
::legacy::set_attribute -quiet original_name {window_state_r[0]/q} {/designs/HA/instances_seq/window_state_r_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{visitor_count_r[7]}} {/designs/HA/instances_seq/visitor_count_r_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/visitor_count_r_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {visitor_count_r[7]} {/designs/HA/instances_seq/visitor_count_r_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/visitor_count_r_reg[7]}
::legacy::set_attribute -quiet original_name {visitor_count_r[7]/q} {/designs/HA/instances_seq/visitor_count_r_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{visitor_count_r[6]}} {/designs/HA/instances_seq/visitor_count_r_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/visitor_count_r_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {visitor_count_r[6]} {/designs/HA/instances_seq/visitor_count_r_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/visitor_count_r_reg[6]}
::legacy::set_attribute -quiet original_name {visitor_count_r[6]/q} {/designs/HA/instances_seq/visitor_count_r_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name window_manual_open_r /designs/HA/instances_seq/window_manual_open_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/window_manual_open_r_reg
::legacy::set_attribute -quiet single_bit_orig_name window_manual_open_r /designs/HA/instances_seq/window_manual_open_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/window_manual_open_r_reg
::legacy::set_attribute -quiet original_name window_manual_open_r/q /designs/HA/instances_seq/window_manual_open_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name motion_sensor_r /designs/HA/instances_seq/motion_sensor_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/motion_sensor_r_reg
::legacy::set_attribute -quiet single_bit_orig_name motion_sensor_r /designs/HA/instances_seq/motion_sensor_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/motion_sensor_r_reg
::legacy::set_attribute -quiet original_name motion_sensor_r/q /designs/HA/instances_seq/motion_sensor_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name {{temp_sensor_r[0]}} {/designs/HA/instances_seq/temp_sensor_r_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_sensor_r_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_sensor_r[0]} {/designs/HA/instances_seq/temp_sensor_r_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_sensor_r_reg[0]}
::legacy::set_attribute -quiet original_name {temp_sensor_r[0]/q} {/designs/HA/instances_seq/temp_sensor_r_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_sensor_r[1]}} {/designs/HA/instances_seq/temp_sensor_r_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_sensor_r_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_sensor_r[1]} {/designs/HA/instances_seq/temp_sensor_r_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_sensor_r_reg[1]}
::legacy::set_attribute -quiet original_name {temp_sensor_r[1]/q} {/designs/HA/instances_seq/temp_sensor_r_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_sensor_r[2]}} {/designs/HA/instances_seq/temp_sensor_r_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_sensor_r_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_sensor_r[2]} {/designs/HA/instances_seq/temp_sensor_r_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_sensor_r_reg[2]}
::legacy::set_attribute -quiet original_name {temp_sensor_r[2]/q} {/designs/HA/instances_seq/temp_sensor_r_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_sensor_r[3]}} {/designs/HA/instances_seq/temp_sensor_r_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_sensor_r_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_sensor_r[3]} {/designs/HA/instances_seq/temp_sensor_r_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_sensor_r_reg[3]}
::legacy::set_attribute -quiet original_name {temp_sensor_r[3]/q} {/designs/HA/instances_seq/temp_sensor_r_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_sensor_r[4]}} {/designs/HA/instances_seq/temp_sensor_r_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_sensor_r_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_sensor_r[4]} {/designs/HA/instances_seq/temp_sensor_r_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_sensor_r_reg[4]}
::legacy::set_attribute -quiet original_name {temp_sensor_r[4]/q} {/designs/HA/instances_seq/temp_sensor_r_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_sensor_r[5]}} {/designs/HA/instances_seq/temp_sensor_r_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_sensor_r_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_sensor_r[5]} {/designs/HA/instances_seq/temp_sensor_r_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_sensor_r_reg[5]}
::legacy::set_attribute -quiet original_name {temp_sensor_r[5]/q} {/designs/HA/instances_seq/temp_sensor_r_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{pin_input_r[0]}} {/designs/HA/instances_seq/pin_input_r_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/pin_input_r_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {pin_input_r[0]} {/designs/HA/instances_seq/pin_input_r_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/pin_input_r_reg[0]}
::legacy::set_attribute -quiet original_name {pin_input_r[0]/q} {/designs/HA/instances_seq/pin_input_r_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_sensor_r[7]}} {/designs/HA/instances_seq/temp_sensor_r_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_sensor_r_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_sensor_r[7]} {/designs/HA/instances_seq/temp_sensor_r_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_sensor_r_reg[7]}
::legacy::set_attribute -quiet original_name {temp_sensor_r[7]/q} {/designs/HA/instances_seq/temp_sensor_r_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_setpoint_r[7]}} {/designs/HA/instances_seq/temp_setpoint_r_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_setpoint_r_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_setpoint_r[7]} {/designs/HA/instances_seq/temp_setpoint_r_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_setpoint_r_reg[7]}
::legacy::set_attribute -quiet original_name {temp_setpoint_r[7]/q} {/designs/HA/instances_seq/temp_setpoint_r_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_setpoint_r[0]}} {/designs/HA/instances_seq/temp_setpoint_r_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_setpoint_r_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_setpoint_r[0]} {/designs/HA/instances_seq/temp_setpoint_r_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_setpoint_r_reg[0]}
::legacy::set_attribute -quiet original_name {temp_setpoint_r[0]/q} {/designs/HA/instances_seq/temp_setpoint_r_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_setpoint_r[2]}} {/designs/HA/instances_seq/temp_setpoint_r_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_setpoint_r_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_setpoint_r[2]} {/designs/HA/instances_seq/temp_setpoint_r_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_setpoint_r_reg[2]}
::legacy::set_attribute -quiet original_name {temp_setpoint_r[2]/q} {/designs/HA/instances_seq/temp_setpoint_r_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_setpoint_r[3]}} {/designs/HA/instances_seq/temp_setpoint_r_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_setpoint_r_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_setpoint_r[3]} {/designs/HA/instances_seq/temp_setpoint_r_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_setpoint_r_reg[3]}
::legacy::set_attribute -quiet original_name {temp_setpoint_r[3]/q} {/designs/HA/instances_seq/temp_setpoint_r_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_setpoint_r[4]}} {/designs/HA/instances_seq/temp_setpoint_r_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_setpoint_r_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_setpoint_r[4]} {/designs/HA/instances_seq/temp_setpoint_r_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_setpoint_r_reg[4]}
::legacy::set_attribute -quiet original_name {temp_setpoint_r[4]/q} {/designs/HA/instances_seq/temp_setpoint_r_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_setpoint_r[6]}} {/designs/HA/instances_seq/temp_setpoint_r_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_setpoint_r_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_setpoint_r[6]} {/designs/HA/instances_seq/temp_setpoint_r_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_setpoint_r_reg[6]}
::legacy::set_attribute -quiet original_name {temp_setpoint_r[6]/q} {/designs/HA/instances_seq/temp_setpoint_r_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name window_sensor_r /designs/HA/instances_seq/window_sensor_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/window_sensor_r_reg
::legacy::set_attribute -quiet single_bit_orig_name window_sensor_r /designs/HA/instances_seq/window_sensor_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/window_sensor_r_reg
::legacy::set_attribute -quiet original_name window_sensor_r/q /designs/HA/instances_seq/window_sensor_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name window_auto_mode_r /designs/HA/instances_seq/window_auto_mode_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/window_auto_mode_r_reg
::legacy::set_attribute -quiet single_bit_orig_name window_auto_mode_r /designs/HA/instances_seq/window_auto_mode_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/window_auto_mode_r_reg
::legacy::set_attribute -quiet original_name window_auto_mode_r/q /designs/HA/instances_seq/window_auto_mode_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name alarm_arm_r /designs/HA/instances_seq/alarm_arm_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/alarm_arm_r_reg
::legacy::set_attribute -quiet single_bit_orig_name alarm_arm_r /designs/HA/instances_seq/alarm_arm_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/alarm_arm_r_reg
::legacy::set_attribute -quiet original_name alarm_arm_r/q /designs/HA/instances_seq/alarm_arm_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name door_sensor_r /designs/HA/instances_seq/door_sensor_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/door_sensor_r_reg
::legacy::set_attribute -quiet single_bit_orig_name door_sensor_r /designs/HA/instances_seq/door_sensor_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/door_sensor_r_reg
::legacy::set_attribute -quiet original_name door_sensor_r/q /designs/HA/instances_seq/door_sensor_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name entry_sensor_r /designs/HA/instances_seq/entry_sensor_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/entry_sensor_r_reg
::legacy::set_attribute -quiet single_bit_orig_name entry_sensor_r /designs/HA/instances_seq/entry_sensor_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/entry_sensor_r_reg
::legacy::set_attribute -quiet original_name entry_sensor_r/q /designs/HA/instances_seq/entry_sensor_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name exit_sensor_r /designs/HA/instances_seq/exit_sensor_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/exit_sensor_r_reg
::legacy::set_attribute -quiet single_bit_orig_name exit_sensor_r /designs/HA/instances_seq/exit_sensor_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/exit_sensor_r_reg
::legacy::set_attribute -quiet original_name exit_sensor_r/q /designs/HA/instances_seq/exit_sensor_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name {{humidity_sensor_r[3]}} {/designs/HA/instances_seq/humidity_sensor_r_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/humidity_sensor_r_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {humidity_sensor_r[3]} {/designs/HA/instances_seq/humidity_sensor_r_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/humidity_sensor_r_reg[3]}
::legacy::set_attribute -quiet original_name {humidity_sensor_r[3]/q} {/designs/HA/instances_seq/humidity_sensor_r_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{pin_input_r[2]}} {/designs/HA/instances_seq/pin_input_r_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/pin_input_r_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {pin_input_r[2]} {/designs/HA/instances_seq/pin_input_r_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/pin_input_r_reg[2]}
::legacy::set_attribute -quiet original_name {pin_input_r[2]/q} {/designs/HA/instances_seq/pin_input_r_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{pin_input_r[1]}} {/designs/HA/instances_seq/pin_input_r_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/pin_input_r_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {pin_input_r[1]} {/designs/HA/instances_seq/pin_input_r_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/pin_input_r_reg[1]}
::legacy::set_attribute -quiet original_name {pin_input_r[1]/q} {/designs/HA/instances_seq/pin_input_r_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name heater_on_r /designs/HA/instances_seq/heater_on_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/heater_on_r_reg
::legacy::set_attribute -quiet single_bit_orig_name heater_on_r /designs/HA/instances_seq/heater_on_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/heater_on_r_reg
::legacy::set_attribute -quiet original_name heater_on_r/q /designs/HA/instances_seq/heater_on_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name heater_on_r/q /designs/HA/instances_seq/heater_on_r_reg/pins_out/QN
::legacy::set_attribute -quiet original_name {{volume_cmd_r[0]}} {/designs/HA/instances_seq/volume_cmd_r_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/volume_cmd_r_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {volume_cmd_r[0]} {/designs/HA/instances_seq/volume_cmd_r_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/volume_cmd_r_reg[0]}
::legacy::set_attribute -quiet original_name {volume_cmd_r[0]/q} {/designs/HA/instances_seq/volume_cmd_r_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{volume_cmd_r[1]}} {/designs/HA/instances_seq/volume_cmd_r_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/volume_cmd_r_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {volume_cmd_r[1]} {/designs/HA/instances_seq/volume_cmd_r_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/volume_cmd_r_reg[1]}
::legacy::set_attribute -quiet original_name {volume_cmd_r[1]/q} {/designs/HA/instances_seq/volume_cmd_r_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name door_unlock_cmd_r /designs/HA/instances_seq/door_unlock_cmd_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/door_unlock_cmd_r_reg
::legacy::set_attribute -quiet single_bit_orig_name door_unlock_cmd_r /designs/HA/instances_seq/door_unlock_cmd_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/door_unlock_cmd_r_reg
::legacy::set_attribute -quiet original_name door_unlock_cmd_r/q /designs/HA/instances_seq/door_unlock_cmd_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name window_manual_close_r /designs/HA/instances_seq/window_manual_close_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/window_manual_close_r_reg
::legacy::set_attribute -quiet single_bit_orig_name window_manual_close_r /designs/HA/instances_seq/window_manual_close_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/window_manual_close_r_reg
::legacy::set_attribute -quiet original_name window_manual_close_r/q /designs/HA/instances_seq/window_manual_close_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name {{volume_cmd_r[2]}} {/designs/HA/instances_seq/volume_cmd_r_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/volume_cmd_r_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {volume_cmd_r[2]} {/designs/HA/instances_seq/volume_cmd_r_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/volume_cmd_r_reg[2]}
::legacy::set_attribute -quiet original_name {volume_cmd_r[2]/q} {/designs/HA/instances_seq/volume_cmd_r_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name door_lock_cmd_r /designs/HA/instances_seq/door_lock_cmd_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/door_lock_cmd_r_reg
::legacy::set_attribute -quiet single_bit_orig_name door_lock_cmd_r /designs/HA/instances_seq/door_lock_cmd_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/door_lock_cmd_r_reg
::legacy::set_attribute -quiet original_name door_lock_cmd_r/q /designs/HA/instances_seq/door_lock_cmd_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name {{humidity_sensor_r[6]}} {/designs/HA/instances_seq/humidity_sensor_r_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/humidity_sensor_r_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {humidity_sensor_r[6]} {/designs/HA/instances_seq/humidity_sensor_r_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/humidity_sensor_r_reg[6]}
::legacy::set_attribute -quiet original_name {humidity_sensor_r[6]/q} {/designs/HA/instances_seq/humidity_sensor_r_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name light_cmd_r /designs/HA/instances_seq/light_cmd_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/light_cmd_r_reg
::legacy::set_attribute -quiet single_bit_orig_name light_cmd_r /designs/HA/instances_seq/light_cmd_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/light_cmd_r_reg
::legacy::set_attribute -quiet original_name light_cmd_r/q /designs/HA/instances_seq/light_cmd_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name {{humidity_sensor_r[0]}} {/designs/HA/instances_seq/humidity_sensor_r_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/humidity_sensor_r_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {humidity_sensor_r[0]} {/designs/HA/instances_seq/humidity_sensor_r_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/humidity_sensor_r_reg[0]}
::legacy::set_attribute -quiet original_name {humidity_sensor_r[0]/q} {/designs/HA/instances_seq/humidity_sensor_r_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{volume_cmd_r[3]}} {/designs/HA/instances_seq/volume_cmd_r_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/volume_cmd_r_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {volume_cmd_r[3]} {/designs/HA/instances_seq/volume_cmd_r_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/volume_cmd_r_reg[3]}
::legacy::set_attribute -quiet original_name {volume_cmd_r[3]/q} {/designs/HA/instances_seq/volume_cmd_r_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_setpoint_r[1]}} {/designs/HA/instances_seq/temp_setpoint_r_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_setpoint_r_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_setpoint_r[1]} {/designs/HA/instances_seq/temp_setpoint_r_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_setpoint_r_reg[1]}
::legacy::set_attribute -quiet original_name {temp_setpoint_r[1]/q} {/designs/HA/instances_seq/temp_setpoint_r_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_setpoint_r[5]}} {/designs/HA/instances_seq/temp_setpoint_r_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_setpoint_r_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_setpoint_r[5]} {/designs/HA/instances_seq/temp_setpoint_r_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_setpoint_r_reg[5]}
::legacy::set_attribute -quiet original_name {temp_setpoint_r[5]/q} {/designs/HA/instances_seq/temp_setpoint_r_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{water_level_r[0]}} {/designs/HA/instances_seq/water_level_r_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/water_level_r_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {water_level_r[0]} {/designs/HA/instances_seq/water_level_r_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/water_level_r_reg[0]}
::legacy::set_attribute -quiet original_name {water_level_r[0]/q} {/designs/HA/instances_seq/water_level_r_reg[0]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{temp_sensor_r[6]}} {/designs/HA/instances_seq/temp_sensor_r_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/temp_sensor_r_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {temp_sensor_r[6]} {/designs/HA/instances_seq/temp_sensor_r_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/temp_sensor_r_reg[6]}
::legacy::set_attribute -quiet original_name {temp_sensor_r[6]/q} {/designs/HA/instances_seq/temp_sensor_r_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name fan_cmd_r /designs/HA/instances_seq/fan_cmd_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/fan_cmd_r_reg
::legacy::set_attribute -quiet single_bit_orig_name fan_cmd_r /designs/HA/instances_seq/fan_cmd_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/fan_cmd_r_reg
::legacy::set_attribute -quiet original_name fan_cmd_r/q /designs/HA/instances_seq/fan_cmd_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name {{humidity_sensor_r[1]}} {/designs/HA/instances_seq/humidity_sensor_r_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/humidity_sensor_r_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {humidity_sensor_r[1]} {/designs/HA/instances_seq/humidity_sensor_r_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/humidity_sensor_r_reg[1]}
::legacy::set_attribute -quiet original_name {humidity_sensor_r[1]/q} {/designs/HA/instances_seq/humidity_sensor_r_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{humidity_sensor_r[2]}} {/designs/HA/instances_seq/humidity_sensor_r_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/humidity_sensor_r_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {humidity_sensor_r[2]} {/designs/HA/instances_seq/humidity_sensor_r_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/humidity_sensor_r_reg[2]}
::legacy::set_attribute -quiet original_name {humidity_sensor_r[2]/q} {/designs/HA/instances_seq/humidity_sensor_r_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{humidity_sensor_r[4]}} {/designs/HA/instances_seq/humidity_sensor_r_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/humidity_sensor_r_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {humidity_sensor_r[4]} {/designs/HA/instances_seq/humidity_sensor_r_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/humidity_sensor_r_reg[4]}
::legacy::set_attribute -quiet original_name {humidity_sensor_r[4]/q} {/designs/HA/instances_seq/humidity_sensor_r_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{humidity_sensor_r[5]}} {/designs/HA/instances_seq/humidity_sensor_r_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/humidity_sensor_r_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {humidity_sensor_r[5]} {/designs/HA/instances_seq/humidity_sensor_r_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/humidity_sensor_r_reg[5]}
::legacy::set_attribute -quiet original_name {humidity_sensor_r[5]/q} {/designs/HA/instances_seq/humidity_sensor_r_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{humidity_sensor_r[7]}} {/designs/HA/instances_seq/humidity_sensor_r_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/humidity_sensor_r_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {humidity_sensor_r[7]} {/designs/HA/instances_seq/humidity_sensor_r_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/humidity_sensor_r_reg[7]}
::legacy::set_attribute -quiet original_name {humidity_sensor_r[7]/q} {/designs/HA/instances_seq/humidity_sensor_r_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name music_on_cmd_r /designs/HA/instances_seq/music_on_cmd_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/music_on_cmd_r_reg
::legacy::set_attribute -quiet single_bit_orig_name music_on_cmd_r /designs/HA/instances_seq/music_on_cmd_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/music_on_cmd_r_reg
::legacy::set_attribute -quiet original_name music_on_cmd_r/q /designs/HA/instances_seq/music_on_cmd_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name tv_on_cmd_r /designs/HA/instances_seq/tv_on_cmd_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/tv_on_cmd_r_reg
::legacy::set_attribute -quiet single_bit_orig_name tv_on_cmd_r /designs/HA/instances_seq/tv_on_cmd_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/tv_on_cmd_r_reg
::legacy::set_attribute -quiet original_name tv_on_cmd_r/q /designs/HA/instances_seq/tv_on_cmd_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name {{water_level_r[3]}} {/designs/HA/instances_seq/water_level_r_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/water_level_r_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {water_level_r[3]} {/designs/HA/instances_seq/water_level_r_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/water_level_r_reg[3]}
::legacy::set_attribute -quiet original_name {water_level_r[3]/q} {/designs/HA/instances_seq/water_level_r_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{water_level_r[1]}} {/designs/HA/instances_seq/water_level_r_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/water_level_r_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {water_level_r[1]} {/designs/HA/instances_seq/water_level_r_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/water_level_r_reg[1]}
::legacy::set_attribute -quiet original_name {water_level_r[1]/q} {/designs/HA/instances_seq/water_level_r_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{water_level_r[2]}} {/designs/HA/instances_seq/water_level_r_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/water_level_r_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {water_level_r[2]} {/designs/HA/instances_seq/water_level_r_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/water_level_r_reg[2]}
::legacy::set_attribute -quiet original_name {water_level_r[2]/q} {/designs/HA/instances_seq/water_level_r_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name burglar_alarm_out_r /designs/HA/instances_seq/burglar_alarm_out_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/burglar_alarm_out_r_reg
::legacy::set_attribute -quiet single_bit_orig_name burglar_alarm_out_r /designs/HA/instances_seq/burglar_alarm_out_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/burglar_alarm_out_r_reg
::legacy::set_attribute -quiet original_name burglar_alarm_out_r/q /designs/HA/instances_seq/burglar_alarm_out_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name burglar_alarm_out_r/q /designs/HA/instances_seq/burglar_alarm_out_r_reg/pins_out/QN
::legacy::set_attribute -quiet original_name {{light_sensor_r[5]}} {/designs/HA/instances_seq/light_sensor_r_reg[5]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/light_sensor_r_reg[5]}
::legacy::set_attribute -quiet single_bit_orig_name {light_sensor_r[5]} {/designs/HA/instances_seq/light_sensor_r_reg[5]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/light_sensor_r_reg[5]}
::legacy::set_attribute -quiet original_name {light_sensor_r[5]/q} {/designs/HA/instances_seq/light_sensor_r_reg[5]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{light_sensor_r[6]}} {/designs/HA/instances_seq/light_sensor_r_reg[6]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/light_sensor_r_reg[6]}
::legacy::set_attribute -quiet single_bit_orig_name {light_sensor_r[6]} {/designs/HA/instances_seq/light_sensor_r_reg[6]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/light_sensor_r_reg[6]}
::legacy::set_attribute -quiet original_name {light_sensor_r[6]/q} {/designs/HA/instances_seq/light_sensor_r_reg[6]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{light_sensor_r[4]}} {/designs/HA/instances_seq/light_sensor_r_reg[4]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/light_sensor_r_reg[4]}
::legacy::set_attribute -quiet single_bit_orig_name {light_sensor_r[4]} {/designs/HA/instances_seq/light_sensor_r_reg[4]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/light_sensor_r_reg[4]}
::legacy::set_attribute -quiet original_name {light_sensor_r[4]/q} {/designs/HA/instances_seq/light_sensor_r_reg[4]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{light_sensor_r[3]}} {/designs/HA/instances_seq/light_sensor_r_reg[3]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/light_sensor_r_reg[3]}
::legacy::set_attribute -quiet single_bit_orig_name {light_sensor_r[3]} {/designs/HA/instances_seq/light_sensor_r_reg[3]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/light_sensor_r_reg[3]}
::legacy::set_attribute -quiet original_name {light_sensor_r[3]/q} {/designs/HA/instances_seq/light_sensor_r_reg[3]/pins_out/Q}
::legacy::set_attribute -quiet original_name cooler_on_r /designs/HA/instances_seq/cooler_on_r_reg
::legacy::set_attribute -quiet orig_hdl_instantiated false /designs/HA/instances_seq/cooler_on_r_reg
::legacy::set_attribute -quiet single_bit_orig_name cooler_on_r /designs/HA/instances_seq/cooler_on_r_reg
::legacy::set_attribute -quiet gint_phase_inversion false /designs/HA/instances_seq/cooler_on_r_reg
::legacy::set_attribute -quiet original_name cooler_on_r/q /designs/HA/instances_seq/cooler_on_r_reg/pins_out/Q
::legacy::set_attribute -quiet original_name cooler_on_r/q /designs/HA/instances_seq/cooler_on_r_reg/pins_out/QN
::legacy::set_attribute -quiet original_name {{light_sensor_r[1]}} {/designs/HA/instances_seq/light_sensor_r_reg[1]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/light_sensor_r_reg[1]}
::legacy::set_attribute -quiet single_bit_orig_name {light_sensor_r[1]} {/designs/HA/instances_seq/light_sensor_r_reg[1]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/light_sensor_r_reg[1]}
::legacy::set_attribute -quiet original_name {light_sensor_r[1]/q} {/designs/HA/instances_seq/light_sensor_r_reg[1]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{light_sensor_r[2]}} {/designs/HA/instances_seq/light_sensor_r_reg[2]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/light_sensor_r_reg[2]}
::legacy::set_attribute -quiet single_bit_orig_name {light_sensor_r[2]} {/designs/HA/instances_seq/light_sensor_r_reg[2]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/light_sensor_r_reg[2]}
::legacy::set_attribute -quiet original_name {light_sensor_r[2]/q} {/designs/HA/instances_seq/light_sensor_r_reg[2]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{light_sensor_r[7]}} {/designs/HA/instances_seq/light_sensor_r_reg[7]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/light_sensor_r_reg[7]}
::legacy::set_attribute -quiet single_bit_orig_name {light_sensor_r[7]} {/designs/HA/instances_seq/light_sensor_r_reg[7]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/light_sensor_r_reg[7]}
::legacy::set_attribute -quiet original_name {light_sensor_r[7]/q} {/designs/HA/instances_seq/light_sensor_r_reg[7]/pins_out/Q}
::legacy::set_attribute -quiet original_name {{light_sensor_r[0]}} {/designs/HA/instances_seq/light_sensor_r_reg[0]}
::legacy::set_attribute -quiet orig_hdl_instantiated false {/designs/HA/instances_seq/light_sensor_r_reg[0]}
::legacy::set_attribute -quiet single_bit_orig_name {light_sensor_r[0]} {/designs/HA/instances_seq/light_sensor_r_reg[0]}
::legacy::set_attribute -quiet gint_phase_inversion false {/designs/HA/instances_seq/light_sensor_r_reg[0]}
::legacy::set_attribute -quiet original_name {light_sensor_r[0]/q} {/designs/HA/instances_seq/light_sensor_r_reg[0]/pins_out/Q}
# BEGIN PMBIST SECTION
# END PMBIST SECTION
check_dft_rules /designs/HA
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 19.13-s073_1
## flowkit v19.10-s013_1
## Written on 12:08:07 05-Nov 2025
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_flowkit_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_flowkit_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_flowkit_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_flowkit_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_flowkit_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_flowkit_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_flowkit_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_flowkit_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_flowkit_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_flowkit_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_flowkit_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_flowkit_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_flowkit_db flow_template_type {}}
if {[is_attribute flow_template_version -obj_type root]} {set_flowkit_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_flowkit_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_branch -obj_type root]} {set_flowkit_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_flowkit_db flow_caller_data {}}
if {[is_attribute flow_current -obj_type root]} {set_flowkit_db flow_current {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_flowkit_db flow_hier_path {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_flowkit_db flow_db_directory dbs}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_flowkit_db flow_exit_when_done false}
if {[is_attribute flow_history -obj_type root]} {set_flowkit_db flow_history {}}
if {[is_attribute flow_log_directory -obj_type root]} {set_flowkit_db flow_log_directory logs}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_flowkit_db flow_mail_on_error false}
if {[is_attribute flow_mail_to -obj_type root]} {set_flowkit_db flow_mail_to {}}
if {[is_attribute flow_metrics_file -obj_type root]} {set_flowkit_db flow_metrics_file {}}
if {[is_attribute flow_metrics_snapshot_parent_uuid -obj_type root]} {set_flowkit_db flow_metrics_snapshot_parent_uuid {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_flowkit_db flow_metrics_snapshot_uuid {}}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_flowkit_db flow_overwrite_db false}
if {[is_attribute flow_report_directory -obj_type root]} {set_flowkit_db flow_report_directory reports}
if {[is_attribute flow_run_tag -obj_type root]} {set_flowkit_db flow_run_tag {}}
if {[is_attribute flow_schedule -obj_type root]} {set_flowkit_db flow_schedule {}}
if {[is_attribute flow_script -obj_type root]} {set_flowkit_db flow_script {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_flowkit_db flow_starting_db {}}
if {[is_attribute flow_status_file -obj_type root]} {set_flowkit_db flow_status_file {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_flowkit_db flow_step_canonical_current {}}
if {[is_attribute flow_step_current -obj_type root]} {set_flowkit_db flow_step_current {}}
if {[is_attribute flow_step_last -obj_type root]} {set_flowkit_db flow_step_last {}}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_flowkit_db flow_step_last_msg {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_flowkit_db flow_step_last_status not_run}
if {[is_attribute flow_step_next -obj_type root]} {set_flowkit_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_flowkit_db flow_working_directory .}

#############################################################
#####   User Defined Attributes   ###########################

