#!/bin/sh

# Supply tmux with times for right-hand status bar
# Each variable encompasses a time and a color

caliTime="$(TZ=America/Los_Angeles date +%R)"
buffTime="$(TZ=America/New_York date +'%b %d %R')"
utcTime="$(date -u +%R)"
bangTime="$(TZ=Asia/Kolkata date +%R)"

echo "<][ $caliTime ] <][ $buffTime ][> [ $utcTime ][> [ $bangTime ][>> "
