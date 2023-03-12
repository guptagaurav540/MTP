#!/usr/bin/wish

canvas .myCanvas -background red -width 200 -height 200 
pack .myCanvas
.myCanvas create arc 10 10 50 50 -fill yellow
.myCanvas create line 10 30 50 50 100 10 -arrow both -fill yellow -smooth true
   -splinesteps 2
.myCanvas create oval 50 50 100 80 -fill yellow
.myCanvas create polygon 50 150 100 80 120 120 100 190 -fill yellow -outline green
.myCanvas create rectangle 150 150 170 170  -fill yellow
.myCanvas create text 170 20 -fill yellow -text "Hello" -font {Helvetica -18 bold}
.myCanvas create bitmap 180 50 -bitmap info