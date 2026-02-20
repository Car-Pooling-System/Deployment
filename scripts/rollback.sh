#!/bin/bash

# Rollback Script
# Usage: ./rollback.sh [service]

SERVICE=${1:-all}
ORG="Car-Pooling-System"
REPO="deployment"

echo "⚠️  Initiating Rollback for: $SERVICE"

gh workflow run rollback.yml \
  --repo $ORG/$REPO \
  --ref main \
  -f service=$SERVICE \
  -f reason="Manual Trigger via CLI"

echo "Rollback workflow triggered."
