terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
  }

  backend "s3" {
    bucket = "devops-terraform-provisioners"
    key = "local-exec"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}