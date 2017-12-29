#!/bin/bash

# Touchpad settings are configurable in /etc/X11/xorg.conf.d/*-synaptics.conf

# Disable the touchpad if any device named mouse is detected by xinput
xinput --list | egrep -i 'mouse|receiver' &> /dev/null
if [ $? -eq 0 ]; then
  synclient TouchpadOff=1
fi
