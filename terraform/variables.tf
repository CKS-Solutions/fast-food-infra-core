
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
variable "eks_cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
  default     = "fast-food-eks"
}

variable "eks_node_instance_type" {
  description = "Tipo de instância do nó do EKS"
  type        = string
  default     = "t3.medium"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Tag Name da VPC a ser usada"
  type        = string
  default     = "fast-food-vpc"
}

variable "eks_node_desired_size" {
  description = "Número desejado de nós do EKS"
  type        = number
  default     = 1
}

variable "eks_node_max_size" {
  description = "Número máximo de nós do EKS"
  type        = number
  default     = 2
}

variable "eks_node_min_size" {
  description = "Número mínimo de nós do EKS"
  type        = number
  default     = 1
}

variable "eks_node_max_unavailable" {
  description = "Número máximo de nós do EKS indisponíveis durante a atualização"
  type        = number
  default     = 1
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for the public subnets"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_availability_zone" {
  description = "Availability zone for the public subnets"
  type        = string
  default     = "us-east-1a"
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for the private subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "private_subnet_availability_zone" {
  description = "Availability zone for the private subnets"
  type        = list(string)
  default     = ["us-east-1b", "us-east-1a"]
}
