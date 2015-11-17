vlib work

vlog Interface.v


vsim nextPosition

log {/*}

add wave {/*}


force {CLOCK_50} 1 10ns, 0 {20ns} -r 20ns


force {clock60hz} 1 1000ns, 0 {2000ns} -r 2000ns


force {enable} 1
force {reset} 1
run 500ns

force {reset} 0
run 5000ns

force {reset} 1
run 5000000ns
