resource "github_user_ssh_key" "github_ssh" {
  title = "terraform"
  key   = tls_private_key.github_ssh_key.public_key_openssh
}

resource "tls_private_key" "github_ssh_key" {
  algorithm = "ED25519"
}

resource "aws_s3_object" "github_ssh_public_key" {
  key                    = "github-ssh/id_ed25519.pub"
  content                = tls_private_key.github_ssh_key.public_key_openssh
  bucket                 = data.aws_s3_bucket.config_bucket.id
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "github_ssh_private_key" {
  key                    = "github-ssh/id_ed25519"
  content                = tls_private_key.github_ssh_key.private_key_openssh
  bucket                 = data.aws_s3_bucket.config_bucket.id
  server_side_encryption = "AES256"
}
