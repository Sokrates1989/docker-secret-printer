#!/bin/sh

# Fetch the secret from the Docker Swarm secret passed as environment variable.
SECRET_VALUE=$(cat /run/secrets/$SECRET_NAME)

# Print the secret value.
echo "Secret name: $SECRET_NAME"
echo "Secret value: $SECRET_VALUE"

# Print botToken from botToken_FILE.
botToken=$(cat $botToken_FILE)
echo "botToken: $botToken"
