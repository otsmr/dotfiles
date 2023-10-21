#!/bin/bash

# Check if zellij is running
if pgrep zellij >/dev/null 2>&1; then
    # Get all PIDs of zellij
    ZELLIJ_PIDS=$(pgrep zellij)

    # Loop through each PID and extract the CPU usage
    for ZELLIJ_PID in $ZELLIJ_PIDS; do
        CPU_USAGE=$(ps -p $ZELLIJ_PID -o %cpu | awk 'NR==2' | tr , .)

        if [ $(echo "$CPU_USAGE >= 90.0" | bc -l) -eq 1 ]; then
            osascript -e "display dialog \"Zellij CPU usage is at $CPU_USAGE%.\""
            exit
        fi

    done
else
    echo "Zellij is not currently running."
fi

# launchctl load ./zellij.cpu_problem.plist
# launchctl list

