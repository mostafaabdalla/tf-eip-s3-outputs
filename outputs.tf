provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "myeip" {
  vpc = true
}

output "eip" {
  value = aws_eip.myeip.public_ip
}

resource "aws_s3_bucket" "mys3" {
  bucket = "choose_unique_name"
}

output "bucket_name" {
  value = aws_s3_bucket.mys3.bucket_domain_name
}