#!/bin/bash

# Target URLs
URLS=(
    "http://192.168.10.30/index.html"
    "http://192.168.10.30/images/logo.png"
    "http://192.168.10.30/login.php"
    "http://192.168.10.30/test.php"
    "http://192.168.10.30/cgi-bin/test.cgi"
    "http://192.168.10.30/index.php"
)

echo "Starting HTTP traffic generator..."
echo "Target: 192.168.10.30"
echo "Press CTRL+C to stop."

while true; do
    # Select a random URL from the list
    RAND_INDEX=$((RANDOM % ${#URLS[@]}))
    TARGET_URL="${URLS[$RAND_INDEX]}"
    
    # Get the corresponding interval
    # Generates a number between 0 and 8
    TIME_INTERVAL=$((RANDOM % 9))

    # Fallback to 5 seconds if interval is 0 (or optionally simply add 1 to the random result to avoid 0)
    if [ "$TIME_INTERVAL" -eq 0 ]; then
        TIME_INTERVAL=5
    fi

    # Get current timestamp for display
    NOW=$(date "+%Y-%m-%d %H:%M:%S")

    # Send request
    # -s: Silent mode (don't show progress meter)
    # -o /dev/null: Discard output
    # -w: Display HTTP status code
    echo -n "[$NOW] Requesting $TARGET_URL ... "
    HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$TARGET_URL")
    
    echo "Status: $HTTP_CODE (Next request in ${TIME_INTERVAL}s)"

    # Wait
    sleep "${TIME_INTERVAL}"
done
