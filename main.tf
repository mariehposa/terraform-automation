terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 0.14"

  backend "remote" {
    organization = "terraform-automation"

    workspaces {
      name = "terraform-automation"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "onebucket" {
  bucket = "bucket955815154140"
  acl    = "public-read"

  versioning {
    enabled = true
  }

  tags = {
    Name  = "My bucket"
    Owner = "Mariam"
  }
}