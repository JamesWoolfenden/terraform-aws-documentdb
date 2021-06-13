variable "param_group_name" {
  default = "examplea"

  //Length is [1–255] alphanumeric characters.
  //First character must be a letter.
  //Cannot end with a hyphen or contain two consecutive hyphens.
}

variable "family" {
  type    = string
  default = "docdb3.6"
}

variable "subnet_group_name" {
  default = "docdb"
  //todo ensure lowercase
}

variable "subnet_list" {
  type = list(any)
}


variable "instance_class" {
  type    = string
  default = "db.r5.large"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "instance_maintenance_window" {
  type    = string
  default = "Sat:00:00-Sat:03:00"
}

variable "instance-prefix" {
  type    = string
  default = "docdb-cluster-demo"
}

variable "promotion_tier" {
  type    = number
  default = 0
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
