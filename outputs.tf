output "vpc_id" {
  description = "PropertyOps VPC ID"
  value       = module.network.vpc_id
}

output "public_subnet_ids" {
  description = "PropertyOps public subnet IDs"
  value       = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  description = "PropertyOps private subnet IDs"
  value       = module.network.private_subnet_ids
}

output "alb_security_group_id" {
  value = module.security.alb_security_group_id
}

output "ecs_security_group_id" {
  value = module.security.ecs_security_group_id
}

output "rds_security_group_id" {
  value = module.security.rds_security_group_id
}

output "vpce_security_group_id" {
  value = module.security.vpce_security_group_id
}

output "ecr_api_endpoint_id" {
  value = module.endpoints.ecr_api_endpoint_id
}

output "ecr_dkr_endpoint_id" {
  value = module.endpoints.ecr_dkr_endpoint_id
}

output "logs_endpoint_id" {
  value = module.endpoints.logs_endpoint_id
}

output "s3_endpoint_id" {
  value = module.endpoints.s3_endpoint_id
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}

output "alb_target_group_arn" {
  value = module.alb.target_group_arn
}

output "ecr_repository_name" {
  value = module.ecr.repository_name
}

output "ecr_repository_url" {
  value = module.ecr.repository_url
}

output "ecs_cluster_name" {
  value = module.ecs.cluster_name
}

output "ecs_service_name" {
  value = module.ecs.service_name
}

output "ecs_task_definition_arn" {
  value = module.ecs.task_definition_arn
}

output "rds_endpoint" {
  description = "PropertyOps PostgreSQL endpoint"
  value       = module.rds.db_endpoint
}

output "rds_port" {
  description = "PropertyOps PostgreSQL port"
  value       = module.rds.db_port
}

output "db_password_secret_arn" {
  value = module.secrets.db_password_secret_arn
}

output "secretsmanager_endpoint_id" {
  value = module.endpoints.secretsmanager_endpoint_id
}

output "cloudfront_domain_name" {
  description = "CloudFront HTTPS endpoint"
  value       = module.cloudfront.distribution_domain_name
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID"
  value       = module.cloudfront.distribution_id
}