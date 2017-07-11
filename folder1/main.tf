provider "aws" {
  region = "${var.region}"
  profile = "${var.profile}"
}

/*
module "VPC" {
  source = "./VPC"
  vpc_cidr= "${var.vpc_cidr}"

}

*/

module "Security_Group"  {
  source = "./Security_Group"
  ip_range = "${var.ip_range}"
}
module "CoreInfra" {
  source = "./Instance/CoreInfra"
  ssh_http_sg_id = "${module.Security_Group.ssh_http_sg_id}"
}
module "FSS" {
  source = "./Instance/FSS"
  ssh_http_sg_id = "${module.Security_Group.ssh_http_sg_id}"
}
