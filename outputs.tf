
output "cloudfront_domain_name" {
  value = module.cloudfront_s3_website.cloudfront_domain_name
}

output "cloudfront_dist_id" {
  value = module.cloudfront_s3_website.cloudfront_dist_id
}

output "s3_domain_name" {
  value = module.cloudfront_s3_website.s3_domain_name
}

output "website_address" {
  value = module.cloudfront_s3_website.website_address
}

output "s3_bucket_arn" {
  value = module.cloudfront_s3_website.s3_bucket_arn
}

output "s3_bucket_name" {
  value = module.cloudfront_s3_website.s3_bucket_name
}


