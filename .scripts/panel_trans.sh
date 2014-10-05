#!/bin/bash
clear
WINDOW=$(wmctrl -lG | grep '1366 740')
if [ "$WINDOW" ]; then
    sed -i 's/panel_bg1=rgba(0,0,0,0)/panel_bg1=rgba(0,0,0,1)/' ~/.config/elegance-colors/elegance-colors.ini
     sed -i 's/panel_bg2=rgba(0,0,0,0)/panel_bg2=rgba(0,0,0,1)/' ~/.config/elegance-colors/elegance-colors.ini
     elegance-colors apply

elif [ !"$WINDOW" ]; then
    sed -i 's/panel_bg1=rgba(0,0,0,1)/panel_bg1=rgba(0,0,0,0)/' ~/.config/elegance-colors/elegance-colors.ini
    sed -i 's/panel_bg2=rgba(0,0,0,1)/panel_bg2=rgba(0,0,0,0)/' ~/.config/elegance-colors/elegance-colors.ini
    elegance-colors apply

fi
