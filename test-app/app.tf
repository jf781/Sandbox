terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.74.3"
    }
  }
  backend "remote" {
    organization = "Ahead-Demo"
    
    workspaces {
      name = "samplews"
    }
  }
}
provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "server-1" {
  ami           = "ami-830c94e3"
  instance_type = "t2.nano"
  tags = {
    Name   = "server"
  }
}