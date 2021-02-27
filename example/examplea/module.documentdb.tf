module "documentdb" {
  source          = "../../"
  common_tags     = var.common_tags
  master_password = "mustbeeightchars"
  subnet_list     = data.aws_subnet_ids.examplea.ids
}


data "aws_subnet_ids" "examplea" {
  vpc_id = "vpc-0e2e925de622375b5"
  tags = {
    Type = "Public"
  }
}
