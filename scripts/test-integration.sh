#!/bin/bash

echo "🚀 Starting Integration Tests..."
cd "$(dirname "$0")/../tests" || exit 1

# Install dependencies if missing
if [ ! -d "node_modules" ]; then
  echo "📦 Installing test dependencies..."
  npm install
fi

# Run tests
echo "🧪 Running Jest suite..."
npm test
