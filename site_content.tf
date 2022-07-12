resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.this.id
  key          = "index.html"
  source       = "${path.module}/site_content/index.html"
  content_type = "text/html"
  etag         = filemd5("${path.module}/site_content/index.html")
}

resource "aws_s3_object" "image" {
  bucket       = aws_s3_bucket.this.id
  key          = "Logo_Grey.png"
  source       = "${path.module}/site_content/Logo_Grey.png"
  content_type = "text/html"
  etag         = filemd5("${path.module}/site_content/Logo_Grey.png")
}
