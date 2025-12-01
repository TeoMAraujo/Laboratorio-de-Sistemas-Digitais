transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {System.vho}

vcom -93 -work work {/home/paula/github/Laboratorio-de-Sistemas-Digitais/TP/System/tb_System.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L fiftyfivenm -L gate_work -L work -voptargs="+acc"  tb_system

add wave *
view structure
view signals
run -all
