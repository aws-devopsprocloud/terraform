#---------------------------
#   DevOps-Practice AMI    |
#---------------------------

data "aws_ami" "rhel-9" {
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

#-------------------
#   Default VPC    |
#-------------------

data "aws_vpc" "default" {
  default = true 
}