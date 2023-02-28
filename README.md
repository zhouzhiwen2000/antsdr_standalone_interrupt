# antsdr_standalone_interrupt
Standalone application based on ADI hdl and no_OS for ANTSDR.  
project file in antsdr_standalone_interrupt/hdl/projects/antsdr_e310/antsdr_lvds/  
Added tx&rx sync feture for use in radar.  
Branch tcp_version holds a radar example where tx and rx is simutanously started to ensure that delay information is not lost.
The matlab script is an example of OFDM Radar using this platform.
