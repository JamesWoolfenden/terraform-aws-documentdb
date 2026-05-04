module "documentdb" {
  source          = "../../"
  master_password = random_string.password.result
  subnet_list     = data.aws_subnets.examplea.ids
  kms_key_id      = aws_kms_key.example.arn
}
//todo:this should be private
data "aws_subnets" "examplea" {
  filter {
    name   = "vpc-id"
    values = ["vpc-0c33dc8cd64f408c4"]
  }
  tags = {
    Type = "Public"
  }
}
resource "random_string" "password" {
  length = 16
}
resource "aws_kms_key" "example" {
  # checkov:skip=CKV2_AWS_64: For example only, key policy managed via IAM
  enable_key_rotation = true
}
