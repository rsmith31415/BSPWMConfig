#!/bin/sh

#------------------------------------------------------------------------------
# Project Name      - BSPWMConfig/devutils/links.sh
# Started On        - Fri 11 Dec 20:16:00 GMT 2020
# Last Change       - Fri 11 Dec 20:18:47 GMT 2020
# Author E-Mail     - terminalforlife@yahoo.com
# Author GitHub     - https://github.com/terminalforlife
#------------------------------------------------------------------------------
# Just a simple, quick script to update the hard links when changing branches.
#
# Dependencies:
#
#   coreutils (>= 8.25-2)
#------------------------------------------------------------------------------

cd "$HOME/GitHub/terminalforlife/Personal/BSPWMConfig"

{
	[ -d "$HOME"/.config/bspwm ] || mkdir -p "$HOME/.config/bspwm"
	[ -d "$HOME"/.config/sxhkd ] || mkdir -p "$HOME/.config/sxhkd"

	rm -v "$HOME/.config/bspwm/bspwmrc"
	ln -v source/bspwmrc "$HOME/.config/bspwm/bspwmrc"

	rm -v "$HOME/.config/sxhkd/sxhkdrc"
	ln -v source/sxhkdrc "$HOME/.config/sxhkd/sxhkdrc"
} 2> /dev/null
