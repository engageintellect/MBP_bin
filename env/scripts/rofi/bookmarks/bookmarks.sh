#!/usr/bin/env bash


# DEFINE SOME VARIABLES FOR PROGRAM
BOOOKMARK_FILE=~/bin/env/scripts/rofi/bookmarks/bookmarks.txt

BROWSER='brave'


bookmarks=$(cat $BOOOKMARK_FILE | sort)

read selection <<< $(for x in $bookmarks; do echo $x; done |  \
    rofi -dmenu -theme ~/.cache/wal/colors-rofi-dark.rasi -p "BOOKMARKS" -font "Hack Nerd Font 10" -location 3 -width 20 -lines 100 \
    -theme-str '#window { width:20%; height:100%; }')


if [[ $selection == "" ]]; then
    echo nothing selected, exiting...
    sleep 1
    clear
else
    $BROWSER $selection
fi




