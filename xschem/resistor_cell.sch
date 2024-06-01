v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -110 250 -110 {
lab=UA}
N 190 -240 190 -110 {
lab=UA}
N 190 -240 250 -240 {
lab=UA}
N 190 -370 190 -240 {
lab=UA}
N 190 -370 250 -370 {
lab=UA}
N 170 -130 250 -130 {
lab=GATE}
N 170 -260 170 -130 {
lab=GATE}
N 170 -260 250 -260 {
lab=GATE}
N 170 -390 170 -260 {
lab=GATE}
N 170 -390 250 -390 {
lab=GATE}
N 140 -110 190 -110 {
lab=UA}
N 140 -130 170 -130 {
lab=GATE}
N 140 -150 250 -150 {
lab=D_RES}
N 140 -280 250 -280 {
lab=D_SHORT}
N 140 -410 250 -410 {
lab=D_LINE}
N 630 -150 650 -150 {
lab=UB}
N 650 -280 650 -150 {
lab=UB}
N 650 -230 690 -230 {
lab=UB}
N 550 -150 570 -150 {
lab=#net1}
N 550 -280 650 -280 {
lab=UB}
N 550 -410 690 -410 {
lab=LINE}
C {latched_switch.sym} 400 -130 0 0 {name=x1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 600 -150 1 0 {name=R1
W=0.35
L=8.75
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {latched_switch.sym} 400 -260 0 0 {name=x2}
C {latched_switch.sym} 400 -390 0 0 {name=x3}
C {devices/iopin.sym} 140 -90 0 1 {name=p1 lab=VSS}
C {devices/iopin.sym} 690 -230 0 0 {name=p2 lab=UB}
C {devices/lab_pin.sym} 250 -90 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 140 -110 0 1 {name=p4 lab=UA}
C {devices/lab_pin.sym} 250 -220 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 250 -350 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 250 -170 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 250 -300 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 250 -430 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 140 -130 0 0 {name=p10 lab=GATE}
C {devices/ipin.sym} 140 -150 0 0 {name=p11 lab=D_RES}
C {devices/ipin.sym} 140 -280 0 0 {name=p12 lab=D_SHORT}
C {devices/ipin.sym} 140 -410 0 0 {name=p13 lab=D_LINE}
C {devices/lab_pin.sym} 600 -170 1 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 690 -410 0 0 {name=p15 lab=LINE}
C {devices/iopin.sym} 140 -430 0 1 {name=p16 lab=VDD}
C {ignore.sym} 550 -170 0 0 {name=l1}
C {ignore.sym} 550 -300 0 0 {name=l2}
C {ignore.sym} 550 -430 0 0 {name=l3}
