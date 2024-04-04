import os

# Fetch the secret from the Docker Swarm secret passed as environment variable.
SECRET_NAME = os.getenv("SECRET_NAME")
with open(f"/run/secrets/{SECRET_NAME}", "r") as secret_file:
    SECRET_VALUE = secret_file.read().strip()

# Divider and heading.
print ("")
print ("execututing python script: \"print_secret.py\"")

# Print the secret value.
print(f"Secret name: {SECRET_NAME}")
print(f"Secret value: {SECRET_VALUE}")

# Fetch Secret from SECRET_FILE.
try:
    BOT_TOKEN_FILE = os.getenv("SECRET_FILE")
    with open(f"{BOT_TOKEN_FILE}", "r") as bot_token_file:
        secret = bot_token_file.read().strip()
finally:
    # If there is no SECRET_FILE.
    if not secret:
        secret = os.getenv('secret').strip().strip("\"") # or config_array["xxxxx"]["secret"].strip().strip("\"")

# Print secret.
print(f"secret: {secret}")
