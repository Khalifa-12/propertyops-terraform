variable "project_name" {
  description = "Project name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs for interface endpoints"
  type        = list(string)
}

variable "private_route_table_id" {
  description = "Private route table ID for gateway endpoints"
  type        = string
}

variable "vpce_security_group_id" {
  description = "Security group ID for interface VPC endpoints"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}