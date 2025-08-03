#!/bin/bash

echo "🚀 Starting the keep-alive script..."
echo "This script will prevent the Codespace from sleeping by writing to a log file every 10 minutes."
echo "Press Ctrl+C to stop this script."
echo "------------------------------------------------"

LOG_FILE=~/keep-alive.log

while true; do
  echo "Ping: Preventing sleep at $(date)" >> $LOG_FILE
  sleep 600 # Sleep for 600 seconds (10 minutes)
done