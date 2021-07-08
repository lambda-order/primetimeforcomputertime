#!/bin/sh

# PRIME TIME FOR COMPUTER TIME
# https://www.youtube.com/watch?v=hOuzxtxw11M

MSG="$(date +%H:%M)"
MSG="$MSG ---> PRIME TIME FOR COMPUTER TIME <--- $MSG"
MSG_LENGTH=${#MSG}

COLS=$(tput cols)
LINES=$(tput lines)

clear

tput cup "$((LINES/2))" "$((($COLS-$MSG_LENGTH)/2))"
tput setaf 1
echo "$MSG"
tput cup "$LINES" 0
tput sgr0

command -v paplay > /dev/null 2>&1 && PLAYER=paplay || PLAYER=aplay
sed 1,/^exit$/d "$0" | $PLAYER
exit
