#Create a simulator object
set ns [new Simulator]

#Define different colors for data flows
$ns color 1 Blue
$ns color 2 Red
$ns color 3 Green

#Open the nam trace file
set f [open out.tr w] 
$ns trace-all $f 
set nf [open out.nam w]
$ns namtrace-all $nf

#Define a 'finish' procedure
proc finish {} {
        global ns nf
        $ns flush-trace
	#Close the trace file
        close $nf
	#Execute nam on the trace file
        exec nam out.nam &
        exit 0
}

#Attacker node:command and control server

set n0 [$ns node]
$n0 set X_ 383
$n0 set Y_ 886
$n0 set Z_ 0.0
$ns initial_node_pos $n0 20

set n1 [$ns node]
$n1 random-motion 1
$n1 set X_ 777
$n1 set Y_ 915
$n1 set Z_ 0.0
$ns initial_node_pos $n1 20

set n2 [$ns node]
$n2 random-motion 1
$n2 set X_ 793
$n2 set Y_ 335
$n2 set Z_ 0.0
$ns initial_node_pos $n2 20

set n3 [$ns node]
$n3 random-motion 1
$n3 set X_ 386
$n3 set Y_ 492
$n3 set Z_ 0.0
$ns initial_node_pos $n3 20

set n4 [$ns node]
$n4 random-motion 1
$n4 set X_ 649
$n4 set Y_ 421
$n4 set Z_ 0.0
$ns initial_node_pos $n4 20

set n5 [$ns node]
$n5 random-motion 1
$n5 set X_ 362
$n5 set Y_ 27
$n5 set Z_ 0.0
$ns initial_node_pos $n5 20

set n6 [$ns node]
$n6 random-motion 1
$n6 set X_ 690
$n6 set Y_ 59
$n6 set Z_ 0.0
$ns initial_node_pos $n6 20

set n7 [$ns node]
$n7 random-motion 1
$n7 set X_ 763
$n7 set Y_ 926
$n7 set Z_ 0.0
$ns initial_node_pos $n7 20

set n8 [$ns node]
$n8 random-motion 1
$n8 set X_ 540
$n8 set Y_ 426
$n8 set Z_ 0.0
$ns initial_node_pos $n8 20

set n9 [$ns node]
$n9 random-motion 1
$n9 set X_ 172
$n9 set Y_ 736
$n9 set Z_ 0.0
$ns initial_node_pos $n9 20

set n10 [$ns node]
$n10 random-motion 1
$n10 set X_ 211
$n10 set Y_ 368
$n10 set Z_ 0.0
$ns initial_node_pos $n10 20

set n11 [$ns node]
$n11 random-motion 1
$n11 set X_ 567
$n11 set Y_ 429
$n11 set Z_ 0.0
$ns initial_node_pos $n11 20


$n4 color "red"
$n11 shape "hexagon"
$n11 color "red"
$n10 color "brown"

#Call the finish procedure after 5 seconds of simulation time
$ns at 9.5 "finish"

#Run the simulation
$ns run