#!/bin/bash

echo "Starting CPU stress test..."

# Install stress tool (for Debian-based images)
sudo apt update && sudo apt install -y stress

# Run stress test (100% CPU utilization for 5 minutes)
stress --cpu 4 --timeout 300

echo "Stress test completed."
