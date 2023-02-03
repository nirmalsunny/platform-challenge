resource "aws_ecr_repository" "platform_challenge" {
  name                 = var.ecr_repository_name
  image_tag_mutability = "MUTABLE"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
  image_scanning_configuration {
    scan_on_push = true
  }
}