####################################### Variables ########################################################3

variable "private_key_path" {
  type    = string
  default = "./terraformkeypair.pem"
}
variable "key_name" {
  type        = string
  description = "ckb key name"
  default     = "terraformkeypair"
}
variable "region" {
  type        = string
  default     = "eu-west-1"
  description = "Name of the region to create resource"
}
variable "network_address_space" {
  default = "10.1.0.0/16"
}
variable "subnet_address_space" {
  default = "10.1.0.0/24"
}



