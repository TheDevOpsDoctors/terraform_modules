variable "region" {}

variable "subnet_mask_prefix" {}

variable "app_name" {}

variable "env" {}

variable "availability_zones" {
  default = {
    "us-east-1" = "us-east-1a,us-east-1b,us-east-1c,us-east-1e"
    "eu-west-1" = "eu-west-1a,eu-west-1b,eu-west-1c"
  }
}

variable "pub_subnet_mask_suffixes" {
  default = ["0.0/19", "32.0/19", "64.0/19", "96.0/19"]
}

variable "pri_subnet_mask_suffixes" {
  default = ["128.0/19", "160.0/19", "192.0/19", "224.0/19"]
}
