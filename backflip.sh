#!/bin/sh
#
# z3bra - 2014 (c) wtfpl
# focus a window when it is created
# depends on: wew focus.sh

wew | while IFS=: read ev wid; do
    case $ev in
    # Window focusing
    7) focus.sh $wid ;;
    # occurs on mapped windows
    16) 
        wattr o $wid || focus.sh $wid 
        ;;
    esac
done
