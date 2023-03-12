
set MaxEnergyNode 0


proc setcluster {} {
	global energylist MaxEnergyNode
	if {$energylist(0)>=$energylist(1) && $energylist(0)>=$energylist(2) && $energylist(0)>=$energylist(3)} {
		set MaxEnergyNode 1
	} elseif {$energylist(1)>=$energylist(0) && $energylist(1)>=$energylist(2) && $energylist(1)>=$energylist(3)} {
		set MaxEnergyNode 2
	} elseif {$energylist(2)>=$energylist(0) && $energylist(2)>=$energylist(1) && $energylist(2)>=$energylist(3)} {
		set MaxEnergyNode 3
	} elseif {$energylist(3)>=$energylist(0) && $energylist(3)>=$energylist(2) && $energylist(3)>=$energylist(1)} {
		set MaxEnergyNode 4
	}
}


proc sendPackets1 {} {
	global ns cbr10 cbr21 cbr31 cbr41 timer energylist n1 n2 n3 n4
	$ns at [expr 0.0+$timer] "$n2 color blue"
	$n2 color "blue"
	$ns at [expr 0.0+$timer] "$n3 color blue"
	$n3 color "blue"
	$ns at [expr 0.0+$timer] "$n4 color blue"
	$n4 color "blue"
	$ns at [expr 0.0+$timer] "$n1 color red"
	$n1 color "red"
	$ns at [expr 0.0+$timer] "$cbr21 start"
	$ns at [expr 0.5+$timer] "$cbr21 stop"
	$ns at [expr 1.0+$timer] "$cbr10 start"
	$ns at [expr 1.5+$timer] "$cbr10 stop"
	$ns at [expr 2.0+$timer] "$cbr31 start"
	$ns at [expr 2.5+$timer] "$cbr31 stop"
	$ns at [expr 3.0+$timer] "$cbr10 start"
	$ns at [expr 3.5+$timer] "$cbr10 stop"
	$ns at [expr 4.0+$timer] "$cbr41 start"
	$ns at [expr 4.2+$timer] "$cbr41 stop"
	$ns at [expr 4.5+$timer] "$cbr10 start"
	$ns at [expr 4.8+$timer] "$cbr10 stop"
	set timer [expr $timer+5.0]
	puts "1 $timer"
	set energylist(0) [expr $energylist(0)-9]

}

proc sendPackets2 {} {
	global ns cbr12 cbr20 cbr32 cbr42 timer energylist n1 n2 n3 n4
	$ns at [expr 0.0+$timer] "$n2 color red"
	$n2 color "red"
	$ns at [expr 0.0+$timer] "$n3 color blue"
	$n3 color "blue"
	$ns at [expr 0.0+$timer] "$n4 color blue"
	$n4 color "blue"
	$ns at [expr 0.0+$timer] "$n1 color blue"
	$n1 color "blue"
	$ns at [expr 0.0+$timer] "$cbr12 start"
	$ns at [expr 0.5+$timer] "$cbr12 stop"
	$ns at [expr 1.0+$timer] "$cbr20 start"
	$ns at [expr 1.5+$timer] "$cbr20 stop"
	$ns at [expr 2.0+$timer] "$cbr32 start"
	$ns at [expr 2.5+$timer] "$cbr32 stop"
	$ns at [expr 3.0+$timer] "$cbr20 start"
	$ns at [expr 3.5+$timer] "$cbr20 stop"
	$ns at [expr 4.0+$timer] "$cbr42 start"
	$ns at [expr 4.5+$timer] "$cbr42 stop"
	$ns at [expr 4.8+$timer] "$cbr20 start"
	$ns at [expr 4.99+$timer] "$cbr20 stop"
	set timer [expr $timer+5.0]
	puts "2 $timer"
	set energylist(1) [expr $energylist(1)-12]

}

proc sendPackets3 {} {
	global ns cbr13 cbr23 cbr30 cbr43 timer energylist n1 n2 n3 n4
	$ns at [expr 0.0+$timer] "$n2 color blue"
	$n2 color "blue"
	$ns at [expr 0.0+$timer] "$n3 color red"
	$n3 color "red"
	$ns at [expr 0.0+$timer] "$n4 color blue"
	$n4 color "blue"
	$ns at [expr 0.0+$timer] "$n1 color blue"
	$n1 color "blue"
	$ns at [expr 0.0+$timer] "$cbr13 start"
	$ns at [expr 0.5+$timer] "$cbr13 stop"
	$ns at [expr 1.0+$timer] "$cbr30 start"
	$ns at [expr 1.5+$timer] "$cbr30 stop"
	$ns at [expr 2.0+$timer] "$cbr23 start"
	$ns at [expr 2.5+$timer] "$cbr23 stop"
	$ns at [expr 3.0+$timer] "$cbr30 start"
	$ns at [expr 3.5+$timer] "$cbr30 stop"
	$ns at [expr 4.0+$timer] "$cbr43 start"
	$ns at [expr 4.2+$timer] "$cbr43 stop"
	$ns at [expr 4.5+$timer] "$cbr30 start"
	$ns at [expr 4.8+$timer] "$cbr30 stop"
	set timer [expr $timer+5.0]
	puts "3 $timer"
	set energylist(2) [expr $energylist(2)-11]

}

proc sendPackets4 {} {
	global ns cbr14 cbr24 cbr34 cbr40 timer energylist n1 n2 n3 n4
	$ns at [expr 0.0+$timer] "$n2 color blue"
	$n2 color "blue"
	$ns at [expr 0.0+$timer] "$n3 color blue"
	$n3 color "blue"
	$ns at [expr 0.0+$timer] "$n4 color red"
	$n4 color "red"
	$ns at [expr 0.0+$timer] "$n1 color blue"
	$n1 color "blue"
	$ns at [expr 0.0+$timer] "$cbr14 start"
	$ns at [expr 0.5+$timer] "$cbr14 stop"
	$ns at [expr 1.0+$timer] "$cbr40 start"
	$ns at [expr 1.5+$timer] "$cbr40 stop"
	$ns at [expr 2.0+$timer] "$cbr24 start"
	$ns at [expr 2.5+$timer] "$cbr24 stop"
	$ns at [expr 3.0+$timer] "$cbr40 start"
	$ns at [expr 3.5+$timer] "$cbr40 stop"
	$ns at [expr 4.0+$timer] "$cbr34 start"
	$ns at [expr 4.2+$timer] "$cbr34 stop"
	$ns at [expr 4.5+$timer] "$cbr40 start"
	$ns at [expr 4.8+$timer] "$cbr40 stop"
	set timer [expr $timer+5.0]
	puts "4 $timer"
	set energylist(3) [expr $energylist(3)-8]

}


proc leach {} {
	global timer timer1 MaxEnergyNode energylist
	while {$timer<50} {
		setcluster
		if [expr $MaxEnergyNode==1] {
			sendPackets1
		} elseif [expr $MaxEnergyNode==2] {
			sendPackets2
		} elseif [expr $MaxEnergyNode==3] {
			sendPackets3
		} elseif [expr $MaxEnergyNode==4] {
			sendPackets4
		}
		puts "$energylist(0) $energylist(1) $energylist(2) $energylist(3) "
	}
}

# leach