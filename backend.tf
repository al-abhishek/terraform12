terraform {
  backend "s3" {
    bucket = "demo-22-05-26"
    key="abhi/terraform.tfstate"
    region = "ap-south-1"
    # encrypt = true
    # dynamodb_table = "terraform-lock"
    use_lockfile = true
  }
}