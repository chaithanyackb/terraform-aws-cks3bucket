variable "s3_bucket_name" {
  default     = "chay-s3bucket-01sept"
  description = "Name of the s3 bucket"
  type        = string
}
variable "s3_tags" {
  type = map(any)

  default = {
    createdby   = "ckb"
    environment = "dev"
  }
}

variable "s3_regions" {
  type    = string
  default = "eu-west-1"
}

