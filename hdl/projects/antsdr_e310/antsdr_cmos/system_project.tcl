
source ../../scripts/adi_env.tcl
source $ad_hdl_dir/projects/scripts/adi_project_xilinx.tcl
source $ad_hdl_dir/projects/scripts/adi_board.tcl

set p_device "xc7z020clg400-2"
adi_project antsdr_ccbob_cmos
adi_project_files antsdr_ccbob_cmos [list \
  "$ad_hdl_dir/library/xilinx/common/ad_iobuf.v" \
  "../common/antsdr_constr.xdc" \
  "../common/antsdr_constr_cmos.xdc" \
  "../common/ccbob_constr.xdc" \
  "system_top.v" ]

adi_project_run antsdr_ccbob_cmos
source $ad_hdl_dir/library/axi_ad9361/axi_ad9361_delay.tcl

