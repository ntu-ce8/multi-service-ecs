output "prefix" {
  value = local.prefix
}

output "aws_region" {
  value = local.aws_region
}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_id" {
  value = data.aws_caller_identity.current.id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}
