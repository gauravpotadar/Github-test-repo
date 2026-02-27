terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.94.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "madhur-test"
    storage_account_name = "mlnoncode8318229399"
    container_name = "azureml"
    key = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "5a0855b9-426d-429e-83a9-ea7c4796e9a4"
  features {}
}