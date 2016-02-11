#!/bin/sh

D="DVI-I-1"
FONT=${FONT:-"-*-proggysquare-*-*-*-*-*-*-*-*-*-*-*-*"}
SPACE=5

# Get the dimensions of the monitor
read DX DY DW DH <<< $(~/bin/geo_disp.sh $D)
echo $DX $DY $DW $DH

pw=$(txtw -f $FONT "$@")
ph=16
px=$(( DX + DW - SPACE - pw ))
py=$(( DY + DH - SPACE - ph ))
echo $px $py $pw $ph

dimensions="${pw}x${ph}+${px}+${py}"
#dimensions="${pw}x${ph}+20+20"
echo $dimensions

(echo "as;dlfkja;sdlkj"; sleep 3) | lemonbar -d -g $dimensions -f $FONT

