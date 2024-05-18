terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
  backend "s3" {
    bucket = "remote-state-practice"
    key    = "praciceremote-state-test"
    region = "us-east-1"
    dynamodb_table = "remote-state-practice-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}