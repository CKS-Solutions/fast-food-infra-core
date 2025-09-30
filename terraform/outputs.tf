output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "public_subnet_ids" {
  description = "Subnets públicas (ids)"
  value       = values(aws_subnet.public).* .id
}

output "private_subnet_ids" {
  description = "Subnets privadas (ids)"
  value       = values(aws_subnet.private).* .id
}

output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  description = "Endpoint do EKS"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_certificate_authority_data" {
  description = "CA do cluster (base64)"
  value       = module.eks.cluster_certificate_authority_data
}

output "eks_oidc_provider" {
  description = "ARN do OIDC provider do EKS"
  value       = module.eks.oidc_provider_arn
}

output "eks_node_security_group_id" {
  description = "Security group dos nodes (workers)"
  value       = aws_security_group.eks_nodes.id
}

output "eks_cluster_security_group_id" {
  description = "Security group do control plane"
  value       = aws_security_group.cluster.id
}
