############### aws s3 resource ##############
resource "aws_s3_bucket" "ckbbucket" {
bucket = var.s3_bucket_name
tags = {
env = lookup(var.s3_tags, "environment")
}
   provisioner "local-exec" {
    command = "echo ${self.bucket} >> private_ips.txt"
    
  }
  provisioner "local-exec" {
    command = "echo ${self.bucket_domain_name} >> private_ips.txt"
    
  }
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
bucket = aws_s3_bucket.ckbbucket.id
acl = "private"
}

output bucketname {
	value = aws_s3_bucket.ckbbucket.id
}
output bucketaclname {
	value = aws_s3_bucket_acl.example_bucket_acl.bucket
}