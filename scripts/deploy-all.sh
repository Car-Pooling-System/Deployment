#!/bin/bash

# Deploy All Services Script
# Usage: ./deploy-all.sh [environment]

ENV=${1:-staging}
ORG="Car-Pooling-System"

echo "🚀 Starting Full System Deployment to $ENV..."

# Function to trigger workflow
trigger_deploy() {
  REPO=$1
  echo "👉 Triggering $REPO..."
  gh workflow run ci-cd.yml --repo $ORG/$REPO --ref main -f environment=$ENV
}

# 1. Backend
trigger_deploy "Car-Pooling-System-Backend"
echo "⏳ Waiting for Backend to stabilize..."
sleep 60

# 2. Web
trigger_deploy "Car-Pooling-System-Web-Frontend"
echo "⏳ Waiting for Web to stabilize..."
sleep 30

# 3. Mobile
trigger_deploy "Car-Pooling-System-Mobile-Frontend"

echo "✅ Deployment triggers sent!"
echo "monitor progress at: https://github.com/Car-Pooling-System/deployment/actions"
