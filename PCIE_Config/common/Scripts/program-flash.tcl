startgroup 
if {![string equal [get_property PROGRAM.HW_CFGMEM_TYPE  [lindex [get_hw_devices xc7a*] 0]] [get_property MEM_TYPE [get_property CFGMEM_PART [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a*] 0]]]]] }  { create_hw_bitstream -hw_device [lindex [get_hw_devices xc7a*] 0] [get_property PROGRAM.HW_CFGMEM_BITFILE [ lindex [get_hw_devices xc7a*] 0]]; program_hw_devices [lindex [get_hw_devices xc7a*] 0]; }; 
program_hw_cfgmem -hw_cfgmem [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a*] 0]]
endgroup
