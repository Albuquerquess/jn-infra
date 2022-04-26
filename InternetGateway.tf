resource "aws_internet_gateway" "JN_IG_DEV" {
  vpc_id = aws_vpc.JN_VPC_DEV.id

  tags = {
    Name     = "orçamento Express DEV - Internet Gateway"
    resource = "Internet Gateway"
  }
}
