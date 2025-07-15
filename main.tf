provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "curso-IaC" {
  ami           = "ami-0150ccaf51ab55a51"
  instance_type = "t2.micro"
  key_name      = "curso-IaC"
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y python3
              cd /home/ec2-user
              echo "<h1>Feito com Terraform</h1>" > index.html
              nohup python3 -m http.server 8080 &
            EOF


  tags = {
    Name = "curso-IaC"
  }
}