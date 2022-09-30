################# variables ################
variable "s3_bucket_ckoutput" {
  default     = "cko-st2-bucket"
  description = "Name of the s3 bucket"
  type        = string
}
variable "s3_tags" {
  type = map(any)

  default = {
    createdby   = "chaithaya"
    environment = "dev"
  }
}

variable "s3_regions" {
  type    = string
  default = "eu-west-1"
}
