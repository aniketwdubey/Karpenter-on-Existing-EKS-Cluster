output "karpenter_node_role_arn" {
  description = "ARN of the Karpenter Node IAM Role"
  value       = aws_iam_role.karpenter_node_role.arn
}

output "karpenter_controller_role_arn" {
  description = "ARN of the Karpenter Controller IAM Role"
  value       = aws_iam_role.karpenter_controller_role.arn
}