set init_gnd_net VSS
set init_io_file pin_location.io
set init_lef_file gsclib090_translated_ref.lef
set init_mmmc_file rtl_module.view
set init_pwr_net VDD
set init_top_cell HA
set init_verilog synthesised_netlist.v

init_design

setDesignMode -process 90 -flowEffort standard

#/* Sanity check before Floorplanning*/
checkDesign -physicalLibrary; #Sanity check of physical library -lef file
checkDesign -timingLibrary; #Sanity check of timing library 
checkDesign -netlist; #Sanity check of dft netlist
check_timing; #Sanity check of timing reports of min and max path

#/*Floorplanning*/
getIoFlowFlag
setIoFlowFlag 0
#floorplanning die siting according to Innovus LRM
floorPlan -site gsclib090site -r 1 0.5 4.06 4.06 4.06 4.06 

#/*Power Planning to be done by voltus tool*/
# Adding Rings #addRing to create power rings around the core of the design
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer Metal9 -type core_rings -jog_distance 0.435 -threshold 0.435 -nets {VSS VDD} -follow core -stacked_via_bottom_layer Metal1 -layer {bottom Metal8 top Metal8 right Metal9 left Metal9} -width 1.25 -spacing 0.4

# Adding Stripes
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit Metal9 -max_same_layer_jog_length 0.88 -padcore_ring_bottom_layer_limit Metal7 -number_of_sets 10 -skip_via_on_pin Standardcell -stacked_via_top_layer Metal9 -padcore_ring_top_layer_limit Metal9 -spacing 0.4 -merge_stripes_value 0.435 -layer Metal8 -block_ring_bottom_layer_limit Metal7 -width 0.44 -nets {VDD VSS} -stacked_via_bottom_layer Metal1

set delaycal_use_default_delay_limit 1000 
setDelayCalMode -reportOutBound true



