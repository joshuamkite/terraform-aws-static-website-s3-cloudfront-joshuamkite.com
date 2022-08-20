# terraform-aws-static-website-s3-cloudfront-joshuamkite.com

This Terraform deploys resources for my static website using AWS S3 and Cloudfront with TLS and a public DNS entry together with a suitable ACM certificate and validation. The apex domain is aliased to the www subdomain. This is a useful base from which to deploy website content with e.g. Hugo. Optionally a sample webpage with text and an image may be deployed to demonstrate that the website is working 

## N.B. S3 Backend not commited to public repo for security reasons

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.22.0 |
| <a name="provider_aws.us-east-1"></a> [aws.us-east-1](#provider\_aws.us-east-1) | 4.22.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.domain_name](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.domain_name](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_cloudfront_distribution.s3_distribution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_origin_access_identity.origin_access_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_identity) | resource |
| [aws_route53_record.domain_name](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.www_domain_name](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_versioning.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_s3_object.image](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_s3_object.index_html](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_route53_zone.domain_name](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/s3_bucket) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudfront_default_ttl"></a> [cloudfront\_default\_ttl](#input\_cloudfront\_default\_ttl) | The default TTL for the cloudfront cache | `number` | `86400` | no |
| <a name="input_cloudfront_max_ttl"></a> [cloudfront\_max\_ttl](#input\_cloudfront\_max\_ttl) | The maximum TTL for the cloudfront cache | `number` | `31536000` | no |
| <a name="input_cloudfront_min_ttl"></a> [cloudfront\_min\_ttl](#input\_cloudfront\_min\_ttl) | The minimum TTL for the cloudfront cache | `number` | `0` | no |
| <a name="input_deploy_sample_content"></a> [deploy\_sample\_content](#input\_deploy\_sample\_content) | whether or not to deploy sample content | `bool` | `false` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | n/a | `string` | `"joshuamkite.com"` | no |
| <a name="input_price_class"></a> [price\_class](#input\_price\_class) | CloudFront distribution price class | `string` | `"PriceClass_100"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"eu-west-1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | <pre>{<br>  "Environment": "Test",<br>  "Owner": "Joshua",<br>  "Project": "personal website",<br>  "repo": "git@github.com:joshuamkite/terraform-aws-static-website-s3-cloudfront-joshuamkite.com.git"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_acm_certificate_id"></a> [aws\_acm\_certificate\_id](#output\_aws\_acm\_certificate\_id) | n/a |
| <a name="output_cloudfront_dist_id"></a> [cloudfront\_dist\_id](#output\_cloudfront\_dist\_id) | n/a |
| <a name="output_cloudfront_domain_name"></a> [cloudfront\_domain\_name](#output\_cloudfront\_domain\_name) | n/a |
| <a name="output_s3_bucket_arn"></a> [s3\_bucket\_arn](#output\_s3\_bucket\_arn) | n/a |
| <a name="output_s3_bucket_name"></a> [s3\_bucket\_name](#output\_s3\_bucket\_name) | n/a |
| <a name="output_s3_domain_name"></a> [s3\_domain\_name](#output\_s3\_domain\_name) | n/a |
| <a name="output_website_address"></a> [website\_address](#output\_website\_address) | n/a |
