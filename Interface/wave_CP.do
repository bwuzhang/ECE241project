vlib work

vlog Interface.v
vlog Robot24x30.v
vlog BG.v
vsim -L altera_mf_ver -t 1ns controlPath

log {/*}

add wave {/*}

add wave /controlPath/NP/*
force {clock} 1 10ns, 0 {20ns} -r 20ns




force {resetKey} 1
run 500ns

force {resetKey} 0
run 500ns

force {resetKey} 1
run 50000000ns
