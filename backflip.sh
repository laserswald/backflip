#!/bin/sh
#
# Do a backflip.

rainbow.sh &
last_window=
wew | while IFS=: read ev wid; do
    case $ev in
    # Window focusing
    7) 
        focus.sh $wid
        ;;
    # occurs on mapped windows
    16) 
        if [[ ! $(wattr o $wid) ]]; then
            focus.sh $wid
        fi
        ;;
    esac
done
