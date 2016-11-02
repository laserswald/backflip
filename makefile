CFLAGS=-g -Wall -pedantic

BINS=rcoll 
SCRIPTS=backflip center closest dattr focus fsd groupmgr ind infob lsd pulseb rainb routine shoutout snap switch_grid tile wclass rcm outside

TOOLS=$(BINS) $(SCRIPTS)
ATOOLS=$(patsubst %,$(shell pwd)/%,$(TOOLS))

rcoll: rcoll.c

installtools: $(ATOOLS)
	ln -s $^ ~/bin

installconfig: 
	mkdir -p ~/.config/backflip
	cp -r ./config ~/.config/backflip

install: installtools installconfig

uninstall:
	cd ~/bin; rm $(TOOLS)
	rm -r ~/.config/backflip

check: rcoll
	exec ./rcoll -t

.PHONY: install uninstall installtools installconfig
