resource "aws_vpc" "JN_VPC_DEV" {
  cidr_block           = var.aws_vpc_cird_block
  enable_dns_hostnames = var.aws_vpc_enable_dns_hostnames
  tags = {
    Name     = "orçamento Express DEV"
    resource = "VPC"
  }
}