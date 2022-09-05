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
  name     = "terraform103"
  location = "southcentralus"
  tags = {
    environment = "dev"
    source      = "Terraform"
  }
}
