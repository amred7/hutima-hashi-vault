# create a internal group of admin
resource "vault_identity_group" "admin-group" {
  name     = "team-admin"
  type     = "internal"
  policies = [vault_policy.manage-vault-policy.name]
  metadata = {
    team = "admin"
  }
  member_entity_ids = [vault_identity_entity.admin-entity.id]
}