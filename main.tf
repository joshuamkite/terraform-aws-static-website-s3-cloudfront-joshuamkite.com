
variable "domain_name" {
  default = "joshuamkite.com"
}

variable "subdomain" {
  default = "checkout"
}

variable "region" {
  default = "eu-west-1"
}

module "cloudfront_s3_website" {
  source                 = "git@github.com:joshuamkite/terraform-aws-cloudfront-s3-website.git?ref=v1.2.4"
  hosted_zone            = var.domain_name
  domain_name            = join(".", [var.subdomain, var.domain_name])
  acm_certificate_domain = join(".", ["*", var.domain_name])
  use_default_domain     = false
}
