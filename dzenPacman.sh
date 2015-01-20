#!/bin/bash
XPOS="1620"
WIDTH="300"
pacmanlines=$(pacman -Qu | wc -l)
LINES=$(( $pacmanlines + 2 ))

updates=$(pacman -Qu | sed -e 's/-> /^fg(#A3D572)/g' | column -tx)

(echo "^fg(#98CBFE)Updates"; echo "$updates"; echo " "; echo "^fg(#98CBFE)Click to exit") | dzen2 -xs 1 -p -fg '#FFFFFF' -bg '#303030' -fn bitocra13 -x 1627 -y 1049 -w $WIDTH -l $LINES -e 'onstart=uncollapse,hide;button1=exit;button3=exit'
