resource "aws_route" "JN_DEV_ROUTE_TO_JN_VPC" {
  route_table_id = aws_route_table.JN_RT_DEV.id
  gateway_id = aws_internet_gateway.JN_IG_DEV.id
  destination_cidr_block = var.destination_cidr_block
}