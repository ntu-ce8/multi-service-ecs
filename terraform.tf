terraform {
  required_version = ">= 1.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "sctp-ce8-tfstate"
    key    = "YOUR-NEW-PROJECT.tfstate" # CHANGE THIS
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = local.aws_region
}
