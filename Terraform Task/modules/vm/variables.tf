variable "rg_name" {
  type        = string
  description = "The name of Azure Resource Group to be provisioned."
}

variable "location" {
  type        = string
  description = "The location to be used for all Azure Resources"
  default     = "East US"
}

variable "public_ip_name" {
  type        = string
  description = "The name of Azure Public IP attached to the VM"
}

variable "subnet_id" {
  type        = string
  description = "The id of Azure Subnet"
}

variable "nic_name" {
  type        = string
  description = "The name of Network Interface Card attached to the VM"
}

variable "vm_name" {
  type        = string
  description = "The name of Azure Virtual Machine"
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
