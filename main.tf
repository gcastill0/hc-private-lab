# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=1.28.0"
}

# Create a resource group
resource "azurerm_resource_group" "test" {
  name     = "${var.resource-group-name}"
  location = "${var.location}"
  tags     = "${var.tags}"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "test" {
  name                = "${vnet-name}"
  resource_group_name = "${azurerm_resource_group.test.name}"
  location            = "${azurerm_resource_group.test.location}"
  address_space       = ["10.0.0.0/16"]
  tags                = "${var.tags}"
}
