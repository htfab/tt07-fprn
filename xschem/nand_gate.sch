v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 -170 280 -150 {
lab=#net1}
N 280 -250 280 -230 {
lab=OUT}
N 280 -270 280 -250 {
lab=OUT}
N 220 -270 280 -270 {
lab=OUT}
N 280 -90 280 -70 {
lab=VSS}
N 280 -270 340 -270 {
lab=OUT}
N 220 -410 340 -410 {
lab=VDD}
N 120 -410 220 -410 {
lab=VDD}
N 120 -260 160 -260 {
lab=A}
N 160 -340 180 -340 {
lab=A}
N 160 -260 160 -200 {
lab=A}
N 160 -200 240 -200 {
lab=A}
N 280 -340 300 -340 {
lab=B}
N 340 -310 340 -270 {
lab=OUT}
N 220 -310 220 -270 {
lab=OUT}
N 280 -340 280 -290 {
lab=B}
N 180 -290 280 -290 {
lab=B}
N 160 -340 160 -260 {
lab=A}
N 120 -240 180 -240 {
lab=B}
N 180 -290 180 -240 {
lab=B}
N 180 -240 180 -120 {
lab=B}
N 180 -120 240 -120 {
lab=B}
N 120 -70 280 -70 {
lab=VSS}
N 280 -250 380 -250 {
lab=OUT}
N 220 -410 220 -370 {
lab=VDD}
N 340 -410 340 -370 {
lab=VDD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 260 -120 0 0 {name=M2
L=0.5
W=0.65
body=VSS
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 200 -340 0 0 {name=M3
L=0.5
W=1
body=VDD
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 120 -70 2 0 {name=p1 lab=VSS}
C {devices/iopin.sym} 120 -410 2 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 120 -240 2 1 {name=p3 lab=B}
C {devices/opin.sym} 380 -250 0 0 {name=p4 lab=OUT}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 260 -200 0 0 {name=M1
L=0.5
W=0.65
body=VSS
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 320 -340 0 0 {name=M4
L=0.5
W=1
body=VDD
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} 120 -260 2 1 {name=p5 lab=A}
C {devices/lab_pin.sym} 280 -120 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -200 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 -340 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 340 -340 0 1 {name=p9 sig_type=std_logic lab=VDD}
