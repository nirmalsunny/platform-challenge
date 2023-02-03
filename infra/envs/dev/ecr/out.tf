output "ecr_repo_url" {
  value = aws_ecr_repository.platform_challenge.repository_url
  description = "url where the docker image is to be pushed"
}