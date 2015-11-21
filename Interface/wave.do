vlib work

vlog Interface.v

vlog Robot24x30.v
vlog BG.v
vlog BGbuffer.v
vsim -L altera_mf_ver -t 1ns Interface

log {/*}

add wave {/*}

add wave /Interface/DP/*
add wave /Interface/CP/*
force {CLOCK_50} 1 10ns, 0 {20ns} -r 20ns




force {KEY[0]} 1
run 500ns

force {KEY[0]} 0
run 500ns

force {KEY[0]} 1
run 50000000ns
