variable "aws_region" {
  description = "AWS region used for PropertyOps"
  type        = string
  default     = "eu-west-2"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "propertyops"
}

variable "vpc_cidr" {
  description = "CIDR block for the PropertyOps VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)

  default = [
    "10.0.0.0/24",
    "10.0.1.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)

  default = [
    "10.0.2.0/24",
    "10.0.3.0/24"
  ]
}

variable "availability_zones" {
  description = "Availability Zones used by PropertyOps"
  type        = list(string)

  default = [
    "eu-west-2a",
    "eu-west-2b"
  ]
}

variable "db_name" {
  description = "PropertyOps PostgreSQL database name"
  type        = string
  default     = "propertyops"
}

variable "db_username" {
  description = "PropertyOps PostgreSQL master username"
  type        = string
  default     = "propertyopsadmin"
}

variable "db_password" {
  description = "PropertyOps PostgreSQL master password"
  type        = string
  sensitive   = true
}