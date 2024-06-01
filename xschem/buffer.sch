v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -90 110 -90 {
lab=VDD}
N 90 -70 110 -70 {
lab=IN}
N 90 -50 110 -50 {
lab=VSS}
N 410 -90 430 -90 {
lab=#net1}
N 430 -90 430 -70 {
lab=#net1}
N 780 -90 800 -90 {
lab=OUT}
N 430 -70 480 -70 {
lab=#net1}
C {inverter.sym} 260 -70 0 0 {name=x1}
C {inverter.sym} 630 -70 0 0 {name=x2}
C {devices/iopin.sym} 90 -50 2 0 {name=p1 lab=VSS}
C {devices/iopin.sym} 90 -90 2 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 90 -70 2 1 {name=p3 lab=IN}
C {devices/opin.sym} 800 -90 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} 480 -50 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 480 -90 0 0 {name=p6 sig_type=std_logic lab=VDD}
