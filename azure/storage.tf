terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.21.1"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

resource "azurerm_resource_group" "terraformpractice" {
  name     = "terraform104"
  location = "southcentralus"
  tags = {
    environment = "dev"
    source      = "Terraform"
  }
}

resource "azurerm_storage_account" "StorAccou1" {
  name                     = "terraformstorage134"
  resource_group_name      = azurerm_resource_group.terraformpractice.name
  location                 = azurerm_resource_group.terraformpractice.location
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "Container1" {
  name                  = "image"
  storage_account_name  = azurerm_storage_account.StorAccou1.name
  container_access_type = "private"
}
