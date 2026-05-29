#!/bin/bash
set -e

cd terraform

terraform init
terraform fmt
terraform validate
terraform apply -auto-approve

PUBLIC_IP=$(terraform output -raw instance_public_ip)

cd ..

echo "[minecraft]" > ansible/inventory.ini
echo "$PUBLIC_IP ansible_user=ubuntu ansible_ssh_private_key_file=/Users/ot12345lol/.ssh/minecraft-iac-key ansible_ssh_common_args='-o StrictHostKeyChecking=no'" >> ansible/inventory.ini

echo "Minecraft server public IP: $PUBLIC_IP"
