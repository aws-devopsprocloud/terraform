variable "ami-id" {
  type = string 
  default = "ami-0220d79f3f480ecf5"
}

variable "instance-type" {
  type = string
  default = "t3.small"
}

variable "sg-name" {
  type = string
  default = "allow_all"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "cidr-blocks" {
  type = list 
  default = ["0.0.0.0/0"]
}