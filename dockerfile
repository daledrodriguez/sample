# Dockerfile

# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install necessary packages
# Install dependencies (Ansible, OpenSSH)
RUN apt-get update && \
    apt-get install -y ansible openssh-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy Ansible playbook and any additional files
COPY dcplaybook.yml /ansible/dcplaybook.yml
COPY inventory /ansible/inventory
COPY ansible.cfg /ansible/ansible.cfg

# Set the working directory
WORKDIR /ansible

# Set the default command to run when the container starts
CMD ["ansible-playbook", "--user=root", "dcplaybook.yml"]


TASK [Enable firewall] *********************************************************
fatal: [localhost]: FAILED! => {"changed": true, "cmd": ["ufw", "--force", "enable"], "delta": "0:00:00.181343", "end": "2024-05-05 10:15:02.671395", "msg": "non-zero return code", "rc": 1, "start": "2024-05-05 10:15:02.490052", "stderr": "ERROR: problem running ufw-init\niptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)\niptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)\niptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)\niptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)\niptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)\niptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)\niptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)\niptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)\niptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)\niptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)\nsysctl: setting key \"net.ipv4.conf.all.accept_redirects\", ignoring: Read-only file system\nsysctl: setting key \"net.ipv4.conf.default.accept_redirects\", ignoring: Read-only file system\nsysctl: setting key \"net.ipv6.conf.all.accept_redirects\", ignoring: Read-only file system\nsysctl: setting key \"net.ipv6.conf.default.accept_redirects\", ignoring: Read-only file system\nsysctl: setting key \"net.ipv4.icmp_echo_ignore_broadcasts\", ignoring: Read-only file system\nsysctl: setting key \"net.ipv4.icmp_ignore_bogus_error_responses\", ignoring: Read-only file system\nsysctl: setting key \"net.ipv4.icmp_echo_ignore_all\", ignoring: Read-only file system\nsysctl: setting key \"net.ipv4.conf.all.log_martians\", ignoring: Read-only file system\nsysctl: setting key \"net.ipv4.conf.default.log_martians\", ignoring: Read-only file system\n\nProblem loading ipv6 (skipping)\nProblem running '/etc/ufw/before.rules'\nProblem running '/etc/ufw/after.rules'\nProblem running '/etc/ufw/user.rules'", "stderr_lines": ["ERROR: problem running ufw-init", "iptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)", "iptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)", "iptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)", "iptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)", "iptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)", "iptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)", "iptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)", "iptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)", "iptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)", "iptables-restore v1.8.10 (nf_tables): Could not fetch rule set generation id: Permission denied (you must be root)", "sysctl: setting key \"net.ipv4.conf.all.accept_redirects\", ignoring: Read-only file system", "sysctl: setting key \"net.ipv4.conf.default.accept_redirects\", ignoring: Read-only file system", "sysctl: setting key \"net.ipv6.conf.all.accept_redirects\", ignoring: Read-only file system", "sysctl: setting key \"net.ipv6.conf.default.accept_redirects\", ignoring: Read-only file system", "sysctl: setting key \"net.ipv4.icmp_echo_ignore_broadcasts\", ignoring: Read-only file system", "sysctl: setting key \"net.ipv4.icmp_ignore_bogus_error_responses\", ignoring: Read-only file system", "sysctl: setting key \"net.ipv4.icmp_echo_ignore_all\", ignoring: Read-only file system", "sysctl: setting key \"net.ipv4.conf.all.log_martians\", ignoring: Read-only file system", "sysctl: setting key \"net.ipv4.conf.default.log_martians\", ignoring: Read-only file system", "", "Problem loading ipv6 (skipping)", "Problem running '/etc/ufw/before.rules'", "Problem running '/etc/ufw/after.rules'", "Problem running '/etc/ufw/user.rules'"], "stdout": "", "stdout_lines": []}


