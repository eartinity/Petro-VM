#!/bin/bash

# Function to run 'apt update' command every second
run_apt_update() {
    local duration=$((4 * 3600))  # Duration in seconds (4 hours)
    local counter=0

    while [ $counter -lt $duration ]; do
        apt update
        sleep 1  # Sleep for 1 second
        ((counter++))
    done
}

# Run the function
run_apt_update
