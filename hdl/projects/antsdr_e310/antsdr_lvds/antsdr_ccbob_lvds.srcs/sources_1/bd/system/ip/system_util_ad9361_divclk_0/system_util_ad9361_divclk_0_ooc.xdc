
# This XDC is used only for OOC mode of synthesis, implementation.
# These are default values for timing driven synthesis during OOC flow.
# These values will be overwritten during implementation with information
# from top level.

create_clock -name clk -period 10 [get_ports clk]

################################################################################

