# k8s-infra (Terraform)

Provisiona VPC + subnets + NAT + Security Groups + EKS (via terraform-aws-modules/eks).

## Pré-requisitos

- Conta AWS com permissões para criar VPC/EKS/IAM/EC2/ELB
- Backend S3 + DynamoDB configurado (ajuste backend.tf)
- Terraform >= 1.6.0

## Como usar (exemplo):

```bash
terraform init
terraform plan \
  -var 'aws_region=us-east-1' \
  -var 'name_prefix=myproj' \
  -var 'azs=["us-east-1a","us-east-1b"]' \
  -var 'public_subnet_cidrs=["10.0.1.0/24","10.0.2.0/24"]' \
  -var 'private_subnet_cidrs=["10.0.11.0/24","10.0.12.0/24"]'

terraform apply -auto-approve ...
