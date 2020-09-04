variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr_address"{
  default = "10.0.0.0/16"
}

variable "instance_tenancy" {
  default = "default"
}

variable "subnet_cidr_address"{
  default = "10.0.1.0/24"
}

variable "ami_id"{
  default = "ami-02354e95b39ca8dec"
}

variable "instance_type"{
  default = "t2.micro"
}

variable "ec2_count"{
  default = "1"
}

variable "server_name" {
  default = "ProdServer"
}

variable "vpc_name"{
  default = "ProdVpc"
}

variable "subnet_name"{
  default = "ProdSubnet"
}