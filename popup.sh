#!/bin/sh

source ~/etc/theme.sh

dimensions="120x20+1310+855"

(echo "$@"; sleep 3) | lemonbar -d -g $dimensions -f $font

