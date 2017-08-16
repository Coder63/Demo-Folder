provider "aws" {
  region = "${var.region}"
  access_key = "${var.aws_accesskey}"
  secret_key = "${var.aws_secret_accesskey}"
}

module "VPC" {
  source = "./VPC"
  vpc_cidr= "${var.vpc_cidr}"
}

/*
module "Security_Group"  {
  source = "./Security_Group"
  ip_range = "${var.ip_range}"
  terraform_vpc_id="${module.VPC.terraform_vpc_id}"

}

module "CoreInfra" {
  source = "./Instance/CoreInfra"
  ssh_http_sg_id = "${module.Security_Group.ssh_http_sg_id}"
  terraform_vpc_id = "${module.VPC.terraform_vpc_id}"
  terraform_subnet_id="${module.VPC.terraform_subnet_id}"
}

module "FSS" {
  source = "./Instance/FSS"
  ssh_http_sg_id = "${module.Security_Group.ssh_http_sg_id}"
  terraform_vpc_id = "${module.VPC.terraform_vpc_id}"
  terraform_subnet_id="${module.VPC.terraform_subnet_id}"
}
*/
