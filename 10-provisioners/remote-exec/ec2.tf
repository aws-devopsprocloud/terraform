resource "aws_instance" "web" { # web is for terraform reference only 
  ami           = var.ami-id
  instance_type = var.instance-type
  vpc_security_group_ids = [aws_security_group.allow_mac.id]

  tags = var.ami-tags


 provisioner "remote-exec" {
    inline = [
      "sudo dnf install nginx -y",
      "echo 'hello from terraform remote-exec' > /tmp/reote-exec.txt",
      "sudo systemctl enable nginx",
      "sudo systemctl restart nginx"
    ]

    connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "ec2-user"
      password    = "DevOps321"
      timeout     = "5m"
    }
  }

}

resource "aws_security_group" "allow_mac" {
  name        = var.sg-name
  description = var.sg-description
#   vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_all"
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.cidr-blocks
    # ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
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
