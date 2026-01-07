output "resource_group_name" {
  value = azurerm_resource_group.synapse_rg.name
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.synapse_aks.name
}
