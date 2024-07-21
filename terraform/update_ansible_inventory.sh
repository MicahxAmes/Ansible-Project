#!/bin/bash

# Apply Terraform configuration
terraform apply -auto-approve

# Get the instance public IP
IP=$(terraform output -raw instance_public_ip)

# Update Ansible inventory
echo "[aws_instances]" > hosts.ini
echo "my_instance ansible_host=${IP} ansible_user=ec2-user ansible_ssh_private_key_file=\"/path/to/MyKeyPair.pem\"" >> hosts.iniho