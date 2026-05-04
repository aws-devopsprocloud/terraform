resource "aws_instance" "web" { # web is for terraform reference only 
  ami           = var.ami-id
  instance_type = var.instance-type

  tags = {
    Name = "ec2"
  }
}

