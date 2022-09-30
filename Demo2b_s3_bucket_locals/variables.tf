################# variables ################

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
