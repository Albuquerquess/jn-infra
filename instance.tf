resource "aws_instance" "orcamento_express_dev" {
  instance_type               = var.aws_instance_type
  ami                         = var.aws_ami
  subnet_id                   = aws_subnet.jn_dev_public.id
  associate_public_ip_address = true
  security_groups             = [aws_security_group.allow_ssh_https.id]

  user_data = "${file("${path.root}/script/installDocker.sh")}"
  tags = {
    Name     = "orçamento Express DEV"
    resource = "EC2"
  }
}