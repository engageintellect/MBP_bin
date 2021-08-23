#!/usr/bin/env bash

# WITHOUT VERSION NUMBER
# pacman --color=auto -Q | awk '{print $1}' | less


# WITH VERSION NUMBER
pacman --color=auto -Q | less
