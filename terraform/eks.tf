module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.0"

  name    = var.cluster_name
  kubernetes_version = "1.33"

  vpc_id     = data.aws_vpc.selected.id
  subnet_ids = data.aws_subnets.private.ids

  eks_managed_node_groups = {
    default = {
      desired_size   = var.node_desired
      min_size       = var.node_min
      max_size       = var.node_max
      instance_types = [var.node_instance_type]
      subnet_ids     = data.aws_subnets.private.ids
    }
  }

  tags = merge({
    Name = var.cluster_name
  }, var.tags)
}
