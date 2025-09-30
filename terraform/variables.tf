variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "name_prefix" {
  description = "Prefixo para nomes dos recursos"
  type        = string
  default     = "infra"
}

variable "vpc_cidr" {
  description = "CIDR da VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability Zones para criar subnets"
  type        = list(string)
  default     = []
}

variable "public_subnet_cidrs" {
  description = "Lista de CIDRs públicas (um por AZ)"
  type        = list(string)
  default     = []
}

variable "private_subnet_cidrs" {
  description = "Lista de CIDRs privadas (um por AZ)"
  type        = list(string)
  default     = []
}

variable "eks_cluster_version" {
  description = "Versão do EKS"
  type        = string
  default     = "1.28"
}

variable "node_group_instance_types" {
  description = "Instance types para Node Groups (workers)"
  type        = list(string)
  default     = ["t4g.medium"]
}

variable "node_group_desired_capacity" {
  description = "Desired capacity inicial"
  type        = number
  default     = 2
}

variable "create_nat_gateway" {
  description = "Criar NAT Gateway para subnets privadas (custa mais)"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags adicionais"
  type        = map(string)
  default     = {}
}
