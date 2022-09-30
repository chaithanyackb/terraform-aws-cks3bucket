# Terraform configuration

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.chaithanya
    tags = var.new
}
