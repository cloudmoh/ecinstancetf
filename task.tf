provider "aws" {
  region = "ap-south-1" 
}

resource "aws_instance" "task" {
  ami           = "ami-06791f9213cbb608b" 
  instance_type = "t2.micro"             
  subnet_id     = aws_subnet.default.id   
}

resource "aws_subnet" "default" {
  vpc_id                  = aws_vpc.default.id
  cidr_block              = "172.31.16.0/20" 
  availability_zone       = "ap-south-1b" 
  map_public_ip_on_launch = true
}

resource "aws_vpc" "default" {
  cidr_block = "172.31.0.0/16"  
  enable_dns_support = true
  enable_dns_hostnames = true
}

resource "aws_security_group" "example" {
  name        = "example"
  description = "Example security group for EC2 instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



output "public_ip" {
  value = aws_instance.task.public_ip
}

