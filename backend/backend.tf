terraform {
  backend "azurerm" {
    storage_account_name = "tfmpnprodcacnsa"
    container_name       = "tfstate_vault"
    key                  = "terraform_vault.tfstate"
  }
}