variable "rg_name" {
  type        = string
  description = "The name of Azure Resource Group to be provisioned."
}

variable "location" {
  type        = string
  description = "The location to be used for all Azure Resources"
  default     = "East US"
}

variable "vnet_name" {
  type        = string
  description = "The name of Azure Virtual Network"
}

variable "vnet_address_space" {
  type        = list(any)
  description = "The address space for Azure Virtual Network"
}