output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}

output "cloudfront_dist_id" {
  value = aws_cloudfront_distribution.s3_distribution.id
}

output "s3_domain_name" {
  # value = aws_s3_bucket.this.website_domain
value=data.aws_s3_bucket.this.website_domain
}

output "website_address" {
  value = var.domain_name
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.this.arn
}

output "s3_bucket_name" {
  value = aws_s3_bucket.this.id
}

output "aws_acm_certificate_id" {
  value = aws_acm_certificate.domain_name.id
}
