resource "aws_eks_access_entry" "main" {
  cluster_name = var.eks_cluster_name
  principal_arn = data.aws_iam_user.principal.arn
  type = "STANDARD"

  depends_on = [
    aws_eks_cluster.main,
  ]
}

resource "aws_eks_access_policy_association" "main" {
  cluster_name = var.eks_cluster_name
  principal_arn = data.aws_iam_user.principal.arn
  policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"

  access_scope {
    type = "cluster"
  }

  depends_on = [
    aws_eks_access_entry.main,
  ]
}