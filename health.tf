check "site_200" {
  data "http" "site_endpoint" {
    url = "http://${aws_s3_bucket_website_configuration.s3_bucket.website_endpoint}"
  }

  assert {
    condition = data.http.site_endpoint.status_code == 200
    error_message = "http://${aws_s3_bucket_website_configuration.s3_bucket.website_endpoint} returned an unhealthy status code"
  }
}