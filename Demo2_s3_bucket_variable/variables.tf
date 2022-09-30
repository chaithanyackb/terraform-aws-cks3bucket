################# variables ################
variable "s3_bucket_ckb" {
  default     = "ckb-st2-bucket"
  description = "Chaithanya s3 bucket"
  type        = string
}
variable "s3_tags" {
  type = map(any)

  default = {
    createdby   = "chaithanya"
    environment = "dev"
  }
}

variable "s3_regions" {
  type    = string
  default = "eu-west-1"
}
