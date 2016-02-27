#!/bin/sh
# backflip.sh 
# Start my personal wmutils settings.

shoutout.sh &
sxhkd -c ~/bin/backflip.sxhkd -f 90 -r ~/sxhkd.log &

last_window=
wew | while IFS=: read ev wid; do
    case $ev in
    # Window focusing
    7) 
        focus.sh $wid
        ;;
    # occurs on mapped windows
    16) 
        if test ! wattr o $wid; then 
            focus.sh $wid
            win_telemouse.sh
            chwb -s 1 $wid
        fi
        ;;
    esac
done
