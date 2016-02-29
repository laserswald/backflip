# backflip
Make it do a backflip. But seriously, wmutils's contrib scripts with multihead.

## The core scripts (aka *_disp)

These allow using wmutils's stuff with multihead displays. Check it out:

### geo_disp
Get the geometry of the display with the given name.

### current_disp
Return which display the coordinates or the current window is positioned on. Technically, the window's top left corner.

### ls_disp 
List all the available displays.

## Imports from wmutils/contrib
* closest
* colors
* focus
* groups

## Scripts that needed to be modified for multihead awareness.
### switch_grid
Grids out only on the current display. (perhaps needs to grid out on all displays too with a flag? hmmmm tasty)
### tile
Tiles all the windows on the current display instead of every window. Wowza.


