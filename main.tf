provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-05d2d839d4f73aafb"
  instance_type = "c7i-flex.large"
  key_name      = "jenkinkey"

  tags = {
    Name = "Ganesh-DevOps"
  }
}
