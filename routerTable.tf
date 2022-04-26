resource "aws_route_table" "JN_RT_DEV" {
  vpc_id = aws_vpc.JN_VPC_DEV.id

  route {
    cidr_block = "0.0.0.0/0" # <- Transform to env var
    gateway_id = aws_internet_gateway.JN_IG_DEV.id
  }

  tags = {
    Name     = "orçamento Express DEV - Route Table"
    resource = "Route Table"
  }
}

resource "aws_route_table_association" "JN_RT_ASSOCIATION" {
  subnet_id = aws_subnet.jn_dev_public.id
  route_table_id = aws_route_table.JN_RT_DEV.id
}