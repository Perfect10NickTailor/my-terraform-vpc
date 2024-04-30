provider "aws" {
  region = "us-west-2"
}

resource "aws_key_pair" "my-nick-test-key" {
  key_name   = "my-nick-test-key"
  public_key = file("${path.module}/terraform-aws-key.pub")
}

resource "aws_vpc" "vpc2" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "newsubnet" {
  vpc_id                  = aws_vpc.vpc2.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-west-2a"  # Choose a supported availability zone
  map_public_ip_on_launch = true
}

module "web_server" {
  source           = "./module/instance"
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  key_name         = var.key_name_instance
  subnet_id        = aws_subnet.newsubnet.id
  instance_count   = 2  // Specify the number of instances you want
  security_group_id = aws_security_group.newcpanel.id
}



