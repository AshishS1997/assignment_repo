terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }


  }
  backend "azurerm" {
    resource_group_name  = "assigmnet-rg"
    storage_account_name = "rajnistg"
    container_name       = "frontendvm"
    key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "af6aa2e9-539c-4948-b07c-d9aef5cc7c92"
}


