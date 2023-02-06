resource "aws_ecr_repository" "platform_challenge" {
  name                 = var.ecr_repository_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

terraform {
  backend "s3" {
    bucket         = "platform-challenge-terraform-state"
    key            = "prod/ecs/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "platform-challenge-state-locks"
    encrypt        = true
    profile        = "default"
  }
  required_providers {
    aws = {
      version = "4.53.0"
      source  = "hashicorp/aws"
    }
  }
  required_version = "= 1.3.7"
}
