#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 -r >>/tmp/polybar1.log 2>&1 & disown
polybar bar2 -r >>/tmp/polybar2.log 2>&1 & disown
polybar bar1bottom -r >>/tmp/polybar1bottom.log 2>&1 & disown
polybar bar2bottom -r >>/tmp/polybar2bottom.log 2>&1 & disown
echo "Bars launched..."
