terraform {
  required_version = "~>1.0.0"
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

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

module "vnet" {
  source             = "../../modules/vnet"
  vnet_name          = var.vnet_name
  rg_name            = azurerm_resource_group.rg.name
  location           = azurerm_resource_group.rg.location
  vnet_address_space = var.vnet_address_space
}

module "subnet" {
  source               = "../../modules/subnet"
  subnet_name          = var.subnet_name
  rg_name              = azurerm_resource_group.rg.name
  vnet_name            = module.vnet.vnet_name
  subnet_address_space = var.subnet_address_space
}

module "nsg" {
  source    = "../../modules/nsg"
  nsg_name  = var.nsg_name
  location  = azurerm_resource_group.rg.location
  rg_name   = azurerm_resource_group.rg.name
  nsg_rules = local.nsg_rules
  subnet_id = module.subnet.subnet_id
}

module "vm" {
  source         = "../../modules/vm"
  location       = azurerm_resource_group.rg.location
  rg_name        = azurerm_resource_group.rg.name
  subnet_id      = module.subnet.subnet_id
  public_ip_name = var.public_ip_name
  nic_name       = var.nic_name
  vm_name        = var.vm_name
  vm_size        = var.vm_size
  vm_username    = var.vm_username
  vm_password    = var.vm_password
}