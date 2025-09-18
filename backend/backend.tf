terraform {
    backend "azurerm" {
        resource_group_name   = "rg-terraform-state"
        storage_account_name  = "stterraformstate"
        container_name        = "tfstate_vault"
        key                   = "terraform_vault.tfstate"
      
    }
}