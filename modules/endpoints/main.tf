# --------------------------------------------------
# ECR API Endpoint
# --------------------------------------------------

resource "aws_vpc_endpoint" "ecr_api" {
  vpc_id             = var.vpc_id
  service_name       = "com.amazonaws.${var.aws_region}.ecr.api"
  vpc_endpoint_type  = "Interface"
  subnet_ids         = var.private_subnet_ids
  security_group_ids = [var.vpce_security_group_id]

  private_dns_enabled = true

  tags = {
    Name = "${var.project_name}-ecr-api-vpce"
  }
}


# --------------------------------------------------
# ECR Docker Registry Endpoint
# --------------------------------------------------

resource "aws_vpc_endpoint" "ecr_dkr" {
  vpc_id             = var.vpc_id
  service_name       = "com.amazonaws.${var.aws_region}.ecr.dkr"
  vpc_endpoint_type  = "Interface"
  subnet_ids         = var.private_subnet_ids
  security_group_ids = [var.vpce_security_group_id]

  private_dns_enabled = true

  tags = {
    Name = "${var.project_name}-ecr-dkr-vpce"
  }
}


# --------------------------------------------------
# CloudWatch Logs Endpoint
# --------------------------------------------------

resource "aws_vpc_endpoint" "logs" {
  vpc_id             = var.vpc_id
  service_name       = "com.amazonaws.${var.aws_region}.logs"
  vpc_endpoint_type  = "Interface"
  subnet_ids         = var.private_subnet_ids
  security_group_ids = [var.vpce_security_group_id]

  private_dns_enabled = true

  tags = {
    Name = "${var.project_name}-logs-vpce"
  }
}


# --------------------------------------------------
# S3 Gateway Endpoint
# --------------------------------------------------

resource "aws_vpc_endpoint" "s3" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${var.aws_region}.s3"
  vpc_endpoint_type = "Gateway"

  route_table_ids = [
    var.private_route_table_id
  ]

  tags = {
    Name = "${var.project_name}-s3-vpce"
  }
}

# --------------------------------------------------
# Secrets Manager Endpoint
# --------------------------------------------------

resource "aws_vpc_endpoint" "secretsmanager" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${var.aws_region}.secretsmanager"
  vpc_endpoint_type = "Interface"

  subnet_ids = var.private_subnet_ids

  security_group_ids = [
    var.vpce_security_group_id
  ]

  private_dns_enabled = true

  tags = {
    Name = "${var.project_name}-secretsmanager-vpce"
  }
}