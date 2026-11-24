# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\pog12\Documents\Vivado\Mult_SOC\mult_soc_vitis\mult_fifo_app_system\_ide\scripts\debugger_mult_fifo_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\pog12\Documents\Vivado\Mult_SOC\mult_soc_vitis\mult_fifo_app_system\_ide\scripts\debugger_mult_fifo_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351BE7AACA" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351BE7AACA-13722093-0"}
fpga -file C:/Users/pog12/Documents/Vivado/Mult_SOC/mult_soc_vitis/mult_fifo_app/_ide/bitstream/mult_bd_fifo_sh_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/pog12/Documents/Vivado/mult_soc_sh/mult_soc_vitis/mult_fifo_plat/export/mult_fifo_plat/hw/mult_bd_fifo_sh_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/pog12/Documents/Vivado/Mult_SOC/mult_soc_vitis/mult_fifo_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/pog12/Documents/Vivado/Mult_SOC/mult_soc_vitis/mult_fifo_app/Debug/mult_fifo_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
