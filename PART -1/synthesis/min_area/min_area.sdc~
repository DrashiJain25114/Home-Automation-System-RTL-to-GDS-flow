# Create a clock named clk with a time period of 10 ns
# The clock rises at 0 ns and falls at 2.3 ns
create_clock -name clk -period 10 -waveform {0 2.3} [get_ports clk]

# Set output delay of 0.5 ns
# This means the output signal from the circuit will be valid 0.5 ns after the clock edge
set_output_delay -clock [get_clocks clk] -add_delay 0.8 [all_outputs]

# Set input delay of 1.3 ns
# This means the input signal reaches the circuit 1.3 ns after the clock edge
set_input_delay -clock [get_clocks clk] -add_delay 1.3 [all_inputs]
