terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.37.0"
    }
    kubernetes = { 

      source  = "hashicorp/kubernetes" 

    } 
  }
}

provider "azurerm" {
  features {}
  
  subscription_id = "26c54b2f-dbef-4a0a-8ef7-ee63c958ca31"
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "r1" {
  name     = "g12345"
  location = "West Us"
}
