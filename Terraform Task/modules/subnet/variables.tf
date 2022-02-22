variable "rg_name" {
  type        = string
  description = "The name of Azure Resource Group to be provisioned."
}

variable "vnet_name" {
  type        = string
  description = "The name of Azure Virtual Network"
}

variable "subnet_name" {
  type        = string
  description = "The name of Azure Subnet"
}

variable "subnet_address_space" {
  type        = list(any)
  description = "The address space for Azure Subnet"
}