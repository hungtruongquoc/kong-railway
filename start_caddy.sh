#!/bin/bash

# Ensure the directory exists
mkdir -p /etc/datadog-agent

# Create a minimal datadog.yaml configuration file dynamically
cat << EOF > /etc/datadog-agent/datadog.yaml
api_key: ${DD_API_KEY}
site: ${DD_SITE}
hostname: ${RAILWAY_PRIVATE_DOMAIN}
EOF

# Start the Datadog Agent
datadog-agent run &
# Start Caddy
caddy run --config /etc/caddy/Caddyfile --adapter caddyfile
