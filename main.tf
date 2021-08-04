/**
* Fetch the most recent Ubuntu 20.04 AMI by default.
*/

terraform {
  required_version = ">= 1.0.0"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.50.0"
    }

  }
}

data "aws_ami" "ubuntu" {
  most_recent = var.most_recent
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/${var.ami_slug}-${var.arch}-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = var.owners
}
