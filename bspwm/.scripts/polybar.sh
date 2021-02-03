#! /bin/sh

# Clean Polybars
killall -q polybar

# Launch Polybars
polybar plunne-bg &
polybar plunne-bg2 &
sleep 0.2;
polybar plunne-title &
polybar plunne-title2 &
sleep 0.2;
polybar plunne-desktops &
polybar plunne-desktops2 &
sleep 0.2;
polybar plunne-status &
polybar plunne-status2 &
sleep 0.2;
