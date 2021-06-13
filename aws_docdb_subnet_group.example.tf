resource "aws_docdb_subnet_group" "examplea" {
  name       = var.subnet_group_name
  subnet_ids = var.subnet_list
}
