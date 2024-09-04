terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

backend "s3" {
  bucket = "lingadevops-remote-state"
  key = "expense-dev-frontend"
  region = "us-east-1"
  dynamodb_table = "lingaiah-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

