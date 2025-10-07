resource "aws_eks_cluster" "main" {
  name     = var.eks_cluster_name
  role_arn = aws_iam_role.eks_cluster_role.arn
  version = "1.33"

  access_config {
    authentication_mode = "API"
  }

  vpc_config {
    subnet_ids = [aws_subnet.public.id, aws_subnet.private[0].id, aws_subnet.private[1].id]
  }

  depends_on = [
    aws_iam_role.eks_cluster_role,
    aws_iam_role_policy_attachment.eks_cluster_role,
  ]

  tags = {
    Name = "fast-food-eks"
  }
}

resource "aws_eks_node_group" "main" {
  node_group_name = "fast-food-node-group"
  cluster_name = var.eks_cluster_name
  node_role_arn = aws_iam_role.eks_node_role.arn
  subnet_ids = [aws_subnet.public.id]
  instance_types = [var.eks_node_instance_type]

  scaling_config {
    desired_size = var.eks_node_desired_size
    max_size = var.eks_node_max_size
    min_size = var.eks_node_min_size
  }

  update_config {
    max_unavailable = var.eks_node_max_unavailable
  }

  depends_on = [
    aws_eks_cluster.main,
    aws_iam_role.eks_node_role,
    aws_iam_role_policy_attachment.eks_worker_node_public,
    aws_iam_role_policy_attachment.eks_worker_node_cni,
    aws_iam_role_policy_attachment.eks_worker_node_ec2,
  ]
}
