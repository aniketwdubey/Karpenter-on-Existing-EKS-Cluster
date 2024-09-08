# Karpenter Setup on Existing EKS Cluster

This repository contains the code and configuration files for setting up Karpenter on an existing Amazon EKS cluster, as described in the blog post [Karpenter Setup on Existing EKS cluster: Optimizing Kubernetes Node Management](https://aniketdubey.hashnode.dev/karpenter-setup-on-existing-eks-cluster).

## Contents

- Terraform configurations for IAM roles and policies
- Kubernetes manifests for Karpenter deployment
- Sample application for testing Karpenter

## Prerequisites

- AWS CLI
- kubectl
- Helm
- Terraform
- Existing EKS cluster
- Existing VPC and subnets
- Existing security groups

## Setup Steps 

1. Set environment variables (see `set_env_vars.sh`)
2. Create OpenID Connect (OIDC) provider
3. Set up IAM roles and policies using Terraform
4. Tag subnets and security groups
5. Update aws-auth ConfigMap
6. Deploy Karpenter
7. Create NodePool
8. Test the setup with a sample application

## Files

- `set_env_vars.sh`: Script to set necessary environment variables
- `terraform/`: Directory containing Terraform configurations
  - `main.tf`: Main Terraform configuration
  - `variables.tf`: Terraform variables
  - `outputs.tf`: Terraform outputs
  - `versions.tf`: Terraform version constraints
  - `node_role.tf`: IAM role for Karpenter nodes
  - `controller_role.tf`: IAM role for Karpenter controller
- `karpenter.yaml`: Karpenter Helm chart values
- `nodepool.yaml`: Karpenter NodePool and EC2NodeClass configuration
- `inflate.yaml`: Sample application for testing Karpenter

## Usage

1. Clone this repository
2. Set up your AWS credentials
3. Modify the Terraform variables in `terraform/variables.tf` as needed
4. Follow the steps in the [blog post](https://aniketdubey.hashnode.dev/karpenter-setup-on-existing-eks-cluster) to deploy Karpenter

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- [Official Karpenter Documentation](https://karpenter.sh/docs/)

For more detailed instructions, please refer to the full [blog post](https://aniketdubey.hashnode.dev/karpenter-setup-on-existing-eks-cluster).