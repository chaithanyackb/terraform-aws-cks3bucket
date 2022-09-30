resource "aws_s3_bucket" "ckb1" {
bucket = "ckblocal-first-st-bucket"
}

resource "aws_s3_bucket_acl" "ckb_bucket_acl" {
bucket = aws_s3_bucket.ckb1.id
acl = "private"
}

