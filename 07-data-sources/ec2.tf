resource "aws_instance" "web" { # web is for terraform reference only 
  ami           = data.aws_ami.rhel-9.id 
  instance_type = "t3.micro"
#   vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = {
    Name = "data-source-ec2"
  }
}