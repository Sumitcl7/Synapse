resource "azurerm_kubernetes_cluster" "synapse_aks" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.synapse_rg.location
  resource_group_name = azurerm_resource_group.synapse_rg.name
  dns_prefix          = "synapse"

  default_node_pool {
    name       = "system"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
