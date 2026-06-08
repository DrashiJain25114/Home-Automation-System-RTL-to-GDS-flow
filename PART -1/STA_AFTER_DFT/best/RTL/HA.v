module HA (
    input wire clk,          // System Clock
    input wire rst_n,       //Active - low asynchronous reset
    
    // Temperature Controller
    input wire [7:0] temp_sensor,  // current temperature reading 
    input wire [7:0] temp_setpoint,  // desired temperature setpoint
    
    // Water Level Controller
    input wire [3:0] water_level,  // current water level
    
    // Luminosity Controller
    input wire [7:0] light_sensor,  // ambient light sensor reading
    
    // Burglar Alarm
    input wire motion_sensor,
    input wire door_sensor,
    input wire window_sensor,
    input wire alarm_arm,
    
    // Visitor Counter
    input wire entry_sensor,
    input wire exit_sensor,
    
    // Window Treatments
    input wire window_auto_mode,
    input wire window_manual_open,
    input wire window_manual_close,
    
    // Entertainment
    input wire tv_on_cmd,
    input wire music_on_cmd,
    input wire [3:0] volume_cmd,
    
    // Appliances
    input wire ac_cmd,
    input wire fan_cmd,
    input wire light_cmd,
    
    // NEW: Door Lock System
    input wire door_lock_cmd,
    input wire door_unlock_cmd,
    input wire [3:0] pin_input,
    
    // NEW: HVAC Controller
    input wire [7:0] humidity_sensor,
    
    // Outputs
    output wire heater_on,
    output wire cooler_on,
    output wire water_pump_on,
    output wire water_valve_close,
    output wire [7:0] led_brightness,
    output wire burglar_alarm_out,
    output wire [7:0] visitor_count,
    output wire [1:0] window_state,
    output wire tv_on,
    output wire music_on,
    output wire [3:0] volume_level,
    output wire ac_on,
    output wire fan_on,
    output wire lights_on,
    
    // NEW: Door Lock Outputs
    output wire door_locked,
    output wire [1:0] lock_status,
    
    // NEW: HVAC Outputs
    output wire humidifier_on,
    output wire dehumidifier_on,
    
    output wire [7:0] system_status
);

    // INPUT FLIP-FLOPS (Stage 1)
    // Synchronize all external inputs to the system clock domain
    reg [7:0] temp_sensor_r;
    reg [7:0] temp_setpoint_r;
    reg [3:0] water_level_r;
    reg [7:0] light_sensor_r;
    reg motion_sensor_r;
    reg door_sensor_r;
    reg window_sensor_r;
    reg alarm_arm_r;
    reg entry_sensor_r;
    reg exit_sensor_r;
    reg window_auto_mode_r;
    reg window_manual_open_r;
    reg window_manual_close_r;
    reg tv_on_cmd_r;
    reg music_on_cmd_r;
    reg [3:0] volume_cmd_r;
    reg ac_cmd_r;
    reg fan_cmd_r;
    reg light_cmd_r;
    reg door_lock_cmd_r;
    reg door_unlock_cmd_r;
    reg [3:0] pin_input_r;
    reg [7:0] humidity_sensor_r;
    
    // Input synchronization registers
    // clock: posedge clk
    // reset: asynchronous active-low 
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin   // reset all input registers to safe default values
            temp_sensor_r <= 8'd0;
            temp_setpoint_r <= 8'd0;
            water_level_r <= 4'd0;
            light_sensor_r <= 8'd0;
            motion_sensor_r <= 1'b0;
            door_sensor_r <= 1'b0;
            window_sensor_r <= 1'b0;
            alarm_arm_r <= 1'b0;
            entry_sensor_r <= 1'b0;
            exit_sensor_r <= 1'b0;
            window_auto_mode_r <= 1'b0;
            window_manual_open_r <= 1'b0;
            window_manual_close_r <= 1'b0;
            tv_on_cmd_r <= 1'b0;
            music_on_cmd_r <= 1'b0;
            volume_cmd_r <= 4'd0;
            ac_cmd_r <= 1'b0;
            fan_cmd_r <= 1'b0;
            light_cmd_r <= 1'b0;
            door_lock_cmd_r <= 1'b0;
            door_unlock_cmd_r <= 1'b0;
            pin_input_r <= 4'd0;
            humidity_sensor_r <= 8'd0;
        end else begin      //Sample all inputs on rising clock edge
            temp_sensor_r <= temp_sensor;
            temp_setpoint_r <= temp_setpoint;
            water_level_r <= water_level;
            light_sensor_r <= light_sensor;
            motion_sensor_r <= motion_sensor;
            door_sensor_r <= door_sensor;
            window_sensor_r <= window_sensor;
            alarm_arm_r <= alarm_arm;
            entry_sensor_r <= entry_sensor;
            exit_sensor_r <= exit_sensor;
            window_auto_mode_r <= window_auto_mode;
            window_manual_open_r <= window_manual_open;
            window_manual_close_r <= window_manual_close;
            tv_on_cmd_r <= tv_on_cmd;
            music_on_cmd_r <= music_on_cmd;
            volume_cmd_r <= volume_cmd;
            ac_cmd_r <= ac_cmd;
            fan_cmd_r <= fan_cmd;
            light_cmd_r <= light_cmd;
            door_lock_cmd_r <= door_lock_cmd;
            door_unlock_cmd_r <= door_unlock_cmd;
            pin_input_r <= pin_input;
            humidity_sensor_r <= humidity_sensor;
        end
    end

    // INTERNAL WIRES (Submodule Outputs)
    // Connect submodules outputs to output pipeline registers
    wire heater_on_int;
    wire cooler_on_int;
    wire water_pump_on_int;
    wire water_valve_close_int;
    wire [7:0] led_brightness_int;
    wire burglar_alarm_out_int;
    wire [7:0] visitor_count_int;
    wire [1:0] window_state_int;
    wire tv_on_int;
    wire music_on_int;
    wire [3:0] volume_level_int;
    wire ac_on_int;
    wire fan_on_int;
    wire lights_on_int;
    wire door_locked_int;
    wire [1:0] lock_status_int;
    wire humidifier_on_int;
    wire dehumidifier_on_int;

    // SUBMODULE INSTANTIATIONS 
    // Instantiate all functional submodules of the Home automation system
    
    // Temperature Controller
    // maintains temperature at setpoints 
    temperature_controller u_temp_ctrl (
        .clk(clk),
        .rst_n(rst_n),
        .temp_sensor(temp_sensor_r),
        .temp_setpoint(temp_setpoint_r),
        .heater_on(heater_on_int),
        .cooler_on(cooler_on_int)
    );

    // Water Level Controller
    // manages water control level with pump and valve control
    water_level_controller u_water_ctrl (
        .clk(clk),
        .rst_n(rst_n),
        .water_level(water_level_r),
        .pump_on(water_pump_on_int),
        .valve_close(water_valve_close_int)
    );

    // Luminosity Controller
    // adjust led brightness based on ambient light
    luminosity_controller u_lum_ctrl (
        .clk(clk),
        .rst_n(rst_n),
        .light_sensor(light_sensor_r),
        .led_brightness(led_brightness_int)
    );

    // Burglar Alarm
    // Security alarm with multi-sensor input and delay mechanism
    burglar_alarm u_burglar (
        .clk(clk),
        .rst_n(rst_n),
        .motion_sensor(motion_sensor_r),
        .door_sensor(door_sensor_r),
        .window_sensor(window_sensor_r),
        .alarm_arm(alarm_arm_r),
        .alarm_out(burglar_alarm_out_int)
    );

    // Visitor Counter
    // tracks number of people in home using entry/exit sensor 
    visitor_counter u_visitor (
        .clk(clk),
        .rst_n(rst_n),
        .entry_sensor(entry_sensor_r),
        .exit_sensor(exit_sensor_r),
        .count(visitor_count_int)
    );

    // Window Treatments
    window_treatment u_window (
        .clk(clk),
        .rst_n(rst_n),
        .auto_mode(window_auto_mode_r),
        .light_level(light_sensor_r),
        .manual_open(window_manual_open_r),
        .manual_close(window_manual_close_r),
        .window_state(window_state_int)
    );

    // Entertainment System
    // controls TV, music system, and volume levels
    entertainment_system u_entertainment (
        .clk(clk),
        .rst_n(rst_n),
        .tv_on_cmd(tv_on_cmd_r),
        .music_on_cmd(music_on_cmd_r),
        .volume_cmd(volume_cmd_r),
        .tv_on(tv_on_int),
        .music_on(music_on_int),
        .volume_level(volume_level_int)
    );

    // Appliances Controller
    // simple On/Off controller for AC, fan and lights
    appliances_controller u_appliances (
        .clk(clk),
        .rst_n(rst_n),
        .ac_cmd(ac_cmd_r),
        .fan_cmd(fan_cmd_r),
        .light_cmd(light_cmd_r),
        .ac_on(ac_on_int),
        .fan_on(fan_on_int),
        .lights_on(lights_on_int)
    );

    // Door Lock System with FSM
    // Secure door locks 
    door_lock_controller u_door_lock (
        .clk(clk),
        .rst_n(rst_n),
        .lock_cmd(door_lock_cmd_r),
        .unlock_cmd(door_unlock_cmd_r),
        .pin_input(pin_input_r),
        .door_locked(door_locked_int),
        .lock_status(lock_status_int)
    );

    // HVAC Humidity Controller
    // Maintains humidity within comfortable range
    humidity_controller u_humidity (
        .clk(clk),
        .rst_n(rst_n),
        .humidity_sensor(humidity_sensor_r),
        .humidifier_on(humidifier_on_int),
        .dehumidifier_on(dehumidifier_on_int)
    );

    // OUTPUT FLIP-FLOPS (Stage 2)
    // register all module outputs before driving external ports
    reg heater_on_r;
    reg cooler_on_r;
    reg water_pump_on_r;
    reg water_valve_close_r;
    reg [7:0] led_brightness_r;
    reg burglar_alarm_out_r;
    reg [7:0] visitor_count_r;
    reg [1:0] window_state_r;
    reg tv_on_r;
    reg music_on_r;
    reg [3:0] volume_level_r;
    reg ac_on_r;
    reg fan_on_r;
    reg lights_on_r;
    reg door_locked_r;
    reg [1:0] lock_status_r;
    reg humidifier_on_r;
    reg dehumidifier_on_r;
    
    // Output pipeline registers
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            heater_on_r <= 1'b0;
            cooler_on_r <= 1'b0;
            water_pump_on_r <= 1'b0;
            water_valve_close_r <= 1'b0;
            led_brightness_r <= 8'd0;
            burglar_alarm_out_r <= 1'b0;
            visitor_count_r <= 8'd0;
            window_state_r <= 2'b00;
            tv_on_r <= 1'b0;
            music_on_r <= 1'b0;
            volume_level_r <= 4'd0;
            ac_on_r <= 1'b0;
            fan_on_r <= 1'b0;
            lights_on_r <= 1'b0;
            door_locked_r <= 1'b0;
            lock_status_r <= 2'b00;
            humidifier_on_r <= 1'b0;
            dehumidifier_on_r <= 1'b0;
        end else begin
            heater_on_r <= heater_on_int;
            cooler_on_r <= cooler_on_int;
            water_pump_on_r <= water_pump_on_int;
            water_valve_close_r <= water_valve_close_int;
            led_brightness_r <= led_brightness_int;
            burglar_alarm_out_r <= burglar_alarm_out_int;
            visitor_count_r <= visitor_count_int;
            window_state_r <= window_state_int;
            tv_on_r <= tv_on_int;
            music_on_r <= music_on_int;
            volume_level_r <= volume_level_int;
            ac_on_r <= ac_on_int;
            fan_on_r <= fan_on_int;
            lights_on_r <= lights_on_int;
            door_locked_r <= door_locked_int;
            lock_status_r <= lock_status_int;
            humidifier_on_r <= humidifier_on_int;
            dehumidifier_on_r <= dehumidifier_on_int;
        end
    end

    // OUTPUT PORT ASSIGNMENTS
    // Connects output pipeline registers to module ports
    assign heater_on = heater_on_r;
    assign cooler_on = cooler_on_r;
    assign water_pump_on = water_pump_on_r;
    assign water_valve_close = water_valve_close_r;
    assign led_brightness = led_brightness_r;
    assign burglar_alarm_out = burglar_alarm_out_r;
    assign visitor_count = visitor_count_r;
    assign window_state = window_state_r;
    assign tv_on = tv_on_r;
    assign music_on = music_on_r;
    assign volume_level = volume_level_r;
    assign ac_on = ac_on_r;
    assign fan_on = fan_on_r;
    assign lights_on = lights_on_r;
    assign door_locked = door_locked_r;
    assign lock_status = lock_status_r;
    assign humidifier_on = humidifier_on_r;
    assign dehumidifier_on = dehumidifier_on_r;
    
    // System status byte generation
    assign system_status = {
        burglar_alarm_out_r,
        water_pump_on_r,
        door_locked_r,
        ac_on_r,
        fan_on_r,
        lights_on_r,
        heater_on_r,
        cooler_on_r
    };

endmodule


// EXISTING SUB-MODULES

// 1. Temperature Controller
module temperature_controller (
    input wire clk,
    input wire rst_n,
    input wire [7:0] temp_sensor,
    input wire [7:0] temp_setpoint,
    output reg heater_on,
    output reg cooler_on
);
    parameter HYSTERESIS = 8'd2;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            heater_on <= 1'b0;
            cooler_on <= 1'b0;
        end else begin
            if (temp_sensor < (temp_setpoint - HYSTERESIS)) begin
                heater_on <= 1'b1;
                cooler_on <= 1'b0;
            end else if (temp_sensor > (temp_setpoint + HYSTERESIS)) begin
                heater_on <= 1'b0;
                cooler_on <= 1'b1;
            end else if (temp_sensor == temp_setpoint) begin
                heater_on <= 1'b0;
                cooler_on <= 1'b0;
            end
        end
    end
endmodule


// 2. Water Level Controller
module water_level_controller (
    input wire clk,
    input wire rst_n,
    input wire [3:0] water_level,
    output reg pump_on,
    output reg valve_close
);
    parameter LOW_LEVEL = 4'd3;
    parameter HIGH_LEVEL = 4'd12;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pump_on <= 1'b0;
            valve_close <= 1'b0;
        end else begin
            if (water_level < LOW_LEVEL) begin
                pump_on <= 1'b1;
                valve_close <= 1'b0;
            end else if (water_level >= HIGH_LEVEL) begin
                pump_on <= 1'b0;
                valve_close <= 1'b1;
            end else begin
                valve_close <= 1'b0;
            end
        end
    end
endmodule


// 3. Luminosity Controller
module luminosity_controller (
    input wire clk,
    input wire rst_n,
    input wire [7:0] light_sensor,
    output reg [7:0] led_brightness
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            led_brightness <= 8'd0;
        end else begin
            led_brightness <= 8'd255 - light_sensor;
        end
    end
endmodule


// 4. Burglar Alarm
module burglar_alarm (
    input wire clk,
    input wire rst_n,
    input wire motion_sensor,
    input wire door_sensor,
    input wire window_sensor,
    input wire alarm_arm,
    output reg alarm_out
);
    reg [8:0] delay_counter;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            alarm_out <= 1'b0;
            delay_counter <= 9'd0;
        end else begin
            if (alarm_arm && (motion_sensor || door_sensor || window_sensor)) begin
                if (delay_counter < 9'd500) begin
                    delay_counter <= delay_counter + 1'b1;
                end else begin
                    alarm_out <= 1'b1;
                end
            end else begin
                delay_counter <= 9'd0;
                alarm_out <= 1'b0;
            end
        end
    end
endmodule


// 5. Visitor Counter
module visitor_counter (
    input wire clk,
    input wire rst_n,
    input wire entry_sensor,
    input wire exit_sensor,
    output reg [7:0] count
);
    reg entry_prev, exit_prev;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count <= 8'd0;
            entry_prev <= 1'b0;
            exit_prev <= 1'b0;
        end else begin
            entry_prev <= entry_sensor;
            exit_prev <= exit_sensor;
            
            if (entry_sensor && !entry_prev && count < 8'd255) begin
                count <= count + 1'b1;
            end else if (exit_sensor && !exit_prev && count > 8'd0) begin
                count <= count - 1'b1;
            end
        end
    end
endmodule


// 6. Window Treatment
module window_treatment (
    input wire clk,
    input wire rst_n,
    input wire auto_mode,
    input wire [7:0] light_level,
    input wire manual_open,
    input wire manual_close,
    output reg [1:0] window_state
);
    parameter LIGHT_LOW = 8'd50;
    parameter LIGHT_HIGH = 8'd200;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            window_state <= 2'b00;
        end else begin
            if (auto_mode) begin
                if (light_level < LIGHT_LOW) begin
                    window_state <= 2'b10;
                end else if (light_level > LIGHT_HIGH) begin
                    window_state <= 2'b00;
                end else begin
                    window_state <= 2'b01;
                end
            end else begin
                if (manual_open) begin
                    window_state <= 2'b10;
                end else if (manual_close) begin
                    window_state <= 2'b00;
                end
            end
        end
    end
endmodule


// 7. Entertainment System
module entertainment_system (
    input wire clk,
    input wire rst_n,
    input wire tv_on_cmd,
    input wire music_on_cmd,
    input wire [3:0] volume_cmd,
    output reg tv_on,
    output reg music_on,
    output reg [3:0] volume_level
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            tv_on <= 1'b0;
            music_on <= 1'b0;
            volume_level <= 4'd5;
        end else begin
            tv_on <= tv_on_cmd;
            music_on <= music_on_cmd;
            if (volume_cmd != 4'd0) begin
                volume_level <= volume_cmd;
            end
        end
    end
endmodule


// 8. Appliances Controller
module appliances_controller (
    input wire clk,
    input wire rst_n,
    input wire ac_cmd,
    input wire fan_cmd,
    input wire light_cmd,
    output reg ac_on,
    output reg fan_on,
    output reg lights_on
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ac_on <= 1'b0;
            fan_on <= 1'b0;
            lights_on <= 1'b0;
        end else begin
            ac_on <= ac_cmd;
            fan_on <= fan_cmd;
            lights_on <= light_cmd;
        end
    end
endmodule


// NEW MODULES FOR GATE COUNT

// 9. NEW: Door Lock Controller with FSM (Adds ~100 gates)
// 9. FIXED: Door Lock Controller with FSM - Optimized Counter Size
module door_lock_controller (
    input wire clk,
    input wire rst_n,
    input wire lock_cmd,
    input wire unlock_cmd,
    input wire [3:0] pin_input,
    output reg door_locked,
    output reg [1:0] lock_status  // 00: unlocked, 01: locked, 10: wrong PIN, 11: timeout
);
    parameter CORRECT_PIN = 4'd7;  // PIN = 7
    parameter [1:0] UNLOCKED = 2'b00,
                    LOCKED = 2'b01,
                    WRONG_PIN = 2'b10,
                    TIMEOUT = 2'b11;
    
    reg [1:0] state, next_state;
    
    // FIXED: 8-bit counter but max values are 100 and 200
    // 100 requires 7 bits (2^7 = 128)
    // 200 requires 8 bits (2^8 = 256)
    // So 8 bits is correct, but bit[7] is used
    reg [7:0] timeout_counter;
    reg [2:0] attempt_counter;
    
    // FSM State Register
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= UNLOCKED;
            timeout_counter <= 8'd0;
            attempt_counter <= 3'd0;
        end else begin
            state <= next_state;
            
            // Timeout counter for WRONG_PIN state (counts to 100)
            if (state == WRONG_PIN) begin
                if (timeout_counter < 8'd100) begin
                    timeout_counter <= timeout_counter + 1'b1;
                end else begin
                    timeout_counter <= 8'd0;
                end
            // Timeout counter for TIMEOUT state (counts to 200)
            end else if (state == TIMEOUT) begin
                if (timeout_counter < 8'd200) begin
                    timeout_counter <= timeout_counter + 1'b1;
                end else begin
                    timeout_counter <= 8'd0;
                end
            end else begin
                timeout_counter <= 8'd0;
            end
            
            // Attempt counter
            if (state == LOCKED && unlock_cmd && pin_input != CORRECT_PIN) begin
                if (attempt_counter < 3'd5) begin
                    attempt_counter <= attempt_counter + 1'b1;
                end
            end else if (state == LOCKED && unlock_cmd && pin_input == CORRECT_PIN) begin
                attempt_counter <= 3'd0;
            end else if (state == UNLOCKED) begin
                attempt_counter <= 3'd0;
            end
        end
    end
    
    // FSM Next State Logic
    always @(*) begin
        next_state = state;
        case (state)
            UNLOCKED: begin
                if (lock_cmd) begin
                    next_state = LOCKED;
                end
            end
            
            LOCKED: begin
                if (unlock_cmd) begin
                    if (pin_input == CORRECT_PIN) begin
                        next_state = UNLOCKED;
                    end else begin
                        if (attempt_counter >= 3'd3) begin
                            next_state = TIMEOUT;
                        end else begin
                            next_state = WRONG_PIN;
                        end
                    end
                end
            end
            
            WRONG_PIN: begin
                if (timeout_counter >= 8'd100) begin
                    next_state = LOCKED;
                end
            end
            
            TIMEOUT: begin
                if (timeout_counter >= 8'd200) begin
                    next_state = LOCKED;
                end
            end
            
            default: next_state = UNLOCKED;
        endcase
    end
    
    // Output Logic
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            door_locked <= 1'b0;
            lock_status <= UNLOCKED;
        end else begin
            lock_status <= state;
            door_locked <= (state == LOCKED || state == WRONG_PIN || state == TIMEOUT);
        end
    end
endmodule
// 10. NEW: Humidity Controller (Adds ~40 gates)
module humidity_controller (
    input wire clk,
    input wire rst_n,
    input wire [7:0] humidity_sensor,
    output reg humidifier_on,
    output reg dehumidifier_on
);
    parameter HUMID_LOW = 8'd40;
    parameter HUMID_HIGH = 8'd60;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            humidifier_on <= 1'b0;
            dehumidifier_on <= 1'b0;
        end else begin
            if (humidity_sensor < HUMID_LOW) begin
                humidifier_on <= 1'b1;
                dehumidifier_on <= 1'b0;
            end else if (humidity_sensor > HUMID_HIGH) begin
                humidifier_on <= 1'b0;
                dehumidifier_on <= 1'b1;
            end else begin
                humidifier_on <= 1'b0;
                dehumidifier_on <= 1'b0;
            end
        end
    end
endmodule
