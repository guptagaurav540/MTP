set speed 5.0
set update_direction 15


for {set i 0} {$i < $val(nn) } { incr i } {
	set node_($i) [$ns node]
}


for {set i 0} {$i < $val(nn) } { incr i } {
    $node_($i) set X_ [expr {2+round(rand()*$val(x))}]
    $node_($i) set Y_ [expr {2+round(rand()*$val(x))}]
    $node_($i) set Z_ 0.0
}

for { set t 0 } { [expr $t*$update_direction ] < $val(tt) } {  } {
    for {set i 0} {$i < $val(nn) } { incr i } {
        set x_val [expr {1+round(rand()*($val(x)-2))}]
        set y_val [expr {1+round(rand()*($val(x)-2))}]
        $ns at [expr $t*$update_direction] "$node_($i) setdest $x_val $y_val  $speed"
    }   
    incr t
}


