#!/bin/bash
set -e

PUBLIC_IP=$(cd terraform && terraform output -raw instance_public_ip)

echo "Testing Minecraft server at $PUBLIC_IP:25565"
nmap -sV -Pn -p T:25565 "$PUBLIC_IP"
