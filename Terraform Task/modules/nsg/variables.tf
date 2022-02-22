variable "rg_name" {
  type        = string
  description = "The name of Azure Resource Group to be provisioned."
}

variable "location" {
  type        = string
  description = "The location to be used for all Azure Resources"
  default     = "East US"
}

variable "nsg_name" {
  type        = string
  description = "The name of Azure Network Security Group"
}

variable "subnet_id" {
  type        = string
  description = "The id of Azure Subnet"
}

variable "nsg_rules" {
  type        = map(any)
  description = "The rules that should be added in the Network Security Group"
}