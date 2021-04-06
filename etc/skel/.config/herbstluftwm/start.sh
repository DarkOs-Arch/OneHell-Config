#!/usr/bin/env bash

if [[ -z $(pgrep sxhkd) ]]; then
    echo "This doesn't have sxhkd";
    sxhkd &
else
    exit 1;
fi
if [[ -z $(pgrep unclutter) ]]; then
    echo "This doesn't have unclutter";
    unclutter -root &
else
    exit 1;
fi
if [[ -z $(pgrep volumeicon) ]]; then
    echo "This doesn't have volumeicon";
    volumeicon &
else
    exit 1;
fi
