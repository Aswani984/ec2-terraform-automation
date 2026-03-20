provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-05d2d839d4f73aafb" # Amazon Linux (example)
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

