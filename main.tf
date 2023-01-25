// Store Terraform Backend State on S3 Bucket
terraform {
  backend "s3" {
    bucket         = "terraform-backend-state-wkh"
    key            = "github/backend-state"
    region         = "ap-southeast-1"
    dynamodb_table = "terraform_state_locks"
    encrypt        = true
    profile        = "wkh"
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
  profile = "wkh"
  default_tags {
    tags = {
      Project = "GitHub"
    }
  }
}

// Define Provider and Region
provider "aws" {
  region  = "ap-south-1"
  profile = "wkh"
  alias   = "mumbai"
  default_tags {
    tags = {
      Project = "GitHub"
    }
  }
}

provider "github" {
  token = var.github_token # or `GITHUB_TOKEN`
}
