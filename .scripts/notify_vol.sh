#!/bin/bash

command=$1

if [ "$command" = "" ]; then
    echo "usage: $0 {up|down|toggle}"
    exit 0;
fi

display_volume=0

if [ "$command" = "up" ]; then
    amixer sset Master unmute
    display_volume=$(amixer sset Master 5+ unmute | grep -m 1 "%]" | cut -d "[" -f2|cut -d "%" -f1)
fi

if [ "$command" = "down" ]; then
    amixer sset Master unmute
    display_volume=$(amixer sset Master 5- unmute | grep -m 1 "%]" | cut -d "[" -f2|cut -d "%" -f1)
fi

icon_name=""

if [ "$command" = "toggle" ]; then
            if amixer get Master | grep "\[on\]"; then
         amixer sset Master mute
                 display_volume=0
            else
         amixer sset Master unmute
                 display_volume=$(amixer get PCM | grep -m 1 "%]" | cut -d "[" -f2|cut -d "%" -f1)
    fi
fi

notify-send "Volume: $display_volume%"
exit 1
