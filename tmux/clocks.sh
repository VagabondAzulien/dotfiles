#!/bin/sh

# Supply tmux with times for right-hand status bar
# Each variable encompasses a time and a color

caliTime="$(TZ=America/Los_Angeles date +%R)"
buffTime="$(TZ=America/New_York date +%R)"
utcTime="$(date -u +%R)"
bangTime="$(TZ=Asia/Kolkata date +%R)"

caliForm="#[fg=red]<][ $caliTime ] "
buffForm="#[fg=green]<][ $buffTime ][> "
utcForm="#[fg=blue][ $utcTime ][> "
bangForm="#[fg=magenta][ $bangTime ][>>"

echo $caliForm$buffForm$utcForm$bangForm" "
