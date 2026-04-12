terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.40.0"
    }
  }

  /*backend "s3" {
  bucket = "milind-practice-14"
  key = "terraform.tfstate"
  region = "ap-south-1"
  dynamodb_table = "State-Locker"
  }*/
}

provider "aws" {
  region = var.aws_region
}

