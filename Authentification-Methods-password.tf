# create a auth method with username and password 
resource "vault_auth_backend" "auth-password-01" {
  type        = "userpass"
  path        = "userpass-hutima"
  description = "Example userpass auth method to connect to vault"
  tune {
    default_lease_ttl = "3600s"
    max_lease_ttl     = "86400s"
  }
}