#!/bin/bash

SERVICES=(
  "https://backend.railway.app/health"
  "https://carpooling.vercel.app"
)

for URL in "${SERVICES[@]}"; do
  HTTP_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")
  if [ "$HTTP_CODE" -eq 200 ]; then
    echo "✅ $URL is UP"
  else
    echo "❌ $URL is DOWN (Status: $HTTP_CODE)"
    exit 1
  fi
done
