resource "aws_ssm_parameter" "docker_hub_username" {
  provider    = aws.mumbai
  name        = "dockerhub-username"
  description = "Username for Docker Hub"
  type        = "SecureString"
  value       = var.dockerhub_username
}

resource "aws_ssm_parameter" "docker_hub_password" {
  provider    = aws.mumbai
  name        = "dockerhub-password"
  description = "Password for Docker Hub"
  type        = "SecureString"
  value       = var.dockerhub_password
}
