terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.69.0"
    }
  }

  backend "s3" {
    bucket         = "harsha81-remote-state"
    key            = "for-each-demo"
    dynamodb_table = "81s-locking"
    region         = "us-east-1"
  }
}

provider "aws" {
  # configuration options
  region = "us-east-1"
}