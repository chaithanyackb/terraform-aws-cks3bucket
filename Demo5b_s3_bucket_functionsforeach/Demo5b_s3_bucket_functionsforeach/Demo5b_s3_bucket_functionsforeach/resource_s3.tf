resource "aws_s3_bucket" "bucket1" {
  for_each = toset(["cckhaytestbucket", "ckmayutestbucket", "ckyuvaanebucket"])
  bucket   = each.value
}

output "BucketDetails" {
  value = aws_s3_bucket.bucket1[*]
}
