resource "aws_network_acl" "jn_acl_dev" {
  vpc_id = aws_vpc.JN_VPC_DEV.id
  subnet_ids = [aws_subnet.jn_dev_public.id]

  ingress {
    protocol = "tcp"
    rule_no  = 100
    action   = "allow"
    from_port = 22
    to_port   = 22
    cidr_block  = var.destination_cidr_block
  }

  ingress {
    protocol = "tcp"
    rule_no  = 200
    action   = "allow"
    from_port = 80
    to_port   = 80
    cidr_block  = var.destination_cidr_block
  }

  ingress {
    protocol = "tcp"
    rule_no  = 300
    action   = "allow"
    from_port = 443
    to_port   = 443
    cidr_block  = var.destination_cidr_block
  }

  egress {
    protocol = "tcp"
    rule_no  = 400
    action   = "allow"
    from_port  = 0
    to_port    = 65535
    cidr_block  = var.destination_cidr_block
  }

  tags = {
    Name     = "orçamento Express DEV - Network ACL"
    resource = "Network ACL"
  }
}