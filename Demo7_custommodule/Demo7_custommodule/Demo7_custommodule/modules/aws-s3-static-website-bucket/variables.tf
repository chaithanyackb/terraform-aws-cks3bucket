############ Bucket name ##############
variable "chaytestbucket" {
  description = "Name of the s3 bucket"
  type = string
}

############ Tags ##############
variable "ckb" {
  description = "Tags for the bucket"
  type = map(string)
  }
