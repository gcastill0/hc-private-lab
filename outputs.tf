output "azure_resource_name_baseline" {
  value = "${azurerm_resource_group.test.name}"
}

output "azure_resource_name_location" {
  value = "${azurerm_resource_group.test.location}"
}
