resource "aws_s3_bucket" "terraform_state" {
  bucket = "platform-challenge-terraform-state"

  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }

  # Enable versioning so we can see the full revision history of our
  # state files
  versioning {
    enabled = true
  }

  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "platform-challenge-state-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

provider "aws" {
  region  = "eu-west-2"
  profile = "default"
  default_tags {
    tags = {
      Organisation = "Self"
    }
  }
}

terraform {
  required_providers {
    aws = {
      version = "4.53.0"
      source  = "hashicorp/aws"
    }
  }
  required_version = "= 1.3.7"
}
