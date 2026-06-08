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
floorPlan -site gsclib090site -r 1 0.8 4.06 4.06 4.06 4.06 



