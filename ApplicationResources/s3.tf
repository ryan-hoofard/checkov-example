resource "aws_s3_bucket" "this" {
  bucket = var.s3_bucket_name
  
  force_destroy = true
  tags = {
    Service     = "S3"
  }
}

# Block public access to the bucket
resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id
  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true
}

# Enable server-side encryption (SSE-S3) with bucket key enabled
resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"  # Default encryption (SSE-S3)
    }
    bucket_key_enabled = true  # Enable bucket key
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "s3_objects_transition" {
  bucket = aws_s3_bucket.this.id
  rule{
    id     = "delete rule for checkov file versions"
    status = "Enabled"
    noncurrent_version_expiration {
      noncurrent_days = 30
    }
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = "Enabled"
  }
}