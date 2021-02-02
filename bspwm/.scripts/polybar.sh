#! /bin/sh

# Clean Polybars
killall -q polybar

# Launch Polybars

# Main
polybar -r plunne-bg &
sleep 0.2;
polybar -r plunne-title &
sleep 0.2;
polybar -r plunne-desktops &
sleep 0.2;
polybar -r plunne-status &
sleep 0.2;

# Right
polybar -r secondary-panel &
