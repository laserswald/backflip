# backflip
Make it do a backflip. But seriously, wmutils's contrib scripts with multihead.

## The core scripts (aka *_disp)

These allow using wmutils's stuff with multihead displays. Check it out:

### dattr
Get the geometry of the display with the given name.

### ind
Return which display the coordinates or the current window is positioned on. Technically, the window's top left corner.

### lsd 
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

### fullscreen
Now, it fullscreens to the current monitor. 

### snap
It snaps to the monitor where the pointer is. 


**bugs**

- fsd sometimes unfullscreens things when I moved them already. Probably shouldn't do that. 

- There are some old bindings in backflip.sxhkd that don't work any more. Namely, the 'help' binding to show the current list of bindings. 

- Since fsd works on single head screens too, it probably should be renamed to fullscreen with the old one being removed.



