module "documentdb" {
  source          = "../../"
  master_password = random_string.password.result
  subnet_list     = data.aws_subnet_ids.examplea.ids
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
