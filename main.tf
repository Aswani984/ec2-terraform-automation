provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0f559c3642608c138" # Amazon Linux (example)
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

variable "instance_type" {}
variable "instance_name" {}
