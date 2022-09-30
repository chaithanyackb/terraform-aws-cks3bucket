############### aws s3 resource ##############
resource "aws_s3_bucket" "ckbbucket" {
  bucket = local.bucketid
  tags = {
    env = lookup(var.s3_tags, "environment")
  }
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.ckbbucket.id
  acl    = "private"
}


locals {
  bucketid = "ck-local-bucket"
}