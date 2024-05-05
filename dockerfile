# Use Debian Linux as the base image
FROM debian:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y ansible

# Set the working directory
WORKDIR /ansible

# Copy your playbook, inventory, and ansible.cfg into the image
COPY dcplaybook.yml inventory ansible.cfg ./

# Run the playbook when the container starts
CMD ["ansible-playbook", "dcplaybook.yml", "-i", "inventory"]
