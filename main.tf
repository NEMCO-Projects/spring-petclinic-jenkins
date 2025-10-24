provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "mysql_server" {
  ami           = "ami-0360c520857e3138f"
  instance_type = "t2.micro"
  security_groups = ["sgalltraffic"]  # Reference the existing security group
  key_name      = "mujahed"
}


output  "mysql_server_ip" {
  value = aws_instance.mysql_server.public_ip
}
