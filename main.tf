provider "aws" {
  profile = "my_aws"
}

resource "aws_s3_bucket" "b" {
  bucket = "myawsbucket98959895"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

