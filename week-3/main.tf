module "virtualNet" {
  source                      = "./modules/virtual-network"
  name                        = var.vnet_name
  location                    = var.location
  network_address_space       = var.network_address_space
  aks_subnet_address_prefix   = var.aks_subnet_address_prefix
  aks_subnet_address_name     = var.aks_subnet_address_name
  environment                 = var.environment
}