#!/bin/bash
FREQ=$(iw dev wlan0 link 2>/dev/null | grep freq | awk '{print $2}' | cut -d'.' -f1)
if [ -z "$FREQ" ]; then
    echo "󰤮"
elif [ "$FREQ" -ge 5000 ]; then
    echo "5GHz"
else
    echo "2.4GHz"
fi
