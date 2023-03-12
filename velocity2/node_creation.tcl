
proc myRand {min max} {
    set range [expr {$max - $min + 1}]
    return [expr {$min + int(rand() * $range)}]
}

for {set i 0} {$i < $val(nn) } { incr i } {
	set n($i) [$ns node]	
}



for {set i 0} {$i < $val(nn)} { incr i } {
    $n($i) random-motion 1
    $n($i) set X_ [myRand 1 1000] 
    $n($i) set Y_ [myRand 1 1000]
    $n($i) set Z_ 0 
    $ns initial_node_pos $n($i) 20
}

for {set t 0} {$i < $val(stop)} { set t t+10 } {
    for {set i 0} {$i < $val(nn)} { incr i } {
        $ns at $t "$n($i) setdest [myRand 1 1000] [myRand 1 1000] 15.00"

    }
}