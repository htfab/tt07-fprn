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

# Set bidir pins as output from the RP2040, input to the ASIC
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

# Prepare to program the actual configuration we would
# like to test. We no longer want to latch all the cells
# at once.

print("Configuring the network")

tt.uio_in.value[5] = 0   # H_GATE_0
tt.uio_in.value[2] = 0   # H_GATE_1
tt.ui_in.value[1]  = 0   # H_GATE_2

tt.uio_in.value[6] = 0   # V_GATE_0
tt.uio_in.value[3] = 0   # V_GATE_1
tt.uio_in.value[0] = 0   # V_GATE_2

time.sleep_ms(10)


# Set up a function to configure a grid cell

def config(row, column, hd_res, hd_short, hd_line, vd_res, vd_short, vd_line):

    # Enable the configuration latches for the current row and column only

    tt.uio_in.value[5] = (1 if row == 0 else 0)     # H_GATE_0
    tt.uio_in.value[2] = (1 if row == 1 else 0)     # H_GATE_1
    tt.ui_in.value[1]  = (1 if row == 2 else 0)     # H_GATE_2

    tt.uio_in.value[6] = (1 if column == 0 else 0)  # V_GATE_0
    tt.uio_in.value[3] = (1 if column == 1 else 0)  # V_GATE_1
    tt.uio_in.value[0] = (1 if column == 2 else 0)  # V_GATE_2

    time.sleep_ms(10)

    # Set the grid configuration using HD_* and VD_*

    tt.ui_in.value[4]  = hd_res     # HD_RES
    tt.ui_in.value[3]  = hd_short   # HD_SHORT
    tt.ui_in.value[2]  = hd_line    # HD_LINE

    tt.ui_in.value[7]  = vd_res     # VD_RES
    tt.ui_in.value[6]  = vd_short   # VD_SHORT
    tt.ui_in.value[5]  = vd_line    # VD_LINE

    time.sleep_ms(10)

    # Turn off all the latches once again

    tt.uio_in.value[5] = 0   # H_GATE_0
    tt.uio_in.value[2] = 0   # H_GATE_1
    tt.ui_in.value[1]  = 0   # H_GATE_2

    tt.uio_in.value[6] = 0   # V_GATE_0
    tt.uio_in.value[3] = 0   # V_GATE_1
    tt.uio_in.value[0] = 0   # V_GATE_2

    time.sleep_ms(10)


# Program the configuration for the actual test network,
# a 3-bit R-2R DAC:

# (bit2)  (bit1)  (bit0)
#  VI_0    VI_1    VI_2
#    |       |       |
#    R       R       R
#    |       |       |
#    +--   --+--   --+--   --HI_2 (ground)
#    |       |       |
#    R       R       R
#    |       |       |
#    +---R---+---R---+--   --HI_1 (ground)
#    |       |       |
#    |       |       R
#    |       |       |
#    +--   --+--   --+---R---HI_0 (ground)
#   AP
# (Vout)

#       row  column  hd_res  hd_short  hd_line  vd_res  vd_short  vd_line
config(   0,      0,      0,        0,       0,      0,        1,       0)
config(   0,      1,      0,        0,       0,      0,        1,       0)
config(   0,      2,      1,        0,       0,      1,        0,       0)
#       row  column  hd_res  hd_short  hd_line  vd_res  vd_short  vd_line
config(   1,      0,      1,        0,       0,      1,        0,       0)
config(   1,      1,      1,        0,       0,      1,        0,       0)
config(   1,      2,      0,        0,       0,      1,        0,       0)
#       row  column  hd_res  hd_short  hd_line  vd_res  vd_short  vd_line
config(   2,      0,      0,        0,       0,      1,        0,       0)
config(   2,      1,      0,        0,       0,      1,        0,       0)
config(   2,      2,      0,        0,       0,      1,        0,       0)


# Set up a function to manipulate the DAC inputs

def dac_set(value):

    # Convert 3-bit integer input to binary

    bit0 = 1 if (value & 1 != 0) else 0
    bit1 = 1 if (value & 2 != 0) else 0
    bit2 = 1 if (value & 4 != 0) else 0

    # Connect HI_* to ground (just to be pedantic)

    tt.ui_in.value[0]  = 0   # HI_0
    tt.rst_n.value     = 0   # HI_1
    tt.clk.value       = 0   # HI_2

    # Set VI_* to the input bits as in the network graph

    tt.uio_in.value[7] = bit2   # VI_0
    tt.uio_in.value[4] = bit1   # VI_1
    tt.uio_in.value[1] = bit0   # VI_2

# Run a demo loop cycling the DAC inputs


print("Running demo loop")

while True:
    for value in range(8):
        print(f"DAC input = {value}, output ~ {0.225 * value} V")
        dac_set(value)
        time.sleep(5)
