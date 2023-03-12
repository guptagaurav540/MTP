set x 1000
set y 1000
set box_size 100




for {set i 0} {$i < [expr int($x / $box_size)]} {incr i} {
    for {set j 0} {$j < [expr int($y / $box_size)]} {incr j} {
        list map($i,$j) 
        lappend map($i,$j) {-1}
    }
}


for {set i 0} {$i < $val(nn)} {incr i} {
    set Locationx [$n$i set X_ ]
    set Locationy [$n$i set Y_ ]
    lappend map([expr int ($Locationx/$box_size)],[expr int ($Locationy/$box_size)]) $i
}




# for {set i 0} {$i < [expr int($x / $box_size)]} {incr i} {
#     for {set j 0} {$j < [expr int($y / $box_size)]} {incr j} {
#         set l [llength $map($i,$j)]
       
#         # set r $i 
#         # set g $j
#         # set b [expr $i+$j]
#         if { $l != 1 } {
       
#              puts -nonewline $map($i,$j)
#              puts -nonewline " "
#             # for {set k 1} {$k<$l} {incr k} {
#             #     $ns at 0.000 "$node_($i) color red"
#             # }
#         }
#    }
# }




