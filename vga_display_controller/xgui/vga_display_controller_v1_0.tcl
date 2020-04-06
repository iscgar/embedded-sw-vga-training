# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "G_VGA_RED_WIDTH"
  ipgui::add_param $IPINST -name "G_VGA_GREEN_WIDTH"
  ipgui::add_param $IPINST -name "G_VGA_BLUE_WIDTH"

}

proc update_PARAM_VALUE.G_S_AXI_DATA_WIDTH { PARAM_VALUE.G_S_AXI_DATA_WIDTH } {
	# Procedure called to update G_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_S_AXI_DATA_WIDTH { PARAM_VALUE.G_S_AXI_DATA_WIDTH } {
	# Procedure called to validate G_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.G_VGA_BLUE_WIDTH { PARAM_VALUE.G_VGA_BLUE_WIDTH } {
	# Procedure called to update G_VGA_BLUE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_VGA_BLUE_WIDTH { PARAM_VALUE.G_VGA_BLUE_WIDTH } {
	# Procedure called to validate G_VGA_BLUE_WIDTH
	return true
}

proc update_PARAM_VALUE.G_VGA_GREEN_WIDTH { PARAM_VALUE.G_VGA_GREEN_WIDTH } {
	# Procedure called to update G_VGA_GREEN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_VGA_GREEN_WIDTH { PARAM_VALUE.G_VGA_GREEN_WIDTH } {
	# Procedure called to validate G_VGA_GREEN_WIDTH
	return true
}

proc update_PARAM_VALUE.G_VGA_RED_WIDTH { PARAM_VALUE.G_VGA_RED_WIDTH } {
	# Procedure called to update G_VGA_RED_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.G_VGA_RED_WIDTH { PARAM_VALUE.G_VGA_RED_WIDTH } {
	# Procedure called to validate G_VGA_RED_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.G_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.G_S_AXI_DATA_WIDTH PARAM_VALUE.G_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.G_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.G_VGA_RED_WIDTH { MODELPARAM_VALUE.G_VGA_RED_WIDTH PARAM_VALUE.G_VGA_RED_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_VGA_RED_WIDTH}] ${MODELPARAM_VALUE.G_VGA_RED_WIDTH}
}

proc update_MODELPARAM_VALUE.G_VGA_GREEN_WIDTH { MODELPARAM_VALUE.G_VGA_GREEN_WIDTH PARAM_VALUE.G_VGA_GREEN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_VGA_GREEN_WIDTH}] ${MODELPARAM_VALUE.G_VGA_GREEN_WIDTH}
}

proc update_MODELPARAM_VALUE.G_VGA_BLUE_WIDTH { MODELPARAM_VALUE.G_VGA_BLUE_WIDTH PARAM_VALUE.G_VGA_BLUE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.G_VGA_BLUE_WIDTH}] ${MODELPARAM_VALUE.G_VGA_BLUE_WIDTH}
}

