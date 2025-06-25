terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }

  backend "azurerm" {}
}
provider "azurerm" {
  features {}
  subscription_id = "76f3c62f-e8ff-4cba-8eb2-11e11a9c35e5"
}
