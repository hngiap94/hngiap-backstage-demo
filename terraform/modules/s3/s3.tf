resource "aws_s3_bucket" "tech_docs_bucket" {
  bucket = var.name
  tags = {
    Name = var.name
  }
}

# resource "aws_s3_bucket_acl" "tech_docs_bucket_acl" {
#   bucket = aws_s3_bucket.tech_docs_bucket.id
#   acl    = var.acl
# }

resource "aws_s3_bucket_versioning" "tech_docs_bucket_versioning" {
  bucket = aws_s3_bucket.tech_docs_bucket.id
  versioning_configuration {
    status = var.versioning
  }
}

resource "aws_s3_bucket_public_access_block" "tech_docs_bucket_acl" {
  bucket                  = var.name
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
  depends_on              = [ aws_s3_bucket.tech_docs_bucket ]
}