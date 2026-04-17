resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name

tags = {
  Name = "Terraform-S3"
}
}
