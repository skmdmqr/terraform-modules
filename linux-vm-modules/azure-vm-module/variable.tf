variable "count_var" {
    type = string
    default = "2"
}

# Resource group variables
variable "rg_name" {
    type = string
    description = "Name of the resource group where VMs will be created."  
}

variable "location" {
    type = string
    description = "Azure region where resources will be created." 
}


# Public ip resource variables
variable "public_ip_resource_name" {
    description = "public ip address resource name."
    type = string
}

variable "allocation_method" {
    description = "public ip address resource name."
    type = string
}

variable "sku" {
    description = "public ip address resource name."
    type = string
#    default = "Basic"
}



# Network interface card variables
variable "nic_card_name" {
    description = "your desired network interface card name."
    type = string
}

variable "subnet_id" {
    description = "public ip address resource name."
    type = string
}

variable "private_ip_address_allocation" {
    description = "private ip address allocation should be static."
    type = string
}

variable "private_ip" {
    description = "private ip address for vms."
    type = string
}



# azure vm variables
variable "vm_name" {
  description = "your desired name for the Azure VMs."
  type        = string
}

variable "vm_size" {
    description = "mention your desired cpu version."
    type = string 
}

variable "admin_username" {
    description = "username for the vms."
    type = string
}

variable "admin_pass" {
    description = "admin password for the vms should be secret."
    type = string
}


#os_disk variables
variable "caching" {
    description = "os_disk / caching should be ReadWrite."
    type = string
}

variable "storage_account_type" {
    description = "os_disk / storage_account_type should be Standard_LRS."
    type = string
}


#source_image_reference variables
variable "publisher" {
    description = "source_image_reference / publisher should be Canonical."
    type = string
}

variable "offer" {
    description = "source_image_reference / offer should be 0001-com-ubuntu-server-jammy."
    type = string
}

variable "image_sku" {
    description = "source_image_reference / image_sku should be 22_04-lts."
    type = string
}

variable "version_latest" {
    description = "source_image_reference / version should be latest."
    type = string
}