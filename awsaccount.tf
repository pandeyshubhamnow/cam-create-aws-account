terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  region     = var.region
}

resource "aws_organizations_account" "account" {
  email = var.root_email
  name = var.account_name
  tags = var.tags
}


