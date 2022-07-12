
data "aws_iam_policy_document" "this" {
  statement {
    sid = "1"

    actions = [
      "s3:GetObject",
    ]

    resources = [
      "arn:aws:s3:::${var.domain_name}/*",
    ]

    principals {
      type = "AWS"

      identifiers = [
        aws_cloudfront_origin_access_identity.origin_access_identity.iam_arn,
      ]
    }
  }
}

resource "aws_s3_bucket" "this" {
  bucket = var.domain_name
}

resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.id
  policy = data.aws_iam_policy_document.this.json
}

resource "aws_s3_bucket_acl" "this" {
  bucket = var.domain_name
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = var.domain_name
  versioning_configuration {
    status = "Enabled"
  }
}
