# backflip
Make it do a backflip. But seriously, wmutils's contrib scripts with multihead.

## The core scripts (aka *_disp.sh)

These allow using wmutils's stuff with multihead displays. Check it out:

### geo_disp.sh
Get the geometry of the display with the given name.

### current_disp.sh
Return which display the coordinates or the current window is positioned on. Technically, the window's top left corner.

### ls_disp.sh 
List all the available displays.

## Imports from wmutils/contrib
* closest.sh
* colors.sh
* focus.sh
* groups.sh

## Scripts that needed to be modified for multihead awareness.
### switch_grid.sh
Grids out only on the current display. (perhaps needs to grid out on all displays too with a flag? hmmmm tasty)
### tile.sh
Tiles all the windows on the current display instead of every window. Wowza.


