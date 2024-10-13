# Specify the AWS provider
provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

# Define the S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"  # Change to your desired bucket name
  acl    = "private"

  tags = {
    Name        = "My Bucket"
    Environment = "Dev"
  }
}
