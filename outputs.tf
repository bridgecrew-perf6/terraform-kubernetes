
# Key pair name
output "keypair_name" {
  description = "AWS keypair used for instances"
  value       = aws_key_pair.keypair.key_name
}

# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# CIDR blocks
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

# Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

# NAT gateways
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# AZs
output "azs" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc.azs
}

# Kubernetes API DNS
output "api_dns" {
  description = "Kubernetes API Load Balancer domain name"
  value       = module.kubernetes.api_dns
}

# Bastion DNS
output "bastion_host" {
  description = "Bastion Load Balancer domain name"
  value       = module.bastion.bastion_cname_dns
}

# Control plane IP addresses
output "control-plane_private_ips" {
  description = "Control plane IP addresses"
  value       = module.kubernetes.control-plane_private_ips
}

# Kubeconfig generated locally after the cluster provisionning
output "kubeconfig" {
  description = "Local kubeconfig path"
  value       = module.kubernetes.kubeconfig_local_path
}
