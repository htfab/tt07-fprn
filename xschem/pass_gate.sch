v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -340 190 -250 {
lab=UA}
N 190 -340 220 -340 {
lab=UA}
N 190 -250 190 -160 {
lab=UA}
N 190 -160 220 -160 {
lab=UA}
N 280 -340 310 -340 {
lab=UB}
N 310 -340 310 -250 {
lab=UB}
N 280 -160 310 -160 {
lab=UB}
N 310 -250 310 -160 {
lab=UB}
N 310 -250 340 -250 {
lab=UB}
N 160 -250 190 -250 {
lab=UA}
N 160 -100 250 -100 {
lab=EN}
N 250 -120 250 -100 {
lab=EN}
N 160 -400 250 -400 {
lab=ENB}
N 250 -400 250 -380 {
lab=ENB}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 250 -140 3 0 {name=M1
L=0.5
W=6.5
body=VSS
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 250 -360 1 0 {name=M2
L=0.5
W=10
body=VDD
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 160 -70 2 0 {name=p1 lab=VSS}
C {devices/iopin.sym} 160 -430 2 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 160 -250 2 0 {name=p3 lab=UA}
C {devices/iopin.sym} 340 -250 0 0 {name=p4 lab=UB}
C {devices/ipin.sym} 160 -100 2 1 {name=p5 lab=EN}
C {devices/ipin.sym} 160 -400 2 1 {name=p6 lab=ENB}
C {devices/lab_pin.sym} 250 -160 1 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 250 -340 3 0 {name=p8 sig_type=std_logic lab=VDD
}
