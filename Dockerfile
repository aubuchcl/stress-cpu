# Use the official Alpine image as the base image
FROM alpine:latest

# Install stress-ng
RUN apk add --no-cache stress-ng

# Copy the stress script into the container
COPY stress.sh /usr/local/bin/stress.sh

# Make the script executable
RUN chmod +x /usr/local/bin/stress.sh

# Set the entrypoint to the stress script
ENTRYPOINT ["/usr/local/bin/stress.sh"]
