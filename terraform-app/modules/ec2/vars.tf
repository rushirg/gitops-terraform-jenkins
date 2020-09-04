variable "ami_id" {}

variable "instance_type" {
  default = "t2.mmicro"
}

variable "subnet_id" {}

variable "ec2_count" {
  default = "1"
}

variable "server_name"{
  default = "Ec2Server"
}