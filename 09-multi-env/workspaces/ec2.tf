resource "aws_instance" "web" { # web is for terraform reference only 
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = lookup(var.instance_type, terraform.workspace)

  tags = {
    Name = "workspace-ec2"
  }
}