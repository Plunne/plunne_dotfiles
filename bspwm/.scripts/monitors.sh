#! /bin/sh

# Monitors
Monitor_Main=DVI-D-0
Monitor_Right=HDMI-A-0

# Xrandr
xrandr --output $Monitor_Main --primary --rate 144
xrandr --output $Monitor_Right --right-of $Monitor_Main
