resource "aws_subnet" "jn_dev_private" {
  vpc_id     = aws_vpc.JN_VPC_DEV.id
  cidr_block = var.aws_subnet_private_cidr_block
  tags = {
    Name     = "orçamento Express DEV - Private Subnet"
    resource = "Subnet"
  }
}