variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

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
