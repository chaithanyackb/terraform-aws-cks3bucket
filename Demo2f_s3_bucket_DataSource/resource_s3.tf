data "aws_s3_bucket" "bucket1" {
  bucket = "ckb-st2-bucket"
}

output "BucketDetails" {
  value = data.aws_s3_bucket.bucket1
}

