data "aws_caller_identity" "current" {}

locals {
  aws_region = "ap-southeast-1"
  prefix     = split("/", data.aws_caller_identity.current.arn)[1]
}
