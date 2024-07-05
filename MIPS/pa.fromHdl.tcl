
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name MIPS -dir "/media/mraghav22/RAGHAV/CS220Labs/Lab_10A/MIPS/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "MIPS.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {MIPS.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top MIPS $srcset
add_files [list {MIPS.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
