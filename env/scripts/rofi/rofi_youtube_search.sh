#!/usr/bin/env bash

BROWSER=surf
# read selection <<< $(rofi -dmenu -p "SEARCH" -font "Hack Nerd font 10" -location 1 -width 20 -lines 100 -m 1)
read selection <<< $(rofi -dmenu -p "SEARCH YOUTUBE" -font "Hack Nerd font 10" \
    -theme ~/.cache/wal/colors-rofi-dark.rasi \
    -location 0 -width 25% -lines 10 -theme-str '#window { width:25%; height:25%; }')



if [[ $selection == "" ]]; then
    echo nothing selected, exiting...
    sleep 1
    clear
else
    """ Query string """
    # echo $BROWSER "youtube.com/search?&q=""$selection"
    $BROWSER "youtube.com/search?&q=""$selection"
fi
