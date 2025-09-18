# create an approle authentification with 20m of ttl
resource "vault_auth_backend" "approle" {
  type        = "approle"
  path        = "approle-reda"
  description = "Example approle auth method"
  tune {
    default_lease_ttl = "1200s"
    max_lease_ttl     = "1200s"
  }
}