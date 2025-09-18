# create a policy that will permit to read all pasword in path secret/data/mysecret
resource "vault_policy" "read-secrets-policy" {
  name   = "read-secrets-policy"
  policy = <<EOT
  path "${vault_mount.kvv2.path}/ecozium/mysecret" {
  capabilities = ["read"]
}
EOT
}

# create a policy that can manage vault witout be able to read any secret 
resource "vault_policy" "manage-vault-policy" {
  name   = "manage-vault"
  policy = <<EOT
  path "sys/mounts/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}
path "sys/auth/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}
path "sys/policies/acl/*" {
    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
    }
path "sys/policies/password/*" {
    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
    }
path "sys/policies/role/*" {
    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
    }
path "sys/policies/group/*" {
    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
    }
path "auth/*" {
    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
    }
path "identity/*" {
    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
    }
path "sys/capabilities-self" {
    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
    }
EOT
}


# create a policy that can manage pki secret engine
resource "vault_policy" "manage-pki-policy" {
  name   = "manage-pki-policy"
  policy = <<EOT
    path "${vault_mount.pki-example.path}/*" {
    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
    }
EOT
}



