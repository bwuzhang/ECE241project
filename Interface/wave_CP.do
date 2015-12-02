vlib work

vlog Interface.v
vlog Robot24x30.v
vlog BG_New.v
vlog lightSaber.v
vlog jet.v
vlog lord.v
vlog Mouse.v

vsim -L altera_mf_ver -t 1ns controlPath

log {/*}

add wave {/*}

force {clock} 1 1ns, 0 {2ns} -r 2ns



force {startKey} 1
force {resetKey} 1
run 50ns

force {resetKey} 0
run 50ns

force {resetKey} 1
run 50ns

force {startKey} 0
run 50ns

force {startKey} 1
run 500000000ns
