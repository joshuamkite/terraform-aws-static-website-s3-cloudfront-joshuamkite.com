
output "cloudfront_domain_name" {
  value = module.static-website-s3-cloudfront-acm.cloudfront_domain_name
}

output "cloudfront_distribution_id" {
  value = module.static-website-s3-cloudfront-acm.cloudfront_distribution_id
}

output "s3_bucket_arn" {
  value = module.static-website-s3-cloudfront-acm.s3_bucket_arn
}

output "s3_bucket_name" {
  value = module.static-website-s3-cloudfront-acm.s3_bucket_name
}

output "acm_certificate_id" {
  value = module.static-website-s3-cloudfront-acm.acm_certificate_id
}

output "website_url" {
  value = "www.${var.domain_name}"
}