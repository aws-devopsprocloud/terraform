# Variable precedence 
# 1. command line using -var (if we parse it as a last argument in the commandline)
# 2. -var-file 
# 3. terraform.tfvars  
# 4. environmental variables

variable "ami-id" {
  type = string 
  default = "ami-0220d79f3f480ecf5"
}

variable "is_prod" {
  type = bool
  default = true
}

