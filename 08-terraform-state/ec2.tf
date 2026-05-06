resource "aws_instance" "web" { # web is for terraform reference only 
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  tags = {
    Name = "tf-remote-state-ec2"
  }
}
