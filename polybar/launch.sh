#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar 1 -c /home/andrzej/.config/polybar/polybar_ricing.ini &
polybar 2 -c /home/andrzej/.config/polybar/polybar_ricing.ini &
nm-applet &

echo "Bars launched..."
