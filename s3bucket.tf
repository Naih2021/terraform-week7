##s3bucket
resource "aws_s3_bucket" "group_s3" {
  bucket = "naihbucket" 
  acl    = "private"              
}


terraform {
  backend "s3" {
    bucket         = "naihbucket"
    key            = "terraform.tfstate" 
    region         = "us-east-1"
  }
}