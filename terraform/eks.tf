module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.1.0"

  cluster_name    = "${local.name_prefix}-eks"
  cluster_version = var.eks_cluster_version

  subnet_ids = values(aws_subnet.private)[*].id
  vpc_id     = aws_vpc.this.id

  cluster_security_group_id = aws_security_group.cluster.id

  enable_irsa = true

  eks_managed_node_groups = {
    default = {
      instance_types = var.node_group_instance_types
      desired_size   = var.node_group_desired_capacity
      max_size       = var.node_group_desired_capacity + 1
      min_size       = 1
    }
  }

  tags = merge({
    Owner = "infra"
  }, var.tags)
}
