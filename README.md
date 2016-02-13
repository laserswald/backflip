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

## Scripts that had to be modified for multihead awareness.

### fullscreen.sh
Now, it fullscreens to the current monitor. 

### snap.sh
It snaps to the monitor where the pointer is. 


**bugs**

- fullscreen_disp.sh sometimes unfullscreens things when I moved them already. Probably shouldn't do that. 

- There are some old bindings in backflip.sxhkd that don't work any more. Namely, the 'help' binding to show the current list of bindings. 

- Since fullscreen_disp.sh works on single head screens too, it probably should be renamed to fullscreen.sh with the old one being removed.



