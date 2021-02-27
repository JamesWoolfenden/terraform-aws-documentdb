resource "aws_docdb_cluster" "examplea" {
  cluster_identifier = var.cluster_identifier
  engine             = "docdb"
  engine_version     = ""
  apply_immediately  = var.apply_immediately
  availability_zones = data.aws_availability_zones.available.names
  //defo should be set?
  db_subnet_group_name            = ""
  db_cluster_parameter_group_name = aws_docdb_cluster_parameter_group.examplea.name
  deletion_protection             = var.deletion_protection
  master_username                 = var.master_username
  master_password                 = var.master_password
  backup_retention_period         = var.backup_retention_period
  preferred_backup_window         = "07:00-09:00"
  preferred_maintenance_window    = "sat:05:00-sat:07:00"
  skip_final_snapshot             = true
  storage_encrypted               = true
  //  port=""
  //what key is used if notset?
  //  kms_key_id=""
  enabled_cloudwatch_logs_exports = ["audit", "profiler"]
  vpc_security_group_ids          = []
  tags                            = var.common_tags
}

variable "deletion_protection" {
  type    = bool
  default = false
}

variable "backup_retention_period" {
  type    = number
  default = 5
}

variable "master_username" {
  default = "docadmin"
}


variable "cluster_identifier" {
  type    = string
  default = "my-docdb-cluster"
}

variable "master_password" {
  type        = string
  description = "DocumentDB Password"
  sensitive   = true
}

variable "apply_immediately" {
  default = false
}
