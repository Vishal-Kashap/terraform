provider "aws" {
  region     = "us-east-1"
  access_key = "your_access_key"
  secret_key = "your_secret_key"

}

resource "aws_s3_bucket" "bucket" {
  bucket = bucket_name

  tags = new_bucket
}

output "s3_bucket_id" {
  value = aws_s3_bucket.bucket.id
}
