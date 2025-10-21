provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "saw-s3.sctp-sandbox.com"
    key    = "saw.tfstate"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "saw-bucket"
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}