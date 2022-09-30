resource "aws_s3_bucket" "bucket1" {
  bucket = "jaya-tests3-${terraform.workspace}"
}

output "BucketDetails" {
  value = aws_s3_bucket.bucket1
}
