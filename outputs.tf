output "instance_id" {
  value = module.ec2.instance_id
}

output "bucket_id" {
  value = module.s3.bucket_id
}

output "vpc_id" {
  value = module.vpc.vpc_id
}