#!/bin/sh

# Fetch the secret from the Docker Swarm secret passed as environment variable.
SECRET_VALUE=$(cat /run/secrets/$SECRET_NAME)

# Divider and heading.
echo ""
echo "Date: $(date +%Y-%m-%d %H:%M:%S)"
echo "execututing shell script: \"print_secret.sh\""

# Print the secret value.
echo "Secret name: $SECRET_NAME"
echo "Secret value: $SECRET_VALUE"

# Print secret from SECRET_FILE.
secret=$(cat $SECRET_FILE)
echo "Secret file: $SECRET_FILE"
echo "secret: $secret"

# Divider.
echo ""
