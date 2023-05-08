terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.52.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a60deb51-22a6-4a0b-9d1d-14bc4927a3ee"
  client_id = "1004fae0-f511-43b5-a8c8-145498a6e4ae"
  client_secret = "G2t8Q~T6tszAUgPjJmIAC7blHmVWnAeHFbrWnaRP"
  tenant_id = "51979232-fc51-4638-9cd7-d0c8e1e8eb52"
}

resource "azurerm_resource_group" "myrg101" {
  name = "mynewrg345"
  location = "North Europe"
}

resource "azurerm_storage_account" "mysg101" {
  name                     = "mynewsg3095"
  resource_group_name      = "rg-from-linux-dc"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
