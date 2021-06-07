terraform {
  required_version = ">=0.12.13"
  backend "s3" {
    bucket         = "tfstate-cibiri-demo"
    key            = "terraform-lambda-module.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 3.0"
}