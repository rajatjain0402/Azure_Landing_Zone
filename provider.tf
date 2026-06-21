terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.78.0"
    }
  }

backend "azurerm" {
  resource_group_name = "rg-state"
  storage_account_name = "stgstatef"
  container_name = "container-state"
  key = "qu.terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
}
