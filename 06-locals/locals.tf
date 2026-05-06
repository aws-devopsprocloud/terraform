locals {
  instance-type = var.is_prod ? "t3.small" : "t3.micro"
}