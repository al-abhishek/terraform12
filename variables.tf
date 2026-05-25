variable "aws_region" {
  description = "aws_region"
  type = string
  default     = "ap-south-1"
}

#  variable "aws_s3_bucket" {
#    description = "s3_bucket"

#  }

variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
}

variable "ami_id" {
    description = "EC2 AMI id"
  type = string
}

//cidr for vpc
variable "cidr" {
  default = "10.0.0.0/16"
}