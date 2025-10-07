output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.main.id
}

output "vpc_cidr_block" {
  description = "CIDR block da VPC"
  value       = aws_vpc.main.cidr_block
}

output "public_subnet_id" {
  description = "ID da subnet pública"
  value       = aws_subnet.public.id
}

output "private_subnet_id_1" {
  description = "ID da subnet privada"
  value       = aws_subnet.private[0].id
}

output "private_subnet_id_2" {
  description = "ID da subnet privada"
  value       = aws_subnet.private[1].id
}

output "eks_cluster_ca" {
  description = "CA do cluster EKS"
  value       = aws_eks_cluster.main.certificate_authority[0].data
}

output "eks_cluster_endpoint" {
  description = "Endpoint do cluster EKS"
  value       = aws_eks_cluster.main.endpoint
}