provider "aws" {
  version = "4.53.0"
  region  = "eu-west-2"
  profile = "default"
  default_tags {
    tags = {
      Organisation = "Self"
      Environment  = "dev"
    }
  }
}
