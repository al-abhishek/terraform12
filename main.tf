provider "aws" {
  region = "ap-south-1"

}


resource "aws_s3_bucket" "mybucekt" {
  bucket = "demo-22-05-26"
}

# resource "aws_instance" "myec2" {
#   ami = var.ami_id
#   instance_type = var.instance_type

#   tags = {
#     Name="terraform_Ec2"

#   }
# }

# resource "aws_dynamodb_table" "terraform-lock" {
#   name = "terraform-lock"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key = "LockID"

#    attribute {
#     name = "LockID"
#     type = "S"
#   }
# }