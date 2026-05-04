resource "aws_instance" "web" { # web is for terraform reference only 
  ami           = var.ami-id
  instance_type = var.instance-type
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = {
    Name = "EC2"
  }
}

resource "aws_security_group" "allow_all" {
  name        = var.sg-name
  description = var.sg-description
#   vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_all"
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr-blocks
    # ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr-blocks
    # ipv6_cidr_blocks = ["::/0"]
  }
}
