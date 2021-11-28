module "documentdb" {
  source          = "../../"
  master_password = random_string.password.result
  subnet_list     = data.aws_subnet_ids.examplea.ids
  kms_key_id      = aws_kms_key.example.arn
}

//todo:this should be private
data "aws_subnet_ids" "examplea" {
  vpc_id = "vpc-0c33dc8cd64f408c4"
  tags = {
    Type = "Public"
  }
}


resource "random_string" "password" {
  length = 16
}


resource "aws_kms_key" "example" {
  enable_key_rotation = true
}
