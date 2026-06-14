terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.77.0"
    }
  }

backend "azurerm" {
  resource_group_name = "rg-state"
  storage_account_name = "stgstatef"
  container_name = "container-state"
  key = "prod.terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
}
