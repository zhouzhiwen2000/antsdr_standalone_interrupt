vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_4
vlib modelsim_lib/msim/processing_system7_vip_v1_0_6
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_iic_v2_0_21
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/util_vector_logic_v2_0_1
vlib modelsim_lib/msim/xlconstant_v1_1_5
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_18
vlib modelsim_lib/msim/fifo_generator_v13_2_3
vlib modelsim_lib/msim/axi_data_fifo_v2_1_17
vlib modelsim_lib/msim/axi_crossbar_v2_1_19
vlib modelsim_lib/msim/util_reduced_logic_v2_0_4
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_18

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 modelsim_lib/msim/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 modelsim_lib/msim/processing_system7_vip_v1_0_6
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_iic_v2_0_21 modelsim_lib/msim/axi_iic_v2_0_21
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1
vmap xlconstant_v1_1_5 modelsim_lib/msim/xlconstant_v1_1_5
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 modelsim_lib/msim/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 modelsim_lib/msim/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 modelsim_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 modelsim_lib/msim/axi_crossbar_v2_1_19
vmap util_reduced_logic_v2_0_4 modelsim_lib/msim/util_reduced_logic_v2_0_4
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_protocol_converter_v2_1_18 modelsim_lib/msim/axi_protocol_converter_v2_1_18

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_sys_ps7_0/sim/system_sys_ps7_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_0_21 -64 -93 \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/304c/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_iic_main_0/sim/system_axi_iic_main_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_sys_concat_intc_0/sim/system_sys_concat_intc_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_sys_rstgen_0/sim/system_sys_rstgen_0.vhd" \

vlog -work util_vector_logic_v2_0_1 -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_sys_logic_inv_0/sim/system_sys_logic_inv_0.v" \
"../../../bd/system/ipshared/4420/axi_sysid.v" \
"../../../bd/system/ipshared/common/up_axi.v" \
"../../../bd/system/ip/system_axi_sysid_0_0/sim/system_axi_sysid_0_0.v" \
"../../../bd/system/ipshared/2ee7/sysid_rom.v" \
"../../../bd/system/ip/system_rom_sys_0_0/sim/system_rom_sys_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_GND_1_0/sim/system_GND_1_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
"../../../bd/system/ipshared/common/ad_addsub.v" \
"../../../bd/system/ipshared/xilinx/common/ad_data_clk.v" \
"../../../bd/system/ipshared/xilinx/common/ad_data_in.v" \
"../../../bd/system/ipshared/xilinx/common/ad_data_out.v" \
"../../../bd/system/ipshared/common/ad_datafmt.v" \
"../../../bd/system/ipshared/xilinx/common/ad_dcfilter.v" \
"../../../bd/system/ipshared/common/ad_dds.v" \
"../../../bd/system/ipshared/common/ad_dds_1.v" \
"../../../bd/system/ipshared/common/ad_dds_2.v" \
"../../../bd/system/ipshared/common/ad_dds_cordic_pipe.v" \
"../../../bd/system/ipshared/common/ad_dds_sine.v" \
"../../../bd/system/ipshared/common/ad_dds_sine_cordic.v" \
"../../../bd/system/ipshared/common/ad_iqcor.v" \
"../../../bd/system/ipshared/xilinx/common/ad_mul.v" \
"../../../bd/system/ipshared/common/ad_pnmon.v" \
"../../../bd/system/ipshared/common/ad_pps_receiver.v" \
"../../../bd/system/ipshared/common/ad_rst.v" \
"../../../bd/system/ipshared/common/ad_tdd_control.v" \
"../../../bd/system/ipshared/dc36/xilinx/axi_ad9361_cmos_if.v" \
"../../../bd/system/ipshared/dc36/xilinx/axi_ad9361_lvds_if.v" \
"../../../bd/system/ipshared/dc36/axi_ad9361_rx.v" \
"../../../bd/system/ipshared/dc36/axi_ad9361_rx_channel.v" \
"../../../bd/system/ipshared/dc36/axi_ad9361_rx_pnmon.v" \
"../../../bd/system/ipshared/dc36/axi_ad9361_tdd.v" \
"../../../bd/system/ipshared/dc36/axi_ad9361_tdd_if.v" \
"../../../bd/system/ipshared/dc36/axi_ad9361_tx.v" \
"../../../bd/system/ipshared/dc36/axi_ad9361_tx_channel.v" \
"../../../bd/system/ipshared/common/up_adc_channel.v" \
"../../../bd/system/ipshared/common/up_adc_common.v" \
"../../../bd/system/ipshared/common/up_clock_mon.v" \
"../../../bd/system/ipshared/common/up_dac_channel.v" \
"../../../bd/system/ipshared/common/up_dac_common.v" \
"../../../bd/system/ipshared/common/up_delay_cntrl.v" \
"../../../bd/system/ipshared/common/up_tdd_cntrl.v" \
"../../../bd/system/ipshared/common/up_xfer_cntrl.v" \
"../../../bd/system/ipshared/common/up_xfer_status.v" \
"../../../bd/system/ipshared/dc36/axi_ad9361.v" \
"../../../bd/system/ip/system_axi_ad9361_0/sim/system_axi_ad9361_0.v" \
"../../../bd/system/ipshared/common/util_pulse_gen.v" \
"../../../bd/system/ipshared/bfea/util_tdd_sync.v" \
"../../../bd/system/ip/system_util_ad9361_tdd_sync_0/sim/system_util_ad9361_tdd_sync_0.v" \
"../../../bd/system/ip/system_util_ad9361_divclk_sel_concat_0/sim/system_util_ad9361_divclk_sel_concat_0.v" \

vlog -work util_reduced_logic_v2_0_4 -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/4c94/hdl/util_reduced_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_util_ad9361_divclk_sel_0/sim/system_util_ad9361_divclk_sel_0.v" \
"../../../bd/system/common/ad_perfect_shuffle.v" \
"../../../bd/system/ipshared/util_pack_common/pack_ctrl.v" \
"../../../bd/system/ipshared/util_pack_common/pack_interconnect.v" \
"../../../bd/system/ipshared/util_pack_common/pack_network.v" \
"../../../bd/system/ipshared/util_pack_common/pack_shell.v" \
"../../../bd/system/ipshared/1a0a/util_cpack2_impl.v" \
"../../../bd/system/ipshared/1a0a/util_cpack2.v" \
"../../../bd/system/ip/system_util_ad9361_adc_pack_0/sim/system_util_ad9361_adc_pack_0.v" \
"../../../bd/system/ipshared/2b57/sync_bits.v" \
"../../../bd/system/ipshared/2b57/sync_data.v" \
"../../../bd/system/ipshared/2b57/sync_event.v" \
"../../../bd/system/ipshared/2b57/sync_gray.v" \
"../../../bd/system/ipshared/common/ad_mem.v" \
"../../../bd/system/ipshared/d07d/address_gray_pipelined.v" \
"../../../bd/system/ipshared/d07d/address_sync.v" \
"../../../bd/system/ipshared/d07d/util_axis_fifo.v" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_ad9361_adc_dma_0/sim/system_axi_ad9361_adc_dma_0_pkg.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ipshared/a45c/2d_transfer.v" \
"../../../bd/system/ipshared/common/ad_mem_asym.v" \
"../../../bd/system/ipshared/a45c/address_generator.v" \
"../../../bd/system/ipshared/a45c/axi_dmac_burst_memory.v" \
"../../../bd/system/ipshared/a45c/axi_dmac_regmap.v" \
"../../../bd/system/ipshared/a45c/axi_dmac_regmap_request.v" \
"../../../bd/system/ipshared/a45c/axi_dmac_reset_manager.v" \
"../../../bd/system/ipshared/a45c/axi_dmac_resize_dest.v" \
"../../../bd/system/ipshared/a45c/axi_dmac_resize_src.v" \
"../../../bd/system/ipshared/a45c/axi_dmac_response_manager.v" \
"../../../bd/system/ipshared/a45c/axi_dmac_transfer.v" \
"../../../bd/system/ipshared/a45c/axi_register_slice.v" \
"../../../bd/system/ipshared/a45c/data_mover.v" \
"../../../bd/system/ipshared/a45c/dest_axi_mm.v" \
"../../../bd/system/ipshared/a45c/dest_axi_stream.v" \
"../../../bd/system/ipshared/a45c/dest_fifo_inf.v" \
"../../../bd/system/ipshared/a45c/request_arb.v" \
"../../../bd/system/ipshared/a45c/request_generator.v" \
"../../../bd/system/ipshared/a45c/response_generator.v" \
"../../../bd/system/ipshared/a45c/response_handler.v" \
"../../../bd/system/ipshared/a45c/splitter.v" \
"../../../bd/system/ipshared/a45c/src_axi_mm.v" \
"../../../bd/system/ipshared/a45c/src_axi_stream.v" \
"../../../bd/system/ipshared/a45c/src_fifo_inf.v" \
"../../../bd/system/ipshared/a45c/axi_dmac.v" \
"../../../bd/system/ip/system_axi_ad9361_adc_dma_0/sim/system_axi_ad9361_adc_dma_0.v" \
"../../../bd/system/ipshared/50d4/util_upack2_impl.v" \
"../../../bd/system/ipshared/50d4/util_upack2.v" \
"../../../bd/system/ip/system_util_ad9361_dac_upack_0/sim/system_util_ad9361_dac_upack_0.v" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_ad9361_dac_dma_0/sim/system_axi_ad9361_dac_dma_0_pkg.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_ad9361_dac_dma_0/sim/system_axi_ad9361_dac_dma_0.v" \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/bd_0/sim/bd_31bd.v" \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_0/sim/bd_31bd_one_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_1/sim/bd_31bd_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_2/sim/bd_31bd_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_3/sim/bd_31bd_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_4/sim/bd_31bd_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_5/sim/bd_31bd_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_6/sim/bd_31bd_sawn_0.sv" \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_7/sim/bd_31bd_swn_0.sv" \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_8/sim/bd_31bd_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_9/sim/bd_31bd_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_10/sim/bd_31bd_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_hp1_interconnect_0/sim/system_axi_hp1_interconnect_0.v" \
"../../../bd/system/ip/system_axi_hp2_interconnect_0/bd_0/sim/bd_c0fd.v" \
"../../../bd/system/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_0/sim/bd_c0fd_one_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_1/sim/bd_c0fd_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_2/sim/bd_c0fd_s00mmu_0.sv" \
"../../../bd/system/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_3/sim/bd_c0fd_s00tr_0.sv" \
"../../../bd/system/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_4/sim/bd_c0fd_s00sic_0.sv" \
"../../../bd/system/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_5/sim/bd_c0fd_s00a2s_0.sv" \
"../../../bd/system/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_6/sim/bd_c0fd_sarn_0.sv" \
"../../../bd/system/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_7/sim/bd_c0fd_srn_0.sv" \
"../../../bd/system/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_8/sim/bd_c0fd_m00s2a_0.sv" \
"../../../bd/system/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_9/sim/bd_c0fd_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_hp2_interconnect_0/sim/system_axi_hp2_interconnect_0.v" \
"../../../bd/system/ipshared/62cc/axi_gpreg_clock_mon.v" \
"../../../bd/system/ipshared/62cc/axi_gpreg_io.v" \
"../../../bd/system/ipshared/62cc/axi_gpreg.v" \
"../../../bd/system/ip/system_axi_gpreg_0/sim/system_axi_gpreg_0.v" \
"../../../bd/system/sim/system.v" \
"../../../bd/system/ip/system_sync_gen_0_0/sim/system_sync_gen_0_0.v" \
"../../../bd/system/ip/system_util_vector_logic_0_0/sim/system_util_vector_logic_0_0.v" \
"../../../bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_1.v" \
"../../../bd/system/ip/system_ila_0_1/sim/system_ila_0_1.v" \
"../../../bd/system/ipshared/469c/hdl/axi_delay_counter_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/469c/hdl/delay_counter.v" \
"../../../bd/system/ipshared/469c/hdl/axi_delay_counter_v1_0.v" \
"../../../bd/system/ip/system_axi_delay_counter_0_0/sim/system_axi_delay_counter_0_0.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/979d/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/85a3" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ip/system_sys_ps7_0" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/a45c" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../antsdr_ccbob_lvds.srcs/sources_1/bd/system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

