resource "aws_docdb_cluster_parameter_group" "examplea" {
  family      = var.family
  name        = var.param_group_name
  description = "docdb cluster parameter group"

  parameter {
    name  = "tls"
    value = "enabled"
  }

  tags = var.common_tags
}
