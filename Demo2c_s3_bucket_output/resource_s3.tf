############### aws s3 resource ##############
resource "aws_s3_bucket" "ckobucket" {
  bucket = var.s3_bucket_ckoutput
  tags = {
    env = lookup(var.s3_tags, "environment")
  }
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.ckobucket.id
  acl    = "private"
}

output "bucketname" {
  value = aws_s3_bucket.ckobucket.id
}
output "bucketaclname" {
  value = aws_s3_bucket_acl.example_bucket_acl.bucket
}