output "cluster" {
  value     = module.documentdb.cluster
  sensitive = true
}


output "properties" {
  value = module.documentdb.properties
}

output "instance" {
  value = module.documentdb.instance
}
