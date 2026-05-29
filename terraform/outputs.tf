output "instance_public_ip" {
  description = "Public IP of the Minecraft server"
  value       = aws_instance.minecraft_server.public_ip
}

output "ssh_command" {
  description = "SSH command used by Ansible"
  value       = "ssh ubuntu@${aws_instance.minecraft_server.public_ip}"
}