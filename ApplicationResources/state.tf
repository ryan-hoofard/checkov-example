terraform {
  backend "s3" {
    encrypt = true
    key     = "checkov-example.tfstate"
    region  = "us-west-2"
  }
}