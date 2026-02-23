resource "aws_instance" "example" {
  ami = "ami-0220d79f3f480ecf5"
  vpc_security_group_ids = [aws_security_group.security-group1.id]

  instance_type = "t3.micro"
  tags = {
    Name = "terraform"
    Project = "Roboshop"
  }

}

resource "aws_security_group" "security-group1" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
  tags = {
    Name = "Terraform-securtiy-group"
  }
}