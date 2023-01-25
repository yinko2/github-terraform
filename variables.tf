variable "configs_bucket_name" {
  description = "Storage Bucket for Config files"
  default     = "config-files-wkh"
}

variable "github_token" {
  type        = string
  description = "OAuth Token for GitHub"
}

variable "dockerhub_username" {
  type        = string
  description = "Username for Docker Hub"
}

variable "dockerhub_password" {
  type        = string
  description = "Password for Docker Hub"
}
