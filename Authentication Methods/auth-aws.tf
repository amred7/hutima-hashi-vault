# create an aws authentification methode with ttl of 1h
resource "vault_auth_backend" "aws" {
  type        = "aws"
  path        = "aws-reda"
  description = "Example aws auth method"
  tune {
    default_lease_ttl = "3600s"
    max_lease_ttl     = "3600s"
  }
}