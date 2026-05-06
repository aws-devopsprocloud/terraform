# Variable precedence 
# 1. command line using -var (if we parse it as a last argument in the commandline)
# 2. -var-file 
# 3. terraform.tfvars  
# 4. environmental variables

variable "ami-id" {
  type = string 
  default = "ami-0220d79f3f480ecf5"
}

variable "instance-type" {
  type = string
  default = "t3.micro"
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

variable "sg-name" {
  type = string
  default = "allow_mac"
}

variable "sg-description" {
  type = string
  default = "Allowing to connect from my Macbook"
}

variable "cidr-blocks" {
  type = list 
  default = ["0.0.0.0/0"]
}
