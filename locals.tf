locals {
  project = "test"
  env = "dev"
}

resource "aws_instance" "name" {
  tags = {
    Name = "${local.project}-${local.env}"
  }
}