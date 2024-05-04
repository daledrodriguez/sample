# Dockerfile

# Use the official Ubuntu base image
FROM ubuntu:latest

# Install dependencies (Ansible, OpenSSH)
RUN apt-get update && \
    apt-get install -y ansible openssh-server

# Create SSH directory
RUN mkdir /var/run/sshd

# Copy Ansible playbook and any additional files
COPY playbook.yml /ansible/playbook.yml
COPY inventory /ansible/inventory
COPY ansible.cfg /ansible/ansible.cfg

# Set the default command to run when the container starts
CMD ["ansible-playbook", "/ansible/playbook.yml"]
