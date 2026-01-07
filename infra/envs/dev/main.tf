module "network" {
  source              = "../../modules/network"
  location            = "Central India"
  resource_group_name = "rg-synapse-dev"
  vnet_name           = "vnet-synapse-dev"
  address_space       = ["10.0.0.0/16"]
  subnet_prefix       = "10.0.1.0/24"
}

module "aks" {
  source              = "../../modules/aks"
  location            = "Central India"
  resource_group_name = "rg-synapse-dev"
  cluster_name        = "synapse-aks-dev"
  subnet_id           = module.network.subnet_id
}
