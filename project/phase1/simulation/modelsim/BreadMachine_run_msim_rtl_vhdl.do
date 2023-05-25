transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/Joao_/Desktop/UA/lsd-project/project/phase1/ControlUnit.vhd}

