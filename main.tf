provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "tomcat_server" {
  ami           = "ami-ami-0933f1385008d33c4"
  instance_type = "t2.micro"
  security_groups = ["sgalltraffic"]  # Reference the existing security group
  key_name      = "mujahed"
}


output  "tomcat_server_ip" {
  value = aws_instance.tomcat_server.public_ip
}
