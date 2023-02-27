# Create S3 Bucket per environment with for_each and maps

resource "aws_s3_bucket" "my-s3bucket" {

  # for_each Meta-Argument
  for_each = {
    dev  = "devapp-bucket"
    qa   = "qaqapp-bucket"
    stag = "stagapp-bucket"
    prod = "prodapp-bucket"
  }

  bucket = "${each.key}-${each.value}"
  acl    = "private"

  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}
