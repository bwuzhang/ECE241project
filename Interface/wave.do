vlib work

vlog Interface.v


vsim Interface

log {/*}

add wave {/*}

add wave /Interface/DP/*
force {CLOCK_50} 1 10ns, 0 {20ns} -r 20ns




force {KEY[0]} 1
run 500ns

force {KEY[0]} 0
run 500ns

force {KEY[0]} 1
run 50000000ns
