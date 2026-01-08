variable "location" {}
variable "resource_group_name" {}
variable "cluster_name" {}
variable "subnet_id" {}

resource "azurerm_kubernetes_cluster" "this" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "synapse"

 default_node_pool {
  name       = "system"
  node_count = 1
 vm_size = "standard_b2s_v2"
}


  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "dev"
    project     = "synapse"
  }
}

output "aks_name" {
  value = azurerm_kubernetes_cluster.this.name
}
