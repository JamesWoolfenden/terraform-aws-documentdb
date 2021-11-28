resource "aws_docdb_cluster" "examplea" {
  cluster_identifier = var.cluster_identifier
  engine             = "docdb"
  engine_version     = ""
  apply_immediately  = var.apply_immediately
  availability_zones = data.aws_availability_zones.available.names
  //defo should be set?
  db_subnet_group_name            = aws_docdb_subnet_group.examplea.name
  db_cluster_parameter_group_name = aws_docdb_cluster_parameter_group.examplea.name
  deletion_protection             = var.deletion_protection
  master_username                 = var.master_username
  master_password                 = var.master_password
  backup_retention_period         = var.backup_retention_period
  preferred_backup_window         = "07:00-09:00"
  preferred_maintenance_window    = "sat:05:00-sat:07:00"
  skip_final_snapshot             = true
  storage_encrypted               = true

  kms_key_id                      = var.kms_key_id
  enabled_cloudwatch_logs_exports = ["audit", "profiler"]
  vpc_security_group_ids          = []
}
