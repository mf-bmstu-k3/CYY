onerror {exit -code 1}
vlib work
vlog -work work CYY.vo
vlog -work work test_CYY.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CYY_vlg_vec_tst -voptargs="+acc"
vcd file -direction CYY_AU_OP.msim.vcd
vcd add -internal CYY_vlg_vec_tst/*
vcd add -internal CYY_vlg_vec_tst/i1/*
run -all
quit -f
