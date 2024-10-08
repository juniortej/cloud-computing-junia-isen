output "aks_subnet_id" {
  value = azurerm_subnet.aks_subnet.id
}

output "vnet_id" {
  value = azurerm_virtual_network.virtual_network.id
}

output "vnet_name" {
  value = azurerm_virtual_network.virtual_network.name
}
