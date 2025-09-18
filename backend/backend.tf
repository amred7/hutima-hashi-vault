terraform {
  backend "azurerm" {
    access_key           = var.sa_acces_key
    storage_account_name = "tfmpnprodcacnsa"
    container_name       = "tfstate_vault"
    key                  = "terraform_vault.tfstate"

  }
}