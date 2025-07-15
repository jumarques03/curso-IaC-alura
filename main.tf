provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "curso-IaC" {
  ami           = "ami-0150ccaf51ab55a51"
  instance_type = "t2.micro"
  key_name = "curso-IaC"

  tags = {
    Name = "Instancia do Curso de IaC"
  }
}