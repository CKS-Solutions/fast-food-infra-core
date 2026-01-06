# k8s-infra (Terraform)

Provisiona VPC + subnets + NAT + Security Groups + EKS.

## Pré-requisitos

- Conta AWS com permissões para criar VPC/EKS/IAM/EC2/ELB
- Backend S3 + DynamoDB configurado (ajuste backend.tf)
- Terraform >= 1.6.0

## Variáveis disponíveis

- `aws_region` (default: `us-east-1`)

- `vpc_name` (default: `myproj-vpc`)
- `vpc_cidr` (default: `10.0.0.0/16`)
- `public_subnet_cidr_block` (default: `[10.0.1.0/24, 10.0.2.0/24]`)
- `private_subnet_cidr_block` (default: `[10.0.11.0/24, 10.0.12.0/24]`)
- `public_subnet_availability_zone` (default: `[us-east-1a, us-east-1b]`)
- `private_subnet_availability_zone` (default: `[us-east-1a, us-east-1b]`)

## Como usar (exemplo):

```bash
terraform init
terraform plan
terraform apply -auto-approve ...
```