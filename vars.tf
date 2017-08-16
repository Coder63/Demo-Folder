variable "region" {
  default = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default = "172.0.0.0/16"
}

variable "ip_range" {
  default = "0.0.0.0/0" # Change to your IP Range!
}
