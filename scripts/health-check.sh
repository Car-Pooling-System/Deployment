#!/bin/bash

# Health Check Script

BACKEND_URL=${BACKEND_URL:-"https://backend.railway.app"}
WEB_URL=${WEB_URL:-"https://carpooling.vercel.app"}

echo "Running Health Checks..."

# Check Backend
echo -n "Checking Backend ($BACKEND_URL/health)... "
CODE=$(curl -s -o /dev/null -w "%{http_code}" "$BACKEND_URL/health")
if [ "$CODE" -eq 200 ]; then
  echo "✅ UP"
else
  echo "❌ DOWN ($CODE)"
  exit 1
fi

# Check Web
echo -n "Checking Web ($WEB_URL)... "
CODE=$(curl -s -o /dev/null -w "%{http_code}" "$WEB_URL")
if [ "$CODE" -eq 200 ]; then
  echo "✅ UP"
else
  echo "❌ DOWN ($CODE)"
  exit 1
fi

echo "All systems operational."
exit 0
