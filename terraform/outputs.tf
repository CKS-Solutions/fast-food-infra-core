output "vpc_id" {
  description = "VPC ID encontrada"
  value       = data.aws_vpc.selected.id
}

output "private_subnet_ids" {
  description = "Private subnet IDs utilizadas"
  value       = data.aws_subnets.private.ids
}

output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  description = "EKS API endpoint"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_ca_data" {
  description = "Cluster CA data (base64)"
  value       = module.eks.cluster_certificate_authority_data
}

output "eks_node_security_group_id" {
  description = "Security group id dos worker nodes (use para permitir acesso ao RDS)"
  value       = module.eks.node_security_group_id
}

output "rds_ingress_rule_created" {
  value = length(aws_security_group_rule.allow_rds_from_eks_nodes) > 0 ? true : false
}
