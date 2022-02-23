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
  region        = "us-west-2"
  access_key    = var.access_key_id
  access_secret = var.access_key_secret
  
}