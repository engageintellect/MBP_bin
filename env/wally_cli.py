#!/usr/bin/env python
#               _ _
#__      ____ _| | |_   _
#\ \ /\ / / _` | | | | | |
# \ V  V / (_| | | | |_| |
#  \_/\_/ \__,_|_|_|\__, | - cli
#                   |___/
# A python script for setting wallpaper using sxiv gui
# and generate/apply colorscheme made from wallpaper.

import os
import time
import subprocess



def setwall():
    os.system('clear')
    os.system('ls ~/media/photos/wallpapers')

    
    picture = input("\n\nEnter a photo name: ")
    light_or_dark = input("Light or dark theme? (l/d): ")
    
    
    cmd_str_light = f"wal -l --saturate 0.3 -i ~/media/photos/wallpapers/{picture}"
    cmd_str_dark = f"wal --saturate 0.3 -i ~/media/photos/wallpapers/{picture}"

    if light_or_dark == 'l':
        os.system(cmd_str_light)
    else:
        os.system(cmd_str_dark)

    os.system('clear')




setwall()
