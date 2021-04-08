#!/usr/bin/env bash

if [[ -z $(pgrep sxhkd) ]]; then
    echo "This doesn't have sxhkd";
    sxhkd &
fi
if [[ -z $(pgrep unclutter) ]]; then
    echo "This doesn't have unclutter";
    unclutter -root &
fi
if [[ -z $(pgrep volumeicon) ]]; then
    echo "This doesn't have volumeicon";
    volumeicon &
fi
if [ -f /home/liveuser/.config/autostart/ustart.sh ]; then
	bash /home/liveuser/.config/autostart/ustart.sh
fi
