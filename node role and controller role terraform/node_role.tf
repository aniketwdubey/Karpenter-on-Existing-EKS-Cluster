resource "aws_iam_role" "karpenter_node_role" {
  name = "KarpenterNodeRole-${var.cluster_name}"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "karpenter_node_policy_attachment" {
  for_each = toset([
    "arn:${local.aws_partition}:iam::aws:policy/AmazonEKSWorkerNodePolicy",
    "arn:${local.aws_partition}:iam::aws:policy/AmazonEKS_CNI_Policy",
    "arn:${local.aws_partition}:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
    "arn:${local.aws_partition}:iam::aws:policy/AmazonSSMManagedInstanceCore"
  ])

  policy_arn = each.value
  role       = aws_iam_role.karpenter_node_role.name
}
