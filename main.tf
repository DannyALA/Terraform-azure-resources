terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
provider "azurerm" {
  subscription_id = var.subscriptionID
  features {}
}



resource "azurerm_resource_group" "Terraformtraining" {
  name     = var.resourceGroupName
  location = var.location

}

resource "azurerm_virtual_network" "Terraformtraining-vnet" {
  name                = "Terraformtraining-vnet"
  resource_group_name = azurerm_resource_group.Terraformtraining.name
  location            = azurerm_resource_group.Terraformtraining.location
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["8.8.8.8", "8.8.4.4"]
  tags = {
    environment = "Dev"
  }
}

