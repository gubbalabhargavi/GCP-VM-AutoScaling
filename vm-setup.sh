#!/bin/bash

# Variables
PROJECT_ID="your-gcp-project-id"
ZONE="us-central1-a"
INSTANCE_NAME="auto-scale-vm"
MACHINE_TYPE="e2-medium"
IMAGE_FAMILY="debian-11"
IMAGE_PROJECT="debian-cloud"

# Create a new VM instance
gcloud compute instances create $INSTANCE_NAME \
    --project=$PROJECT_ID \
    --zone=$ZONE \
    --machine-type=$MACHINE_TYPE \
    --image-family=$IMAGE_FAMILY \
    --image-project=$IMAGE_PROJECT \
    --tags=http-server,https-server

echo "VM instance $INSTANCE_NAME created successfully."
