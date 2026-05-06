output "ami_id" {
  value = data.aws_ami.rhel-9.id
}

output "default_vpc_id" {
  value = data.aws_vpc.default.id 
}