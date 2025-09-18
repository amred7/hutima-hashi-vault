resource "vault_mount" "pki-example" {
  path        = "pki-reda"
  type        = "pki"
  description = "This is an example PKI mount"

  default_lease_ttl_seconds = 3600
  max_lease_ttl_seconds     = 86400
}