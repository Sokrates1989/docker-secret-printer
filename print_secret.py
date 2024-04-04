import os

# Fetch the secret from the Docker Swarm secret passed as environment variable.
SECRET_NAME = os.getenv("SECRET_NAME")
with open(f"/run/secrets/{SECRET_NAME}", "r") as secret_file:
    SECRET_VALUE = secret_file.read().strip()

# Print the secret value.
print(f"Secret name: {SECRET_NAME}")
print(f"Secret value: {SECRET_VALUE}")

# Fetch botToken from botToken_FILE.
BOT_TOKEN_FILE = os.getenv("botToken_FILE")
with open(f"{BOT_TOKEN_FILE}", "r") as bot_token_file:
    BOT_TOKEN = bot_token_file.read().strip()

# Print botToken.
print(f"botToken: {BOT_TOKEN}")
