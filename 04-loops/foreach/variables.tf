# Variable precedence 
# 1. command line using -var (if we parse it as a last argument in the commandline)
# 2. -var-file 
# 3. terraform.tfvars  
# 4. environmental variables

variable "ami-id" {
  type = string 
  default = "ami-0220d79f3f480ecf5"
}

variable "instance-names" {
  type = map
  default = {
    mongodb = "t3.small"
    mysql = "t3.small"
    frontend = "t3.micro"
  }
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

variable "zone_id" {
  type = string
  default = "Z059178135GSKTAXVUIAQ"
}

variable "domain_name" {
  type = string 
  default = "devopsprocloud.in"
  
}
