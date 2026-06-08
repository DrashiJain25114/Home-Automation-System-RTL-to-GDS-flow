# ========================================================================
# SYMMETRICAL Pin Assignments for Home Automation Top Module
# Total Pins: 116 (29 pins per side for balanced distribution)
# ========================================================================

# ========================================================================
# EAST SIDE - 29 PINS (Clock, Reset, Temperature & Water Inputs)
# ========================================================================
Pin: clk E
Pin: rst_n E

# Temperature Sensor Inputs (8 pins)
Pin: temp_sensor[0] E
Pin: temp_sensor[1] E
Pin: temp_sensor[2] E
Pin: temp_sensor[3] E
Pin: temp_sensor[4] E
Pin: temp_sensor[5] E
Pin: temp_sensor[6] E
Pin: temp_sensor[7] E

# Temperature Setpoint Inputs (8 pins)
Pin: temp_setpoint[0] E
Pin: temp_setpoint[1] E
Pin: temp_setpoint[2] E
Pin: temp_setpoint[3] E
Pin: temp_setpoint[4] E
Pin: temp_setpoint[5] E
Pin: temp_setpoint[6] E
Pin: temp_setpoint[7] E

# Water Level Inputs (4 pins)
Pin: water_level[0] E
Pin: water_level[1] E
Pin: water_level[2] E
Pin: water_level[3] E

# DFT Test Signals (2 pins)
Pin: scan_en E
Pin: test_mode E

# DFT Scan Data Input (1 pin)
Pin: DFT_sdi_1 E

# ========================================================================
# SOUTH SIDE - 29 PINS (Light, Humidity Sensors & Control Commands)
# ========================================================================

# Light Sensor Inputs (8 pins)
Pin: light_sensor[0] S
Pin: light_sensor[1] S
Pin: light_sensor[2] S
Pin: light_sensor[3] S
Pin: light_sensor[4] S
Pin: light_sensor[5] S
Pin: light_sensor[6] S
Pin: light_sensor[7] S

# Humidity Sensor Inputs (8 pins)
Pin: humidity_sensor[0] S
Pin: humidity_sensor[1] S
Pin: humidity_sensor[2] S
Pin: humidity_sensor[3] S
Pin: humidity_sensor[4] S
Pin: humidity_sensor[5] S
Pin: humidity_sensor[6] S
Pin: humidity_sensor[7] S

# Security Sensors (4 pins)
Pin: motion_sensor S
Pin: door_sensor S
Pin: window_sensor S
Pin: alarm_arm S

# Window Treatment Commands (3 pins)
Pin: window_auto_mode S
Pin: window_manual_open S
Pin: window_manual_close S

# Entertainment Commands (6 pins)
Pin: tv_on_cmd S
Pin: music_on_cmd S
Pin: volume_cmd[0] S
Pin: volume_cmd[1] S
Pin: volume_cmd[2] S
Pin: volume_cmd[3] S

# ========================================================================
# WEST SIDE - 29 PINS (Command Inputs & System Status Outputs)
# ========================================================================

# Visitor Counter Inputs (2 pins)
Pin: entry_sensor W
Pin: exit_sensor W

# Appliance Control Commands (3 pins)
Pin: ac_cmd W
Pin: fan_cmd W
Pin: light_cmd W

# Door Lock Commands (2 pins)
Pin: door_lock_cmd W
Pin: door_unlock_cmd W

# Door Lock PIN Input (4 pins)
Pin: pin_input[0] W
Pin: pin_input[1] W
Pin: pin_input[2] W
Pin: pin_input[3] W

# DFT Scan Input (1 pin)
Pin: DFT_sdi_2 W

# System Status Outputs (8 pins)
Pin: system_status[0] W
Pin: system_status[1] W
Pin: system_status[2] W
Pin: system_status[3] W
Pin: system_status[4] W
Pin: system_status[5] W
Pin: system_status[6] W
Pin: system_status[7] W

# LED Brightness Outputs (8 pins)
Pin: led_brightness[0] W
Pin: led_brightness[1] W
Pin: led_brightness[2] W
Pin: led_brightness[3] W
Pin: led_brightness[4] W
Pin: led_brightness[5] W
Pin: led_brightness[6] W
Pin: led_brightness[7] W

# DFT Scan Output (1 pin)
Pin: DFT_sdo_1 W

# ========================================================================
# NORTH SIDE - 29 PINS (Control Outputs & Visitor Count)
# ========================================================================

# Temperature Controller Outputs (2 pins)
Pin: heater_on N
Pin: cooler_on N

# Water Controller Outputs (2 pins)
Pin: water_pump_on N
Pin: water_valve_close N

# Security Alarm Output (1 pin)
Pin: burglar_alarm_out N

# Visitor Counter Outputs (8 pins)
Pin: visitor_count[0] N
Pin: visitor_count[1] N
Pin: visitor_count[2] N
Pin: visitor_count[3] N
Pin: visitor_count[4] N
Pin: visitor_count[5] N
Pin: visitor_count[6] N
Pin: visitor_count[7] N

# Window Treatment Outputs (2 pins)
Pin: window_state[0] N
Pin: window_state[1] N

# Entertainment System Outputs (6 pins)
Pin: tv_on N
Pin: music_on N
Pin: volume_level[0] N
Pin: volume_level[1] N
Pin: volume_level[2] N
Pin: volume_level[3] N

# Appliance Outputs (3 pins)
Pin: ac_on N
Pin: fan_on N
Pin: lights_on N

# Door Lock Outputs (3 pins)
Pin: door_locked N
Pin: lock_status[0] N
Pin: lock_status[1] N

# HVAC Humidity Outputs (2 pins)
Pin: humidifier_on N
Pin: dehumidifier_on N

# DFT Scan Output (1 pin)
Pin: DFT_sdo_2 N
