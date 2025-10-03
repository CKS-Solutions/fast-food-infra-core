variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
  default     = "fast-food-eks"
}

variable "vpc_name" {
  description = "Tag Name da VPC a ser usada"
  type        = string
  default     = "fast-food-vpc"
}

variable "subnet_name" {
  description = "Tag Name das subnets privadas a serem usadas (pode haver várias)"
  type        = string
  default     = "fast-food-private-subnet"
}

variable "node_instance_type" {
  description = "Instance type for worker node"
  type        = string
  default     = "t3.micro"
}

variable "node_min" {
  type    = number
  default = 1
}
variable "node_desired" {
  type    = number
  default = 1
}
variable "node_max" {
  type    = number
  default = 1
}

variable "rds_security_group_id" {
  description = "ID do security group do RDS (opcional). Se fornecido, uma regra de ingress será adicionada permitindo acesso dos workers."
  type        = string
  default     = ""
}

# Basic tags
variable "tags" {
  type    = map(string)
  default = {}
}
