#!/bin/bash
# _                   _
#| |_ ___  _   _  ___| |__  _   _
#| __/ _ \| | | |/ __| '_ \| | | |
#| || (_) | |_| | (__| | | | |_| |
# \__\___/ \__,_|\___|_| |_|\__, |
#                           |___/
# Bash script for setting up touchpad/trackpoint for BSPWM


# MACBOOK PRO

# TOUCHPAD
xinput set-prop bcm5974 libinput\ Tapping\ Enabled 1
xinput set-prop bcm5974 libinput\ Natural\ Scrolling\ Enabled 1
xinput set-prop bcm5974 libinput\ Accel\ Speed 0.5

# TRACKPAD ON/OFF (0=off/1=on)
# xinput set-prop SynPS/2\ Synaptics\ TouchPad "Device Enabled" 0

# TRACKPOINT
# xinput set-prop TPPS/2\ IBM\ TrackPoint libinput\ Natural\ Scrolling\ Enabled 1
# xinput set-prop TPPS/2\ IBM\ TrackPoint libinput\ Accel\ Speed 0.000005
 
# LOGITECH WIRELESS USB MOUSE
xinput set-prop Logitech\ M310 libinput\ Natural\ Scrolling\ Enabled 1

