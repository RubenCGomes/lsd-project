transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/rubeng/Documents/UAlinux/LSD/lsd-project/project/phase1/RegInput.vhd}

