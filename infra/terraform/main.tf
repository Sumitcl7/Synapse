resource "azurerm_resource_group" "synapse_rg" {
  name     = var.resource_group_name
  location = var.location
}
