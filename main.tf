resource "aws_instance" "jenkins_ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  vpc_security_group_ids      = [aws_security_group.jenkins_security_group.id]
  user_data                   = file("./jenkins_install.sh")

  tags = {
    Name = "Jenkins-Server"
  }
}

resource "aws_security_group" "jenkins_security_group" {
  name        = "jenkins_security_group"
  description = "Allows Port SSH and HTTP Traffic"

  ingress {
    description = "Allow SSH Traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTPS Traffic"
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow 8080 Traffic"
    from_port   = 8080
    to_port     = 8080
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}