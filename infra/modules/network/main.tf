variable "location" {}
variable "resource_group_name" {}
variable "vnet_name" {}
variable "address_space" {}
variable "subnet_prefix" {}

resource "azurerm_virtual_network" "this" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    environment = "dev"
    project     = "synapse"
  }
}

resource "azurerm_subnet" "aks" {
  name                 = "aks-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [var.subnet_prefix]
}

output "subnet_id" {
  value = azurerm_subnet.aks.id
}
