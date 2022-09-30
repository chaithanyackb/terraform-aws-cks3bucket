############### aws s3 resource ##############
resource "aws_s3_bucket" "ckbucket" {
bucket = var.s3_bucket_name
tags = {
env = lookup(var.s3_tags, "environment")
}
}

resource "aws_s3_bucket_acl" "ckb_bucket_acl" {
bucket = aws_s3_bucket.ckbucket.id
acl = "private"
}

output bucketname {
	value = aws_s3_bucket.ckbucket.id
}
output bucketaclname {
	value = aws_s3_bucket_acl.ckb_bucket_acl.bucket
}