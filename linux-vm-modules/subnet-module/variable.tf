variable "subnet_name" {
    description = "subnet resource name."
    type = string  
}

variable "rg_name" {
    type = string
    description = "Name of the resource group where VMs will be created."  
}

variable "vnet_name" {
    type = string
    description = "Name of the vnet where all the resource will be created."  
}

#variable "cidr" {
#    type = list(number)
#    description = "Name of the vnet where all the resource will be created."  
#}