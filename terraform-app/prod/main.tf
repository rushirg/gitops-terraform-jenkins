provider "aws" {
  region = "${var.aws_region}"
}

module "my_vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "${var.vpc_cidr_address}"
  tenancy     = "${var.instance_tenancy}"
  vpc_id      = "${module.my_vpc.vpc_id}"
  subnet_cidr = "${var.subnet_cidr_address}"
  vpc_name    = "${var.vpc_name}"
  subnet_name = "${var.subnet_name}"
}

module "my_ec2" {
  source        = "../modules/ec2"
  ami_id        = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${module.my_vpc.subnet_id}"
  ec2_count     = "${var.ec2_count}"
  server_name   = "${var.server_name}"
}
