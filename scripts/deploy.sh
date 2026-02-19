#!/bin/bash

# Trigger a workflow dispatch event in a remote repository
REPO_OWNER="Car-Pooling-System"
REPO_NAME=$1
WORKFLOW_ID="ci-cd.yml"
REF="main"

if [ -z "$GH_PAT" ]; then
  echo "Error: GH_PAT environment variable is not set."
  exit 1
fi

echo "Triggering deployment for $REPO_NAME..."

curl -L \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GH_PAT" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$REPO_OWNER/$REPO_NAME/actions/workflows/$WORKFLOW_ID/dispatches \
  -d "{\"ref\":\"$REF\"}"

echo "Deployment triggered."
