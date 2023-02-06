output "resource_group_name" {
    value = azurerm_resource_group.rg-1.name
    description = "Name of the resource group."
}

output "location_id" {
    value = azurerm_resource_group.rg-1.location
    description = "Location id of the resource group"
}
