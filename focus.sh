#!/bin/sh
#

CUR=$(pfw)

usage() {
    echo "usage: $(basename $0) <next|prev|wid>"
    exit 1
}

case $1 in
    next) wid=$(lsw|grep -v $CUR|sed '1 p;d') ;;
    prev) wid=$(lsw|grep -v $CUR|sed '$ p;d') ;;
    0x*) wattr $1 && wid=$1 ;;
    *) usage ;;
esac

# exit if we can't find another window to focus
test -z "$wid" && echo "$(basename $0): can't find a window to focus" >&2 && exit 1

chwb -s 1 $CUR
chwb -s 2 $wid
chwso -r $wid           # put it on top of the stack
wtf $wid                # set focus on it

# you might want to remove this for sloppy focus
# wmp -a $(wattr xy $wid) # move the mouse cursor to
# wmp -r $(wattr wh $wid) # .. its bottom right corner
