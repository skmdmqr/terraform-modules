resource "azurerm_public_ip" "public-ip" {
#  count               = var.count_var
  name                = var.public_ip_resource_name
  location            = var.location
  resource_group_name = var.rg_name
  allocation_method   = var.allocation_method
  sku                 = var.sku
}

resource "azurerm_network_interface" "tf-nic" {
#  count = var.count_var
  name                = var.nic_card_name
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    private_ip_address            = var.private_ip
    public_ip_address_id = azurerm_public_ip.public-ip.id
  }
}

resource "azurerm_linux_virtual_machine" "tf-vm" {
#  count = var.count_var
  name                = var.vm_name
  resource_group_name = var.rg_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_pass  # Password for the admin user
  disable_password_authentication = false  # Enable password authentication
  network_interface_ids = [azurerm_network_interface.tf-nic.id,]

#  admin_ssh_key {
#    username   = var.admin_username
#    public_key = file("./ssh-keys/id_rsa.pub")
#  }

  os_disk {
    caching              = var.caching
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.image_sku
    version   = var.version_latest
  } 
}
