variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr_address"{
  default = "192.168.0.0/16"
}

variable "instance_tenancy" {
  default = "default"
}

variable "subnet_cidr_address"{
  default = "192.168.1.0/24"
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
  default = "DevServer"
}

variable "vpc_name"{
  default = "DevVpc"
}

variable "subnet_name"{
  default = "DevSubnet"
}