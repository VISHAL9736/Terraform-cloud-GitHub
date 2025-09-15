terraform {
  required_version = "~> 1.13.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.region
}

variable "region" {
  default = "us-east-1"
}

resource "aws_instance" "vishalinfra" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
}
