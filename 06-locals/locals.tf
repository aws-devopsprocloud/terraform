locals {
  instance-type = var.instance-names[count.index] == "mongodb" || var.instance-names[count.index] == "mysql" ? "t3.small" : "t3.micro"
  ip = var.instance-names[count.index] == "frontend" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip
}