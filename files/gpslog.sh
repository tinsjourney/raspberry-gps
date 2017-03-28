#!/bin/sh

while true; do
    if ! pidof gpxlogger >/dev/null; then
        echo "restarting"
	gpspipe -r -n 10 > /dev/null
        gpxlogger -d -f /home/pirate/log'%Y-%m-%d-%H:%M:%S'.txt -i 2
    fi
    sleep 10
done
