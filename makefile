install:
	stow -t ~/bin -d .. backflip --ignore="txt"

uninstall:
	stow  -t ~/bin -d .. -D backflip --ignore="txt"
