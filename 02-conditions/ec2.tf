resource "aws_instance" "web" { # web is for terraform reference only 
  ami           = var.ami-id
  instance_type = var.instance-name == "web" ? "t3.micro" : "t3.small"
#   vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = var.ami-tags
}

