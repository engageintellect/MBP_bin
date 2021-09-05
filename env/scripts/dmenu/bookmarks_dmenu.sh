#!/usr/bin/env zsh

# DEFINE SOME VARIABLES FOR PROGRAM
BOOOKMARK_FILE=~/bin/env/scripts/bookmarks/bookmarks.txt

BROWSER='brave'


bookmarks=$(cat $BOOOKMARK_FILE)

read selection <<< $(for x in $bookmarks; do echo $x; done |  \
    dmenu -fn 'Hack Nerd Font 10' -l 12)


if [[ $selection == "" ]]; then
    echo nothing selected, exiting...
    sleep 1
    clear
else
    $BROWSER $selection
fi




