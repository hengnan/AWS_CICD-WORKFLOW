terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "backend" {
  source                                              = "./modules/remote_backend"
  iam_user_name                                       = var.iam_user_name
  bucket_name                                         = var.bucket_name
  table_name                                          = var.table_name
}