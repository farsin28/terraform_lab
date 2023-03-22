#provider "aws" {
#  profile = "my_aws"
#  region  = var.region

provider "aws" {
  profile = "my_aws"
  region  = "${var.region}"
}

resource "aws_s3_bucket" "b" {
  bucket = "myawsbucket98959895"
  acl    = "private"

  tags = {
    Name        = "My_bucket"
    Environment = "Dev"
  }
}

variable "region" {
  
}
