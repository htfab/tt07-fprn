# Initialize the TT demoboard

print("Booting up")
import gc
gc.threshold(10000)
from ttboard.demoboard import DemoBoard
from ttboard.mode import RPMode
from ttboard.boot.demoboard_detect import DemoboardDetect
DemoboardDetect.probe()
tt = DemoBoard.get()
tt.mode = RPMode.ASIC_RP_CONTROL

# Do a quick check to catch setup issues early

print("Performing self test")
tt.shuttle.tt_um_chip_rom.enable()
tt.ui_in.value = 0
assert tt.uo_out.value == 0b01111000

# Make sure every input is initialized. We will set them once
# again quite soon, this is just to ensure that everything is
# deterministic.

tt.ui_in.value  = 0
tt.uio_in.value = 0
tt.clk.value    = 0
tt.rst_n.value  = 0

# Set bidir pins as output for the RP2040, input for the ASIC
# (it's safe for both tt_um_chip_rom and tt_um_htfab_fprn,
#  but not for projects that use bidir pins as output)

tt.uio_oe_pico.value = 0b11111111

# Set HI_* and VI_* to zero since the configuration memory
# starts up in an unknown state and might give rise to a
# network with short-circuits between some of HI_* and VI*

print("Preloading safe configuration")

tt.ui_in.value[0]  = 0   # HI_0
tt.rst_n.value     = 0   # HI_1
tt.clk.value       = 0   # HI_2

tt.uio_in.value[7] = 0   # VI_0
tt.uio_in.value[4] = 0   # VI_1
tt.uio_in.value[1] = 0   # VI_2

# We would like to latch a safe configuration right after
# the design starts up. A simple safe configuration is one
# with all switches off except for resistors.

tt.ui_in.value[4]  = 1   # HD_RES
tt.ui_in.value[3]  = 0   # HD_SHORT
tt.ui_in.value[2]  = 0   # HD_LINE

tt.ui_in.value[7]  = 1   # VD_RES
tt.ui_in.value[6]  = 0   # VD_SHORT
tt.ui_in.value[5]  = 0   # VD_LINE

# To latch this configuration to all grid cells as soon
# as the design starts up, we set H_GATE_* and V_GATE_*
# to 1 before selecting the design

tt.uio_in.value[5] = 1   # H_GATE_0
tt.uio_in.value[2] = 1   # H_GATE_1
tt.ui_in.value[1]  = 1   # H_GATE_2

tt.uio_in.value[6] = 1   # V_GATE_0
tt.uio_in.value[3] = 1   # V_GATE_1
tt.uio_in.value[0] = 1   # V_GATE_2

# After all this preparation, it should be safe to select
# the design

print("Selecting the design")
tt.shuttle.reset_and_clock_mux(482)  # tt_um_htfab_fprn
tt.uio_oe_pico.value = 0b11111111

# Allow some time to latch the safe configuration

import time
time.sleep_ms(10)

# Set some inputs

print("Setting inputs")

tt.ui_in.value[0]  = 1   # HI_0
tt.rst_n.value     = 1   # HI_1
tt.clk.value       = 1   # HI_2

tt.uio_in.value[7] = 0   # VI_0
tt.uio_in.value[4] = 0   # VI_1
tt.uio_in.value[1] = 0   # VI_2
