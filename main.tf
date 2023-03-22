provider "aws" {
  profile = "my_aws"
  region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "myawsbucket98959895"
  acl    = "private"

  tags = {
    Name        = "my_bucket"
    Environment = "Dev"
  }
}

