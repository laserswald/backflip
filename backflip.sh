#!/bin/sh
# backflip.sh 
# Start my personal wmutils settings.

shoutout.sh &
sxhkd -c ~/bin/backflip.sxhkd &
infoborder.sh &

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
