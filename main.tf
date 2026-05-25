provider "aws" {
  region = "ap-south-1"

}

resource "aws_s3_bucket" "mybucekt" {
  bucket = "demo-22-05-26"
}

resource "aws_key_pair" "example" {
  key_name   = "terraform-demo-abhi"
  public_key = file("C:/Users/acelucidUser/.ssh/id_rsa.pub")
}

resource "aws_instance" "myec2" {
  ami = var.ami_id
  instance_type = var.instance_type

  key_name = aws_key_pair.example.key_name

  tags = {
    Name="terraform_Ec2"

  }
}

# resource "aws_dynamodb_table" "terraform-lock" {
#   name = "terraform-lock"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key = "LockID"

#    attribute {
#     name = "LockID"
#     type = "S"
#   }
# }

# resource "aws_key_pair" "example" {
#   key_name   = "terraform-demo-abhi"
#   public_key = file("C:/Users/acelucidUser/.ssh/id_rsa.pub")
# }

resource "aws_vpc" "myvpc" {
  cidr_block= var.cidr
}


resource "aws_subnet" "sub1" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    name="mysubnet"
  }
}