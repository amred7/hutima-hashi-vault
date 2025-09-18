# ici on stocke la declaration des different Secrets

resource "vault_kv_secret_v2" "example" {
  mount               = vault_mount.kvv2.path
  name                = "/hutima/secret-example"
  cas                 = 1
  delete_all_versions = true
  data_json = jsonencode(
    {
      zip = "zap",
      foo = "bar"
    }
  )
  custom_metadata {
    max_versions = 5
    data = {
      foo = "vault@example.com",
      bar = "12345"
    }
  }
}

resource "vault_generic_secret" "examplesecret1" {
  path = "${vault_mount.kvv2.path}/ecozium/mysecret"
  data_json = jsonencode({
    username = "reda"
    password = var.secret_example
  })
}
resource "vault_generic_secret" "examplesecret2" {
  path = "secret/cnapp/mysecret2"
  data_json = jsonencode({
    username = "dalila"
    password = var.token
  })
}
