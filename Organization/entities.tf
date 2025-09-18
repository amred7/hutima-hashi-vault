# create an identity
resource "vault_identity_entity" "admin-entity" {
  name = "admin-entity"
  metadata = {
    team = "admin"
  }
  policies = [vault_policy.manage-vault-policy.name]
}