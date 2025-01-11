#!/bin/bash

# Infinite loop to send asynchrounous requests
while true; do

    # Generate a random sleep time between 5 and 10 seconds
    sleep_time=$((5 + RANDOM % 6))
    echo "Sleeping for $sleep_time seconds..."
    sleep "$sleep_time"  # Sleep to simulate a delay between requests

    # Measure the start time (milliseconds)
    start_time=$(date +%s%3N)

    # Send an asynchronous request using curl and suppress output
    curl -s -o /dev/null -w "%{http_code}" 127.0.0.1/compute &

    # Wait for all background processes to finish
    wait

    # Measure the end time (milliseconds)
    end_time=$(date +%s%3N)

    # Calculate response time in milliseconds
    response_time=$((end_time - start_time))

    # Output request details
    echo "Request sent at $(date)"
    echo "Response time: ${response_time} ms"
    echo "---------------------------------------"
done
