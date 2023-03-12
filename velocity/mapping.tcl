set x 1000
set y 1000
set box_size 100

set recompute_time 50

for { set t 0} { [expr $t*$recompute_time] <$val(tt)} {incr t} {

    puts [expr $t*$recompute_time]

    for {set i 0} {$i < [expr int($x / $box_size)]} {incr i} {
        for {set j 0} {$j < [expr int($y / $box_size)]} {incr j} {
            list map($i,$j) 
            set map($i,$j) {-1}
        }
    }


    for {set i 0} {$i < $val(nn)} {incr i} {
        set Locationx [$ns at [expr $t*$recompute_time] "$node_($i) set X_ "]
        set Locationy [$ns at [expr $t*$recompute_time] "$node_($i) set X_ "]
        puts -nonewline $i 
        puts -nonewline " "
        
        puts -nonewline [$ns at [expr $t*$recompute_time] "$node_($i) set X_ "]
        
        puts -nonewline " "
        puts -nonewline [$ns at [expr $t*$recompute_time] "$node_($i) set X_ "]
        puts "\n"
        lappend map([expr int ($Locationx/$box_size)],[expr int ($Locationy/$box_size)]) $i
    }

    set clus 1
    for {set i 0} {$i < [expr int($x / $box_size)]} {incr i} {
        for {set j 0} {$j < [expr int($y / $box_size)]} {incr j} {
            set l [llength $map($i,$j)]
        
            set r $i 
            set g $j
            set b [expr $i+$j]
            if { $l != 1 } {
        
                #  puts -nonewline $map($i,$j)
                #  puts -nonewline " "
                
                puts -nonewline $clus
                puts -nonewline "-> "
                    
                for {set k 1} {$k<$l} {incr k} {
                    puts -nonewline [lindex $map($i,$j) $k]      
                    puts -nonewline " "
                    #  $ns at 0.000 "$node_($i) color red"
                }

                
                puts ""
            }
            incr clus
       }
    }




}