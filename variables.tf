variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "param_group_name" {
  default = "examplea"
}

variable "family" {
  type    = string
  default = "docdb3.6"
}

variable "subnet_group_name" {
  default = "docdb"
  //todo ensure lc
}

variable "subnet_list" {
  type = list(any)
}


variable "instance_class" {
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
  default = "docdb-cluster-demo"
}
