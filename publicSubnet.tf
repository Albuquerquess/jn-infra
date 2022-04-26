resource "aws_subnet" "jn_dev_public" {
  vpc_id     = aws_vpc.JN_VPC_DEV.id
  cidr_block = var.aws_subnet_public_cidr_block
  map_public_ip_on_launch = var.subnet_map_public_ip_on_launch
  tags = {
    Name     = "orçamento Express DEV - Public Subnet"
    resource = "Subnet"
  }
}
