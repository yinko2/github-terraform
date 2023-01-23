// Store Terraform Backend State on S3 Bucket
terraform {
  backend "s3" {
    bucket         = "terraform-backend-state-amk-152"
    key            = "github/backend-state"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform_state_locks"
    encrypt        = true
    profile        = "yinko"
  }

  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

// Define Provider and Region
provider "aws" {
  region  = "ap-southeast-1"
  profile = "yinko"
  default_tags {
    tags = {
      Project = "StockPOS"
    }
  }
}

provider "github" {
  token = var.github_token # or `GITHUB_TOKEN`
}
