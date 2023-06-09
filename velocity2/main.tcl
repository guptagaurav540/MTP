#Simulation parameters setup
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     5                          ;# number of mobilenodes
set val(rp)     AODV                      ;# routing protocol
set val(x)      1000                      ;# X dimension of topography
set val(y)      1000                      ;# Y dimension of topography
set val(stop)   50.0                         ;# time of simulation end
set val(f1)     "abc.tcl"
#  set val(f2)     "mapping.tcl"

#----------> Initialization

#Create a ns simulator
set ns [new Simulator]

#Setup topography object
set topo       [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)

#Open the NS trace file
set tracefile [open out.tr w]
$ns trace-all $tracefile

#Open the NAM trace file
set namfile [open out.nam w]
$ns namtrace-all $namfile
$ns namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];#Create wireless channel

#--------> Mobile node parameter setup
$ns node-config -adhocRouting  $val(rp) \
	-llType        $val(ll) \
	-macType       $val(mac) \
	-ifqType       $val(ifq) \
	-ifqLen        $val(ifqlen) \
	-antType       $val(ant) \
	-propType      $val(prop) \
	-phyType       $val(netif) \
	-channel       $chan \
	-topoInstance  $topo \
	-agentTrace    OFF \
	-routerTrace   OFF \
	-macTrace      ON \
	-movementTrace ON

#---------> Nodes Definition
proc myRand {min max} {
    expr {int(rand() * 100) % ($max + 1 - $min) + $min}
}

source $val(f1)

#  source $val(f2)

#===================================
#        Termination
#===================================
#Define a 'finish' procedure
proc finish {} {
	global ns tracefile namfile
	$ns flush-trace
	close $tracefile
	close $namfile
	exec nam out.nam &
	exit 0
}

# Telling nodes when the simulation ends
# for {set i 0} {$i < $val(nn) } { incr i } {
# 	$ns at $val(stop) "$n($i) reset"
# }


# Telling nodes when the simulation ends
for {set i 0} {$i < $val(nn) } { incr i } {
	$ns at $val(stop) "\$n$i reset"
}

# ending nam and the simulation
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"


$ns run
