provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = var.ami_id   # ✅ MUST use variable
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
