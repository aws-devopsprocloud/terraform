resource "aws_instance" "web" { # web is for terraform reference only 
  ami           = var.ami-id
  instance_type = var.instance-type

  tags = var.ami-tags


provisioner "local-exec" {
    command = "echo Executing at the time of CREATION"
    when = create
  }

provisioner "local-exec" {
    command = "echo The server's IP address is ${self.private_ip}"
  }

provisioner "local-exec" {
    command = "echo Executing at the time of CREATION"
    when = destroy
  }

}

