connect -url tcp:127.0.0.1:3121
source C:/Users/zhouzhiwen/Desktop/antsdr_standalone/hdl/projects/antsdr_e310/antsdr_lvds/antsdr_ccbob_lvds.sdk/system_top_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 201706300081"} -index 0
loadhw -hw C:/Users/zhouzhiwen/Desktop/antsdr_standalone/hdl/projects/antsdr_e310/antsdr_lvds/antsdr_ccbob_lvds.sdk/system_top_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 201706300081"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS2 201706300081"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS2 201706300081"} -index 0
dow C:/Users/zhouzhiwen/Desktop/antsdr_standalone/hdl/projects/antsdr_e310/antsdr_lvds/antsdr_ccbob_lvds.sdk/sdr/Debug/sdr.elf
configparams force-mem-access 0
bpadd -addr &main
