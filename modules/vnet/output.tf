
output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}
output "subnet_id" {
  description = "The ID of the subnet to be used by the VM"
  value       = azurerm_subnet.subnet1.id
}