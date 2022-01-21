# terraform-aws-static-website-s3-cloudfront-joshuamkite.com

This Terraform plan uses a forked public module [https://github.com/joshuamkite/terraform-aws-cloudfront-s3-website](https://github.com/joshuamkite/terraform-aws-cloudfront-s3-website) to deploy a sample static webpage with text and an image using AWS S3 and Cloudfront with TLS and a public DNS entry. As per the upstream module it depends on the DNS hosted zone and a wildcard ACM certificate already existing for the domain in us-east-1. [Code to deploy this is in the companion repository](https://github.com/joshuamkite/terraform-aws-acm-certificate-joshuamkite.com)

Given the brevity of this plan, terraform variables and data are not in separate files. and variables are defaulted rather than interpolated. Although an S3 backend is advised (and has been used in my case) it is not included in this repository for reasons of security. Outputs and site content terraform files *are* in separate files for ease of reference or change. 

The sample website deployed with the default values here may be seen at 
[https://checkout.joshuamkite.com](https://checkout.joshuamkite.com)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.72.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.72.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudfront_s3_website"></a> [cloudfront\_s3\_website](#module\_cloudfront\_s3\_website) | git@github.com:joshuamkite/terraform-aws-cloudfront-s3-website.git | v1.2.4 |

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket_object.image](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_object) | resource |
| [aws_s3_bucket_object.index_html](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_object) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | n/a | `string` | `"joshuamkite.com"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"eu-west-1"` | no |
| <a name="input_subdomain"></a> [subdomain](#input\_subdomain) | n/a | `string` | `"checkout"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | <pre>{<br>  "Environment": "Test",<br>  "Owner": "Joshua",<br>  "Project": "checkout.com DevOps Challenge",<br>  "repo": "git@github.com:joshuamkite/terraform-aws-static-website-s3-cloudfront-joshuamkite.com.git"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudfront_dist_id"></a> [cloudfront\_dist\_id](#output\_cloudfront\_dist\_id) | n/a |
| <a name="output_cloudfront_domain_name"></a> [cloudfront\_domain\_name](#output\_cloudfront\_domain\_name) | n/a |
| <a name="output_s3_bucket_arn"></a> [s3\_bucket\_arn](#output\_s3\_bucket\_arn) | n/a |
| <a name="output_s3_bucket_name"></a> [s3\_bucket\_name](#output\_s3\_bucket\_name) | n/a |
| <a name="output_s3_domain_name"></a> [s3\_domain\_name](#output\_s3\_domain\_name) | n/a |
| <a name="output_website_address"></a> [website\_address](#output\_website\_address) | n/a |
