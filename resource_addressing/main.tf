resource "azurerm_resource_group" "net_group" {
  name     = "net-group"
  location = "eastus"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "prod-vnet"
  location            = var.location
  resource_group_name = azurerm_resource_group.net_group.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }
}
