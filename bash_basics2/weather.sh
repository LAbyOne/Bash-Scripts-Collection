#!/bin/bash
# weather.sh
# Copyright 2018 computer-geek64. All rights reserved.
export TERM=xterm-256color
# ====== Main Window SetUp ======
osascript -e "tell application \"Terminal\" to set bounds of window 1 to {0, 0, 900, 630}"
osascript -e "tell application \"Terminal\" to set the position of window 1 to {650, 200}"
osascript -e "tell application \"Terminal\" to set the font size of window 1 to 9"
osascript -e "tell application \"Terminal\" to set background color of window 1 to {0, 0, 3586}"
osascript -e "tell application \"Terminal\" to set normal text color of window 1 to {3341, 35186, 50092}"

# ====== COLORS ======
COL_RED="\x1b[31;01m"
COL_GREEN="\x1b[32;01m"
COL_YELLOW="\x1b[33;01m"
COL_CYAN="\x1b[36;01m"
COL_WHITE="\x1b[37;01m"
COL_BLUE="\x1b[34;01m"
COL_MAGENTA="\x1b[35;01m"
COL_RESET="\x1b[39;49;00m"

program=Weather
version=1.1
year=2018
developer=computer-geek64
clear
case $1 in
-h | --help)
	echo "$program $version"
	echo "Copyright $year $developer. All rights reserved."
	echo
	echo "Usage: weather [options]"
	echo "Option          Long Option             Description"
	echo "-h              --help                  Show the help screen"
	echo "-l [location]   --location [location]   Specifies the location"
	;;
-l | --location)
	curl -sLk https://wttr.in/$2
	;;
*)
	curl -sLk https://wttr.in
	;;
esac
