#!/bin/bash

# alternate on and off with relaunches
# ps -C polybar >/dev/null && killall polybar && exit
# OR: just reset
killall polybar

# same bar on all monitors
#if type "xrandr"; then
#  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#    MONITOR=$m polybar --reload main &
#  done
#else
  # separate bars
  polybar --reload main & disown
  polybar --reload second & disown
#fi
