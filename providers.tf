# create a providers config for hashicorp vault
terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = ">= 5.2.1"
    }
  }
}