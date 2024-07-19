provider "aws" {
  region = var.aws_region
}

provider "random" {}

variable "aws_region" {
  description = "The AWS region to deploy the instance"
  type        = string
}

variable "ami" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use for the instance"
  type        = string
}

variable "prefix_name" {
  description = "The prefix name for the instance"
  type        = string
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
}

resource "random_id" "name_suffix" {
  byte_length = 4
}

resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = merge(
    var.common_tags,
    {
      Name = "${var.prefix_name}-${random_id.name_suffix.hex}"
    }
  )
}

output "instance_id" {
  value = aws_instance.ec2.id
}

output "instance_public_ip" {
  value = aws_instance.ec2.public_ip
}
