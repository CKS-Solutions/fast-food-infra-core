
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
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

variable "public_subnet_cidr_block" {
  description = "CIDR block for the public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_availability_zone" {
  description = "Availability zone for the public subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
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
