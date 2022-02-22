terraform {
  required_version = "~>1.0"
  required_providers {
    azure = {
      source  = "hashicorp/azurerm"
      version = "=2.95.0"
    }
  }
}

provider "azure" {
  features {}
}