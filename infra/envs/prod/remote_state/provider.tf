provider "aws" {
  region  = "eu-west-2"
  profile = "default"
  default_tags {
    tags = {
      Organisation = "Self"
      Environment  = "dev"
    }
  }
}
