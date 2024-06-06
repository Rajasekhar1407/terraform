terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
  backend "s3" {
    bucket = "remote-state-practice"
    key    = "provisioners"
    region = "us-east-1"
    dynamodb_table = "remote-state-practice-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}