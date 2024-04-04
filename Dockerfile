# Use a base image.
FROM alpine:latest

# Install necessary tools (like curl or jq).
RUN apk --no-cache add curl jq

# Copy a script into the container.
COPY print_secret.sh /usr/local/bin/print_secret.sh

# Set execute permissions on the script.
RUN chmod +x /usr/local/bin/print_secret.sh

# Set environment variable for secret name.
ENV SECRET_NAME=""

# Run the script when the container starts.
CMD ["print_secret.sh"]
