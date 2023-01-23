variable "configs_bucket_name" {
  description = "Storage Bucket for Config files"
  default     = "config-files-wkh"
}

variable "github_token" {
  type        = string
  description = "OAuth Token for GitHub"
}
