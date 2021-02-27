resource "aws_docdb_cluster_instance" "examplea" {
  count                        = var.instance_count
  apply_immediately            = var.apply_immediately
  auto_minor_version_upgrade   = true
  availability_zone            = data.aws_availability_zones.available.names[0]
  engine                       = "docdb"
  preferred_maintenance_window = var.instance_maintenance_window
  identifier                   = "${var.instance-prefix}-${count.index}"
  cluster_identifier           = aws_docdb_cluster.examplea.id
  instance_class               = var.instance_class
  promotion_tier               = var.promotion_tier
  tags                         = var.common_tags
}
