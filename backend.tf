terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket321"
    key            = "terraform.tfstate"
    region         = var.region
    encrypt        = true
    dynamodb_table = "my-lock-table"
    acl            = "private"
  }
}
