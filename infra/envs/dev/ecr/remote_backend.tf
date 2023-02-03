terraform {
  backend "s3" {
    bucket         = "platform-challenge-terraform-state"
    key            = "dev/ecs/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "platform-challenge-state-locks"
    encrypt        = true
    profile        = "default"
  }
}
