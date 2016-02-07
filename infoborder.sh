
BW=${BW:-1}                    # border width
ROOT=$(lsw -r)

$ACTIVE_COLOR=

# check if window exists
wattr $2 || return

# do not modify border of fullscreen windows
test "$(wattr xywh $2)" = "$(wattr xywh $ROOT)" && exit

case $1 in
    active)   chwb -s $BW -c $ACTIVE_COLOR $2 ;;
    inactive) chwb -s $BW -c $INACTIVE_COLOR $2 ;;
esac

