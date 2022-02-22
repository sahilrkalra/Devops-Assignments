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

variable "subnet_name" {
  type        = string
  description = "The name of Azure Subnet"
}

variable "subnet_address_space" {
  type        = list(any)
  description = "The address space for Azure Subnet"
}

variable "nsg_name" {
  type        = string
  description = "The name of Azure Network Security Group"
}

variable "public_ip_name" {
  type        = string
  description = "The name of Public IP for Azure VM"
}

variable "nic_name" {
  type        = string
  description = "The name of NIC for Azure VM"
}

variable "vm_name" {
  type        = string
  description = "The name of Azure VM"
}

variable "vm_size" {
  type        = string
  description = "The size of Azure Virtual Machine"
  default     = "Standard_B1s"
}

variable "vm_username" {
  type        = string
  description = "The username of Azure Virtual Machine"
}

variable "vm_password" {
  type        = string
  description = "The password of Azure Virtual Machine"
}
