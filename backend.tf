terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket321"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "my-lock-table"
    acl            = "private"
  }
}
