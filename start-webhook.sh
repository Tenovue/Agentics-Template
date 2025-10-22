#!/bin/bash
# Start the ADW webhook server with proper environment loading

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

echo "=== Starting ADW Webhook Server ===" 
echo "Loading environment from .env..."

set -a
source .env
set +a

echo "Starting webhook server on port 8080..."
exec uv run adws/adw_triggers/trigger_webhook.py
