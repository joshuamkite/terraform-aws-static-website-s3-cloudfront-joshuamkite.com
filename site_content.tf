resource "aws_s3_bucket_object" "index_html" {
  bucket       = module.cloudfront_s3_website.s3_bucket_name
  key          = "index.html"
  source       = "${path.module}/site_content/index.html"
  content_type = "text/html"
  etag         = filemd5("${path.module}/site_content/index.html")
}

resource "aws_s3_bucket_object" "image" {
  bucket       = module.cloudfront_s3_website.s3_bucket_name
  key          = "Logo_Grey.png"
  source       = "${path.module}/site_content/Logo_Grey.png"
  content_type = "text/html"
  etag         = filemd5("${path.module}/site_content/Logo_Grey.png")
}
