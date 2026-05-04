variable "ami-id" {
  type = string 
  default = "ami-0220d79f3f480ecf5"
}

variable "instance-name" {
  type = string
  default = "catalogue" # if we change it to mongodb or any other component then the instance type will be changed in ec2.tf as per the condition
}

variable "ami-tags" {
  type = map 
  default = {
    Name = "EC2"
    Project = "roboshop"
    Environment = "dev"
    Terraform = "true"
    Component = "web"
  }
}