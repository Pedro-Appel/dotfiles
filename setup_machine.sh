#!/bin/bash

# Update and upgrade the system packages
echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Install essential dependencies for adding Ansible's PPA
echo "Installing prerequisites..."
sudo apt install -y software-properties-common git curl

# Add Ansible PPA and install Ansible
echo "Adding Ansible PPA and installing Ansible..."
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible

# Confirm Ansible installation
echo "Ansible installation completed!"
ansible --version

# Run the Ansible playbook (ensure it exists in the same directory or modify the path)
echo "Running the Ansible playbook..."
ansible-playbook playbook.yml --extra-vars "user=rat" # Modify to your machine user 

echo "System setup completed!"
