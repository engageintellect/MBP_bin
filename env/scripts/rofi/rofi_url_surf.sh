#!/usr/bin/env bash

BROWSER=surf
read selection <<< $(rofi -dmenu -p "URL" -font "Hack Nerd font 10" \
    -theme ~/.cache/wal/colors-rofi-dark.rasi \
    -location 0 -width 25 -lines 10 -theme-str '#window { width:25%; height:25%; }')



if [[ $selection == "" ]]; then
    echo nothing selected, exiting...
    sleep 1
    clear
else
    $BROWSER $selection
fi
