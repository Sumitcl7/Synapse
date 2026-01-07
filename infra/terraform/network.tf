resource "azurerm_virtual_network" "synapse_vnet" {
  name                = "synapse-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.synapse_rg.location
  resource_group_name = azurerm_resource_group.synapse_rg.name
}

resource "azurerm_subnet" "aks_subnet" {
  name                 = "aks-subnet"
  resource_group_name  = azurerm_resource_group.synapse_rg.name
  virtual_network_name = azurerm_virtual_network.synapse_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
