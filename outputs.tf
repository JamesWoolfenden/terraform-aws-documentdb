output "cluster" {
  value     = aws_docdb_cluster.examplea
  sensitive = true
}

output "properties" {
  value = aws_docdb_cluster_parameter_group.examplea
}

output "instance" {
  value = aws_docdb_cluster_instance.examplea
}
