# wrls1.tcl
# A 3-node example for ad-hoc simulation with DSDV

# Define options
set val(chan)           Channel/WirelessChannel    	;# channel type
set val(prop)           Propagation/TwoRayGround   	;# radio-propagation model
set val(netif)          Phy/WirelessPhy            	;# network interface type
set val(mac)            Mac/802_11                 	;# MAC type
set val(ifq)            Queue/DropTail/PriQueue    	;# interface queue type
set val(ll)             LL                         	;# link layer type
set val(ant)            Antenna/OmniAntenna        	;# antenna model
set val(ifqlen)         50                         	;# max packet in ifq
set val(nn)             50                         	; # or 15,20,25,20,35,40,45,50,55,60,65 number of mobilenodes
set val(rp)             AODV                       	;# routing protocol
set val(x)              1000   			   			;# X dimension of topography
set val(y)              1000  			   			;# Y dimension of topography  
set val(stop)			160			   				;# time of simulation end
set val(f0)				"node_creation.tcl"
set val(f1)     		"abc1.tcl"
set val(f2)     		"mapping.tcl"

set val(tt)				150


set ns		  	  [new Simulator]
set tracefd       [open simple.tr w]
set windowVsTime2 [open win.tr w] 
set namtrace      [open e5.nam w]    


$ns color 1 blue
$ns color 2 red
$ns color 3 green


$ns trace-all $tracefd
$ns namtrace-all-wireless $namtrace $val(x) $val(y)

# set up topography object
set topo       [new Topography]

$topo load_flatgrid $val(x) $val(y)

create-god $val(nn)

#
#  Create nn mobilenodes [$val(nn)] and attach them to the channel. 
#

# configure the nodes
        $ns node-config -adhocRouting $val(rp) \
			 -llType $val(ll) \
			 -macType $val(mac) \
			 -ifqType $val(ifq) \
			 -ifqLen $val(ifqlen) \
			 -antType $val(ant) \
			 -propType $val(prop) \
			 -phyType $val(netif) \
			 -channelType $val(chan) \
			 -topoInstance $topo \
			 -agentTrace ON \
			 -routerTrace ON \
			 -macTrace OFF \
			 -movementTrace ON 
			 
			 
			#  -energyModel EnergyModel\
			#  -initialEnergy 100
			#  -rxPower 10\
			#  -txPower 10\
			#  -idlePower 50



# for {set i 0} {$i < $val(nn) } { incr i } {
# 	set node_($i) [$ns node]
# }

source $val(f0)

# source $val(f1)



source $val(f2)



proc myRand {min max} {
    expr {int(rand() * 100) % ($max + 1 - $min) + $min}
}


# Define node initial position in nam
for {set i 0} {$i < $val(nn)} { incr i } {
# 30 defines the node size for nam
$ns initial_node_pos $node_($i) 30
}

# Telling nodes when the simulation ends
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "$node_($i) reset";
}

# ending nam and the simulation 
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "stop"
$ns at $val(tt) "puts \"end simulation\" ; $ns halt"
proc stop {} {
    global ns tracefd namtrace
    $ns flush-trace
    close $tracefd
    close $namtrace
}

$ns run

