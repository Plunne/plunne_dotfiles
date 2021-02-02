#! /bin/sh

# Deamons
picom &
dunst &
sxhkd &
flameshot &

# Xrdb
xrdb .Xressources

# Start WM
exec dbus-launch bspwm
