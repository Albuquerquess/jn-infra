output "userData" {
  value = aws_instance.orcamento_express_dev.user_data
  description = "User data for the instance"
}

output "ssh_key" {
  value = aws_key_pair.orcamento_express_dev.public_key
  description = "SSH key for the instance" 
}