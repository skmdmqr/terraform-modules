resource "azurerm_resource_group" "tf-rg" {
  name     = var.rg_name
  location = var.location
}
