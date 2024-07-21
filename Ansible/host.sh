#!/bin/bash

if [ "$1" == "--list" ]; then
    cat <<EOF
{
  "aws_instances": {
    "hosts": [
      "34.228.32.244"
    ],
    "vars": {
      "ansible_user": "ec2-user",
      "ansible_ssh_private_key_file": "C:/Users/Micah/Cloud Engineering Academy/Terraform-meets-Ansible/MyKeyPair.pem"
    }
  },
  "my_group": {
    "hosts": [
      "192.168.5.67"
    ],
    "vars": {
      "ansible_user": "myuser",
      "ansible_ssh_private_key_file": "C:/Users/Micah/Cloud Engineering Academy/Terraform-meets-Ansible/MyKeyPair.pem"
    }
  },
  "my_instance": {
    "hosts": [
      "34.228.32.244"
    ],
    "vars": {
      "ansible_user": "ec2-user",
      "ansible_ssh_private_key_file": "/home/micah/.ssh/MyKeyPair.pem"
    }
  },
  "_meta": {
    "hostvars": {
      "34.228.32.244": {
        "ansible_host": "34.228.32.244"
      },
      "192.168.5.67": {
        "ansible_host": "192.168.5.67"
      }
    }
  }
}
EOF

else
    echo "Usage: $0 --list"
fi