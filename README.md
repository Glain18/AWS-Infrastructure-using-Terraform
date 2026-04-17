# AWS-Infrastructure-using-Terraform
This project provisions a complete AWS infrastructure using Terraform, including:
- VPC
- Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance
- S3 Bucket

It demonstrates Infrastructure as Code (IaC) principles using modular Terraform design.

# Tools Used 
- Terraform
- AWS (EC2, VPC, S3)
- Amazon Linux 2023
- Linux CLI

# How to Deploy
- Configure AWS credentials
-  Run:
   - terraform init
   - terraform fmt
   - terraform plan
   - terraform apply

# Outputs
  - bucket_id = "iac-terraform-s3-glain123"
  - instance_id = "i-00c1f0254a6a087dd"
  - vpc_id = "vpc-0066d10f187459704"

# Screenshots are available in /images folder showing:
  - AWS infrastructure creation (VPC, Subnet, EC2, S3)
  - EC2 instance running in AWS Console
  - SSH connection into EC2 instance
  - Running services inside the EC2 instance

# Key Learnings
This project helped reinforce the following  concepts:
- Infrastructure as Code (IaC) using Terraform
- AWS networking (VPC, Subnets, Routing, Security Groups)
- EC2 provisioning and SSH access
- S3 bucket creation and management
- Modular Terraform project structure
