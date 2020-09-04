resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.tenancy}"

  tags = {
    Name      = "${var.vpc_name}"
    Comment   = "Created by Terraform"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.subnet_cidr}"

  tags = {
    Name      = "${var.subnet_name}"
    Comment   = "Created by Terraform"
  }
}