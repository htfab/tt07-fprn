v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 140 -1160 940 -760 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=ANALOG_PIN
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
C {mini_grid.sym} 1000 -220 0 0 {name=x1}
C {devices/lab_pin.sym} 1150 -230 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 850 -170 0 0 {name=p3 sig_type=std_logic lab=H_GATE_2}
C {devices/lab_pin.sym} 850 -190 0 0 {name=p4 sig_type=std_logic lab=H_GATE_1
}
C {devices/lab_pin.sym} 850 -210 0 0 {name=p5 sig_type=std_logic lab=H_GATE_0
}
C {devices/lab_pin.sym} 850 -230 0 0 {name=p6 sig_type=std_logic lab=V_GATE_2}
C {devices/lab_pin.sym} 850 -250 0 0 {name=p7 sig_type=std_logic lab=V_GATE_1
}
C {devices/lab_pin.sym} 850 -270 0 0 {name=p8 sig_type=std_logic lab=V_GATE_0}
C {devices/lab_pin.sym} 850 -290 0 0 {name=p9 sig_type=std_logic lab=HD_RES
}
C {devices/lab_pin.sym} 850 -310 0 0 {name=p10 sig_type=std_logic lab=HD_SHORT
}
C {devices/lab_pin.sym} 850 -330 0 0 {name=p11 sig_type=std_logic lab=HD_LINE
}
C {devices/lab_pin.sym} 850 -350 0 0 {name=p12 sig_type=std_logic lab=VD_RES
}
C {devices/lab_pin.sym} 850 -370 0 0 {name=p13 sig_type=std_logic lab=VD_SHORT
}
C {devices/lab_pin.sym} 850 -390 0 0 {name=p14 sig_type=std_logic lab=VD_LINE
}
C {devices/lab_pin.sym} 1150 -390 0 1 {name=p15 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1150 -370 0 1 {name=p16 sig_type=std_logic lab=ANALOG_PIN
}
C {devices/code_shown.sym} 40 -480 0 0 {name=STIMULI only_toplevel=false value="V1 VSS GND 0.0
V2 VDD GND 1.8
V3 VD_LINE GND 0.0
V4 VD_SHORT GND 0.0
V5 VD_RES GND 1.8
V6 HD_LINE GND 0.0
V7 HD_SHORT GND 0.0
V8 HD_RES GND 1.8
V9 V_GATE_0 GND 1.8
V10 V_GATE_1 GND 1.8
V11 V_GATE_2 GND 1.8
V12 H_GATE_0 GND 1.8
V13 H_GATE_1 GND 1.8
V14 H_GATE_2 GND 1.8
V15 V_INPUT_0 GND pwl(0 0.0 100u 0.0 200u 1.8 400u 1.8 500u 0.0) r=0
V16 V_INPUT_1 GND pwl(0 0.0 150u 0.0 250u 1.8 400u 1.8 500u 0.0) r=0
V17 V_INPUT_2 GND pwl(0 0.0 200u 0.0 300u 1.8 400u 1.8 500u 0.0) r=0
V18 H_INPUT_0 GND pwl(0 1.8 100u 1.8 200u 0.0 400u 0.0 500u 1.8) r=0
V19 H_INPUT_1 GND pwl(0 1.8 150u 1.8 250u 0.0 400u 0.0 500u 1.8) r=0
V20 H_INPUT_2 GND pwl(0 1.8 200u 1.8 300u 0.0 400u 0.0 500u 1.8) r=0"}
C {devices/code_shown.sym} 200 -670 0 0 {name=CONTROL only_toplevel=false value=".control
save all
tran 1u 1000u
remzerovec
write tb_mini_grid.raw
.endc"}
C {ignore.sym} 1160 -810 0 0 {}
C {sky130_fd_pr/corner.sym} 40 -670 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 430 -710 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_mini_grid.raw tran"
}
C {devices/lab_pin.sym} 850 -50 0 0 {name=p2 sig_type=std_logic lab=H_INPUT_2}
C {devices/lab_pin.sym} 850 -70 0 0 {name=p17 sig_type=std_logic lab=H_INPUT_1
}
C {devices/lab_pin.sym} 850 -90 0 0 {name=p18 sig_type=std_logic lab=H_INPUT_0
}
C {devices/lab_pin.sym} 850 -110 0 0 {name=p19 sig_type=std_logic lab=V_INPUT_2}
C {devices/lab_pin.sym} 850 -130 0 0 {name=p20 sig_type=std_logic lab=V_INPUT_1
}
C {devices/lab_pin.sym} 850 -150 0 0 {name=p21 sig_type=std_logic lab=V_INPUT_0}
C {devices/lab_pin.sym} 1160 -590 0 0 {name=p22 sig_type=std_logic lab=H_GATE_2}
C {devices/lab_pin.sym} 1160 -610 0 0 {name=p23 sig_type=std_logic lab=H_GATE_1
}
C {devices/lab_pin.sym} 1160 -630 0 0 {name=p24 sig_type=std_logic lab=H_GATE_0
}
C {devices/lab_pin.sym} 1160 -650 0 0 {name=p25 sig_type=std_logic lab=V_GATE_2}
C {devices/lab_pin.sym} 1160 -670 0 0 {name=p26 sig_type=std_logic lab=V_GATE_1
}
C {devices/lab_pin.sym} 1160 -690 0 0 {name=p27 sig_type=std_logic lab=V_GATE_0}
C {devices/lab_pin.sym} 1160 -710 0 0 {name=p28 sig_type=std_logic lab=HD_RES
}
C {devices/lab_pin.sym} 1160 -730 0 0 {name=p29 sig_type=std_logic lab=HD_SHORT
}
C {devices/lab_pin.sym} 1160 -750 0 0 {name=p30 sig_type=std_logic lab=HD_LINE
}
C {devices/lab_pin.sym} 1160 -770 0 0 {name=p31 sig_type=std_logic lab=VD_RES
}
C {devices/lab_pin.sym} 1160 -790 0 0 {name=p32 sig_type=std_logic lab=VD_SHORT
}
C {devices/lab_pin.sym} 1160 -810 0 0 {name=p33 sig_type=std_logic lab=VD_LINE
}
C {devices/lab_pin.sym} 1160 -470 0 0 {name=p34 sig_type=std_logic lab=H_INPUT_2}
C {devices/lab_pin.sym} 1160 -490 0 0 {name=p35 sig_type=std_logic lab=H_INPUT_1
}
C {devices/lab_pin.sym} 1160 -510 0 0 {name=p36 sig_type=std_logic lab=H_INPUT_0
}
C {devices/lab_pin.sym} 1160 -530 0 0 {name=p37 sig_type=std_logic lab=V_INPUT_2}
C {devices/lab_pin.sym} 1160 -550 0 0 {name=p38 sig_type=std_logic lab=V_INPUT_1
}
C {devices/lab_pin.sym} 1160 -570 0 0 {name=p39 sig_type=std_logic lab=V_INPUT_0}
C {devices/lab_pin.sym} 1300 -650 0 1 {name=p40 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1300 -810 0 1 {name=p41 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1300 -790 0 1 {name=p42 sig_type=std_logic lab=ANALOG_PIN
}
C {ignore.sym} 1160 -790 0 0 {}
C {ignore.sym} 1160 -770 0 0 {}
C {ignore.sym} 1160 -750 0 0 {}
C {ignore.sym} 1160 -730 0 0 {}
C {ignore.sym} 1160 -710 0 0 {}
C {ignore.sym} 1160 -690 0 0 {}
C {ignore.sym} 1160 -670 0 0 {}
C {ignore.sym} 1160 -650 0 0 {}
C {ignore.sym} 1160 -630 0 0 {}
C {ignore.sym} 1160 -610 0 0 {}
C {ignore.sym} 1160 -590 0 0 {}
C {ignore.sym} 1160 -570 0 0 {}
C {ignore.sym} 1160 -550 0 0 {}
C {ignore.sym} 1160 -530 0 0 {}
C {ignore.sym} 1160 -510 0 0 {}
C {ignore.sym} 1160 -490 0 0 {}
C {ignore.sym} 1160 -470 0 0 {}
C {ignore.sym} 1300 -810 0 1 {}
C {ignore.sym} 1300 -790 0 1 {}
C {ignore.sym} 1300 -650 0 1 {}
C {devices/lab_pin.sym} 1150 -350 0 1 {name=p43 sig_type=std_logic lab=V_LINE_0
}
C {devices/lab_pin.sym} 1150 -330 0 1 {name=p44 sig_type=std_logic lab=V_LINE_1
}
C {devices/lab_pin.sym} 1150 -310 0 1 {name=p45 sig_type=std_logic lab=V_LINE_2
}
C {devices/lab_pin.sym} 1150 -290 0 1 {name=p46 sig_type=std_logic lab=H_LINE_0
}
C {devices/lab_pin.sym} 1150 -270 0 1 {name=p47 sig_type=std_logic lab=H_LINE_1
}
C {devices/lab_pin.sym} 1150 -250 0 1 {name=p48 sig_type=std_logic lab=H_LINE_2
}
C {devices/lab_pin.sym} 1300 -770 0 1 {name=p49 sig_type=std_logic lab=V_LINE_0
}
C {devices/lab_pin.sym} 1300 -750 0 1 {name=p50 sig_type=std_logic lab=V_LINE_1
}
C {devices/lab_pin.sym} 1300 -730 0 1 {name=p51 sig_type=std_logic lab=V_LINE_2
}
C {devices/lab_pin.sym} 1300 -710 0 1 {name=p52 sig_type=std_logic lab=H_LINE_0
}
C {devices/lab_pin.sym} 1300 -690 0 1 {name=p53 sig_type=std_logic lab=H_LINE_1
}
C {devices/lab_pin.sym} 1300 -670 0 1 {name=p54 sig_type=std_logic lab=H_LINE_2
}
C {ignore.sym} 1300 -770 0 1 {}
C {ignore.sym} 1300 -750 0 1 {}
C {ignore.sym} 1300 -730 0 1 {}
C {ignore.sym} 1300 -710 0 1 {}
C {ignore.sym} 1300 -690 0 1 {}
C {ignore.sym} 1300 -670 0 1 {}
