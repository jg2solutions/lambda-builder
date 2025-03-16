terraform {
  backend "s3" {
    bucket         = "bucket_terraform"
    key            = "lambda/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
  }
}
