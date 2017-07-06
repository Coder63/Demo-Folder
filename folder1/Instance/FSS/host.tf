
resource "aws_instance" "test" {

  ami = "ami-efd0428f"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${var.ssh_http_sg_id}"]
  subnet_id="subnet-e944548e"

  tags {
    Name = "terraform-FSS-two"
    SG= "${var.ssh_http_sg_id}"
    VPC="vpc-b2ed2ad4"
    subnet = "subnet-e944548e"
  }
}
