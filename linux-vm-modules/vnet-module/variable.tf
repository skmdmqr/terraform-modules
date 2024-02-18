variable "vnet_name" {
    type = string
    description = "Name of the vnet where all the resource will be created."  
}

variable "location" {
    type = string
    description = "Azure region where resources will be created." 
}

variable "rg_name" {
    type = string
    description = "Name of the resource group where VMs will be created."  
}

