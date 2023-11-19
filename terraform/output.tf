output "app_domain" {
  value = module.aws_alb.alb_dns_name
}
output "bucket_name" {
  value = module.aws_s3.tech_docs_bucket_name
}