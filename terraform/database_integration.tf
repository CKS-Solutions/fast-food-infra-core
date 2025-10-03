resource "aws_security_group_rule" "allow_rds_from_eks_nodes" {
  count = length(trimspace(var.rds_security_group_id)) > 0 ? 1 : 0

  type                     = "ingress"
  from_port                = 5432
  to_port                  = 5432
  protocol                 = "tcp"
  security_group_id        = var.rds_security_group_id
  source_security_group_id = module.eks.node_security_group_id
  description              = "Allow Postgres from EKS worker nodes"
}
