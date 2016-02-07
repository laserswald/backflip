#!/bin/sh
while true; do 
    echo "%{c}$(date +%T)"; 
done | lemonbar -d -b -B#20FFFFFF -F#88FFFFFF -g 60x15+960+4 -f"-*-coding font tobi-*-*-*-*-*-*-*-*-*-*-*-*"
