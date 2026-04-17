module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "ec2" {
  source        = "./modules/ec2"
  instance_type = var.instance_type
  ami_id        = var.ami_id
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.subnet_id
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}