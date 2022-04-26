terraform {
  required_version = "1.1.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.9.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "JNRoot"
  default_tags {
    tags = var.aws_default_tags
  }
}