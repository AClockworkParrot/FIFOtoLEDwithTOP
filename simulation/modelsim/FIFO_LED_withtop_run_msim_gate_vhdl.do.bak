transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {FIFO_LED_withtop.vho}

vcom -93 -work work {C:/Projects/Quartus_projects/FIFO_LED_withtop/tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=FIFO_LED_withtop_vhd.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
