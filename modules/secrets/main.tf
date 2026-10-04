# --------------------------------------------------
# Database Password Secret
# --------------------------------------------------

resource "aws_secretsmanager_secret" "db_password" {
  name        = "${var.project_name}/database/password"
  description = "PostgreSQL database password for PropertyOps"

  recovery_window_in_days = 0

  tags = {
    Name = "${var.project_name}-db-password"
  }
}