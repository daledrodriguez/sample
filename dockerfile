# Dockerfile

# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install necessary packages
# Install dependencies (Ansible, OpenSSH)
RUN apt-get update && \
    apt-get install -y ansible
    apt-get install -y ansible openssh-server

# Copy Ansible playbook and any additional files
COPY dcplaybook.yml /ansible/dcplaybook.yml
COPY inventory /ansible/inventory
COPY ansible.cfg /ansible/ansible.cfg

# Set the default command to run when the container starts
CMD ["bash"]
CMD ["ansible-playbook", "/ansible/dcplaybook.yml"]
