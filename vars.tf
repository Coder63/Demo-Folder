variable "region" {
  default = "us-west-2"
}


variable "aws_accesskey"{
  default =  "aws_access_key"
  }

variable "aws_secret_accesskey"{
  default = "aws_secret_access_key"
  }

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default = "172.0.0.0/16"
}

variable "ip_range" {
  default = "0.0.0.0/0" # Change to your IP Range!
}
