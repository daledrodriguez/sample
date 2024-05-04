# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y ansible

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the default command to run when the container starts
CMD ["bash"]
