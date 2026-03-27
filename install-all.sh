#!/bin/bash

# Must be ran as root to access plymouth themes folder
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root!"
    exit 1
fi

# Copy all themes to plymouth folder
for theme in agnes-tachyon; do
    cp -rf "$theme" /usr/share/plymouth/themes
done