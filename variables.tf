data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

locals {
  aws_region = "ap-southeast-1"
  prefix     = split("/", data.aws_caller_identity.current.arn)[1]
}

