terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.51"
    }
  }
  backend "s3" {
    bucket = "terraform-demoapp"
    key    = "infra"
    region = "us-east-1"
  }
}
