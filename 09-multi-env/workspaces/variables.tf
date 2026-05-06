variable "instance_type" {
  type = map 
  default = {
    dev = "t3.micro" 
    prod = "t3.small"
  }
}

# Here dev is the terraform.workspace 
# Here prod is terraform.workspace 