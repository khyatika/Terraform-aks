erraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "7b5bc41a-d156-450e-bf00-1cfe69176584"
}

terraform {
  backend "azurerm" {}
}