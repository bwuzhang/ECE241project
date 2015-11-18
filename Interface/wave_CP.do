vlib work

vlog Interface.v


vsim controlPath

log {/*}

add wave {/*}


force {clock} 1 10ns, 0 {20ns} -r 20ns




force {resetKey} 1
run 500ns

force {resetKey} 0
run 500ns

force {resetKey} 1
run 50000000ns
