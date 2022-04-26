output "userData" {
  value = aws_instance.orcamento_express_dev.user_data
  description = "User data for the instance"
}