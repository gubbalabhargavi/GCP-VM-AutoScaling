#!/bin/bash

# Variables
PROJECT_ID="your-gcp-project-id"
FIREWALL_RULE="allow-http-https"

# Create firewall rule to allow HTTP and HTTPS traffic
gcloud compute firewall-rules create $FIREWALL_RULE \
    --project=$PROJECT_ID \
    --allow tcp:80,tcp:443 \
    --target-tags=http-server,https-server

echo "Firewall rule $FIREWALL_RULE created successfully."
