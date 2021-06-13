provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      createdby = "terraform"
      module    = "terraform-aws-documentdb"
      owner     = "James Woolfenden"
    }
  }
}
