terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-42"
    key            = "website/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform_state_locks"
  }
}