#!/bin/bash

# Setup Local Dev Environment

echo "🛠  Setting up local environment..."

# 1. Install Dependencies
echo "Installing dependencies..."
npm install

# 2. Make scripts executable
chmod +x scripts/*.sh

# 3. Check for GH CLI
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) could not be found. Please install it."
    exit 1
fi

echo "✅ Setup complete. Run ./scripts/deploy-all.sh to deploy."
