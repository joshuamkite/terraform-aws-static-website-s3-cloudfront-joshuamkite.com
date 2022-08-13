variable "domain_name" {
  default = "joshuamkite.com"
}

variable "region" {
  default = "eu-west-1"
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "Test"
    Owner       = "Joshua"
    Project     = "personal website"
    repo        = "git@github.com:joshuamkite/terraform-aws-static-website-s3-cloudfront-joshuamkite.com.git"
  }
}

variable "price_class" {
  default     = "PriceClass_100" // Only US,Canada,Europe
  description = "CloudFront distribution price class"
}

# All values for the TTL are important when uploading static content that changes
# https://stackoverflow.com/questions/67845341/cloudfront-s3-etag-possible-for-cloudfront-to-send-updated-s3-object-before-t
variable "cloudfront_min_ttl" {
  default     = 0
  description = "The minimum TTL for the cloudfront cache"
}

variable "cloudfront_default_ttl" {
  default     = 86400
  description = "The default TTL for the cloudfront cache"
}

variable "cloudfront_max_ttl" {
  default     = 31536000
  description = "The maximum TTL for the cloudfront cache"
}

variable "deploy_sample_content" {
  type        = bool
  default     = false
  description = "whether or not to deploy sample content"
}
