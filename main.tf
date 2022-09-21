module "static-website-s3-cloudfront-acm" {
  # source                = "git@github.com:joshuamkite/terraform-aws-static-website-s3-cloudfront-acm.git"
  source                = "../terraform-aws-static-website-s3-cloudfront-acm"
  domain_name           = var.domain_name
  s3_bucket_custom_name = "${var.domain_name}-${var.region}-${data.aws_caller_identity.current.account_id}"
  providers = {
    aws.us-east-1 = aws.us-east-1
    aws           = aws
  }
  deploy_sample_content = true
  custom_error_response = var.custom_error_response
}

data "aws_caller_identity" "current" {}