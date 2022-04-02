
# constraints (pzsdr1.b)
# ad9361 (SWAP == 0x0)

set_property  -dict {PACKAGE_PIN  N20  IOSTANDARD LVCMOS25} [get_ports rx_clk_in]      
set_property  -dict {PACKAGE_PIN  U18  IOSTANDARD LVCMOS25} [get_ports rx_frame_in]    
set_property  -dict {PACKAGE_PIN  Y19  IOSTANDARD LVCMOS25} [get_ports rx_data_in[0]]  
set_property  -dict {PACKAGE_PIN  Y18  IOSTANDARD LVCMOS25} [get_ports rx_data_in[1]]  
set_property  -dict {PACKAGE_PIN  V18  IOSTANDARD LVCMOS25} [get_ports rx_data_in[2]]  
set_property  -dict {PACKAGE_PIN  V17  IOSTANDARD LVCMOS25} [get_ports rx_data_in[3]]  
set_property  -dict {PACKAGE_PIN  W20  IOSTANDARD LVCMOS25} [get_ports rx_data_in[4]]  
set_property  -dict {PACKAGE_PIN  V20  IOSTANDARD LVCMOS25} [get_ports rx_data_in[5]]  
set_property  -dict {PACKAGE_PIN  R17  IOSTANDARD LVCMOS25} [get_ports rx_data_in[6]]  
set_property  -dict {PACKAGE_PIN  R16  IOSTANDARD LVCMOS25} [get_ports rx_data_in[7]]  
set_property  -dict {PACKAGE_PIN  W19  IOSTANDARD LVCMOS25} [get_ports rx_data_in[8]]  
set_property  -dict {PACKAGE_PIN  W18  IOSTANDARD LVCMOS25} [get_ports rx_data_in[9]]  
set_property  -dict {PACKAGE_PIN  W16  IOSTANDARD LVCMOS25} [get_ports rx_data_in[10]] 
set_property  -dict {PACKAGE_PIN  V16  IOSTANDARD LVCMOS25} [get_ports rx_data_in[11]] 

set_property  -dict {PACKAGE_PIN  N18  IOSTANDARD LVCMOS25} [get_ports tx_clk_out]     
set_property  -dict {PACKAGE_PIN  Y16  IOSTANDARD LVCMOS25} [get_ports tx_frame_out]   
set_property  -dict {PACKAGE_PIN  Y14  IOSTANDARD LVCMOS25} [get_ports tx_data_out[0]] 
set_property  -dict {PACKAGE_PIN  W14  IOSTANDARD LVCMOS25} [get_ports tx_data_out[1]] 
set_property  -dict {PACKAGE_PIN  U12  IOSTANDARD LVCMOS25} [get_ports tx_data_out[2]] 
set_property  -dict {PACKAGE_PIN  T12  IOSTANDARD LVCMOS25} [get_ports tx_data_out[3]] 
set_property  -dict {PACKAGE_PIN  U15  IOSTANDARD LVCMOS25} [get_ports tx_data_out[4]] 
set_property  -dict {PACKAGE_PIN  U14  IOSTANDARD LVCMOS25} [get_ports tx_data_out[5]] 
set_property  -dict {PACKAGE_PIN  U17  IOSTANDARD LVCMOS25} [get_ports tx_data_out[6]] 
set_property  -dict {PACKAGE_PIN  T16  IOSTANDARD LVCMOS25} [get_ports tx_data_out[7]] 
set_property  -dict {PACKAGE_PIN  W13  IOSTANDARD LVCMOS25} [get_ports tx_data_out[8]] 
set_property  -dict {PACKAGE_PIN  V12  IOSTANDARD LVCMOS25} [get_ports tx_data_out[9]] 
set_property  -dict {PACKAGE_PIN  W15  IOSTANDARD LVCMOS25} [get_ports tx_data_out[10]]
set_property  -dict {PACKAGE_PIN  V15  IOSTANDARD LVCMOS25} [get_ports tx_data_out[11]]

set_property  -dict {PACKAGE_PIN  P19  IOSTANDARD LVCMOS25} [get_ports tx_gnd[0]]      
set_property  -dict {PACKAGE_PIN  P20  IOSTANDARD LVCMOS25} [get_ports tx_gnd[1]]      

# clocks

create_clock -name rx_clk       -period  8 [get_ports rx_clk_in]