# # # # # ENV # # # # # 

variable "current_environment" {
  type        = string
  description = "The current environment"
}
variable "aws_profile" {
  type        = string
  description = "AWS profile to use in environment"
}

variable "aws_region" {
  type        = string
  description = "AWS region to use in environment"
}

variable "aws_default_tags" {
  type        = map(string)
  description = "AWS default tags to use in environment"
}

# # # # # EC2 # # # # # 

variable "aws_ami" {
  type        = string
  description = "AWS ami to use in environment"
}

variable "aws_instance_type" {
  type        = string
  description = "AWS instance to use in environment"
}

variable "aws_subnet_public_cidr_block" {
  type        = string
  description = "AWS subnet public cidr block to use in environment"
}

variable "aws_subnet_private_cidr_block" {
  type        = string
  description = "AWS subnet private cidr block to use in environment"
}

# # # # # VPC # # # # # 

variable "aws_vpc_cird_block" {
  type        = string
  description = "AWS VPC CIRD block to use in environment"
}

variable "aws_vpc_enable_dns_hostnames" {
  type        = bool
  description = "AWS DNS hostname to use in environment"
}

variable "subnet_map_public_ip_on_launch" {
  type        = bool
  description = "AWS subnet map public ip on launch to use in environment"
}

variable "destination_cidr_block" {
  type        = string
  description = "AWS destination cidr block to use in environment"
}