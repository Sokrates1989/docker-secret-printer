# Use a base image.
FROM alpine:latest

# Install necessary tools (like curl, jq or python).
RUN apk --no-cache add curl jq python3

# Copy scripts into the container.
COPY print_secret.sh /usr/local/bin/print_secret.sh
COPY print_secret.py /usr/local/bin/print_secret.py

# Set execute permissions on the scripts.
RUN chmod +x /usr/local/bin/print_secret.sh
RUN chmod +x /usr/local/bin/print_secret.py

# Set environment variables.
ENV SECRET_NAME=""
ENV SECRET_FILE=""

# Run the shell script first and then the Python script when the container starts.
CMD ["/bin/sh", "-c", "/usr/local/bin/print_secret.sh && python3 /usr/local/bin/print_secret.py"]
