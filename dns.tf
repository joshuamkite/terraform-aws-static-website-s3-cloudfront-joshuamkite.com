resource "aws_acm_certificate" "joshuamkite_com" {
  provider    = aws.us-east-1
  domain_name = var.domain_name
  subject_alternative_names = [
    "*.${var.domain_name}",
  ]
  validation_method = "DNS"
  lifecycle {
    create_before_destroy = true
  }
}

data "aws_route53_zone" "domain_name" {
  provider     = aws.us-east-1
  name         = var.domain_name #var.hosted_zone
  private_zone = false
}

resource "aws_route53_record" "validation" {
  for_each = {
    for dvo in aws_acm_certificate.joshuamkite_com.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }
  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = data.aws_route53_zone.domain_name.zone_id
}

resource "aws_acm_certificate_validation" "joshuamkite_com" {
  provider                = aws.us-east-1
  certificate_arn         = aws_acm_certificate.joshuamkite_com.arn
  validation_record_fqdns = [for record in aws_route53_record.validation : record.fqdn]
}

resource "aws_route53_record" "www_joshuamkite_com" {
  type    = "CNAME"
  zone_id = data.aws_route53_zone.domain_name.zone_id
  name    = "www.${var.domain_name}"
  records = [var.domain_name]
  ttl     = "300"
}

resource "aws_route53_record" "joshuamkite_com" {
  type    = "A"
  zone_id = data.aws_route53_zone.domain_name.zone_id
  name    = var.domain_name

  alias {
    name = aws_cloudfront_distribution.s3_distribution.domain_name
    //HardCoded value for CloudFront
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = false
  }
}
