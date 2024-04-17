variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "project_name" {
  type        = string
  default     = "lbu-petclinic"
  description = "The name of the project."
}

variable "app_name" {
  type        = string
  default     = "petclinic"
  description = "The name of the project app"
}

variable "vnet_name" {
  type        = string
  default     = "petclinicVnet"
  description = "Virtual Network name"
}

variable "vm_name" {
  type        = string
  default     = "petclinic-mono"
  description = "Virtual Machine name"
}

variable "vm_size" {
  type        = string
  description = "The size of the Virtual Machine in the worker nodes"
  default     = "Standard_E2_v3"
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
  default     = "azureadmin"
}