#!/bin/bash

# Variables
PROJECT_ID="your-gcp-project-id"
USER_EMAIL="your-email@example.com"

# Assign Compute Admin role to the user
gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member="user:$USER_EMAIL" \
    --role="roles/compute.admin"

echo "IAM role assigned successfully to $USER_EMAIL."
