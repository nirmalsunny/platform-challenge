terraform {
  backend "s3" {
    bucket         = "platform-challenge-terraform-state"
    key            = "prod/ecs/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "platform-challenge-state-locks"
    encrypt        = true
    profile        = "default"
  }
}
