terraform {
  backend "azurerm" {
    # Valores via -backend-config (ver backend.hcl.example): resource_group_name, storage_account_name, container_name, key.
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.0.0, <5.0.0"
    }
  }
}