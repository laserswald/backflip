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

## Scripts that had to be modified for multihead awareness.

### fullscreen
Now, it fullscreens to the current monitor. 

### snap
It snaps to the monitor where the pointer is. 


**bugs**

- fullscreen_disp sometimes unfullscreens things when I moved them already. Probably shouldn't do that. 

- There are some old bindings in backflip.sxhkd that don't work any more. Namely, the 'help' binding to show the current list of bindings. 

- Since fullscreen_disp works on single head screens too, it probably should be renamed to fullscreen with the old one being removed.



