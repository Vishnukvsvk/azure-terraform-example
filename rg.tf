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
}

resource "azurerm_resource_group" "r1" {
  name     = "g123"
  location = "West Us"
}
