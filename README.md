# k8s-infra (Terraform)

Provisiona VPC + subnets + NAT + Security Groups + EKS.

## Pré-requisitos

- Conta AWS com permissões para criar VPC/EKS/IAM/EC2/ELB
- Backend S3 + DynamoDB configurado (ajuste backend.tf)
- Terraform >= 1.6.0

## Variáveis disponíveis

- `aws_region` (default: `us-east-1`)

- `eks_cluster_name` (default: `myproj-eks`)
- `eks_node_instance_type` (default: `t3.medium`)
- `eks_node_desired_size` (default: `1`)
- `eks_node_max_size` (default: `2`)
- `eks_node_min_size` (default: `1`)
- `eks_node_max_unavailable` (default: `1`)

- `vpc_name` (default: `myproj-vpc`)
- `vpc_cidr` (default: `10.0.0.0/16`)
- `public_subnet_cidr_block` (default: `10.0.1.0/24`)
- `private_subnet_cidr_block` (default: `10.0.11.0/24`)
- `public_subnet_availability_zone` (default: `us-east-1a`)
- `private_subnet_availability_zone` (default: `us-east-1a`)

## Como usar (exemplo):

```bash
terraform init
terraform plan
terraform apply -auto-approve ...
```