resource "aws_s3_bucket" "bckt" {
  bucket = var.s3_bucket_name
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.bckt.id

  rule {
    apply_server_side_encryption_by_default {
    sse_algorithm = "AES256"
   }
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.bckt.id
  
  versioning_configuration {
  status = "Enabled"
 }
}

resource "aws_s3_bucket_acl" "ckb_bucket_acl" {
  bucket = aws_s3_bucket.bckt.id
  acl = "private"
}

// terraform backend
terraform {
 backend "s3" {
 bucket = "chay-s3bucket-01sept"
 key = "globalstate/s3/terraform.tfstate"
 region = "eu-west-1"
 # Replace this with your DynamoDB table name!
 dynamodb_table = "chay-01sept-dblocks"
 encrypt = true
 }
}



resource "aws_dynamodb_table" "locks" {
  name = "chay-01sept-dblocks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

 attribute {
   name = "LockID"
   type = "S"
 }
}