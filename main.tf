# S3 static website bucket


resource "aws_s3_bucket" "my-static-website" {
  bucket = "${var.bucket_name}-${var.bucket_env}" # give a unique bucket name
  force_destroy = true
  tags = {
    Name = "By ${var.bucket_name}"
    Environment = var.bucket_env
  }
}

resource "aws_s3_bucket_website_configuration" "my-static-website" {
  bucket = aws_s3_bucket.my-static-website.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "index.html"
  }
}

resource "aws_s3_bucket_versioning" "my-static-website" {
  bucket = aws_s3_bucket.my-static-website.id
  versioning_configuration {
    status = "Enabled"
  }
}

# S3 bucket ACL access

resource "aws_s3_bucket_ownership_controls" "my-static-website" {
  bucket = aws_s3_bucket.my-static-website.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "my-static-website" {
  bucket = aws_s3_bucket.my-static-website.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "my-static-website" {
  depends_on = [
    aws_s3_bucket_ownership_controls.my-static-website,
    aws_s3_bucket_public_access_block.my-static-website,
  ]

  bucket = aws_s3_bucket.my-static-website.id
  acl    = "public-read"
}




# s3 static website url

output "website_url" {
  value = "http://${aws_s3_bucket.my-static-website.bucket}.s3-website.us-east-1.amazonaws.com"
}