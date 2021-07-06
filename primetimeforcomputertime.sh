#!/bin/sh

# PRIME TIME FOR COMPUTER TIME
# https://www.youtube.com/watch?v=hOuzxtxw11M

MSG="$(date +%H:%M) ---> PRIME TIME FOR COMPUTER TIME <--- $(date +%H:%M)"
MSG_LENGTH=${#MSG}

COLS=$(tput cols)
LINES=$(tput lines)

clear

tput cup "$((LINES/2))" "$((($COLS-$MSG_LENGTH)/2))"
printf "\033[0;31m %s\n" "$MSG"
tput cup "$LINES" 0

if [ command -v paplay >/dev/null 2>&1 ];
then
    aplay PRIMETIMEFORCOMPUTERTIME.WAV
    exit 0
else
    paplay PRIMETIMEFORCOMPUTERTIME.WAV
    exit 0
fi

tput rmcup