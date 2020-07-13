# Terraform state will be stored in S3
terraform {
  backend "s3" {
    bucket = "rushi-terraform-tfstate"
    key    = "gitops-terraform.tfstate"
    region = "us-east-1"
  }
}



# Use AWS Terraform provider
provider "aws" {
  region = "us-east-1"
}

# Create EC2 instance
resource "aws_instance" "default" {
  ami                    = var.ami
  count                  = var.instance_count
  key_name               = var.key_name
  instance_type          = var.instance_type

  tags = {
    Name = "gitops-terraform-instance"
  }
}

# Create Security Group for EC2
resource "aws_security_group" "default" {
  name = "launch-wizard-1"
}
