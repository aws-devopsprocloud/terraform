resource "aws_instance" "web" { # web is for terraform reference only 
  ami           = var.ami-id
  instance_type = local.instance-type
  
  tags = {
    Name = "locals-ec2"
  }
}
