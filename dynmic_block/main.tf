resource "azurerm_virtual_network" "vnet" {
  name                = "prod-vnet"
  location            = "eastus"
  resource_group_name = azurerm_resource_group.net_group.name
  address_space       = var.address_space
                                           
  dynamic "subnet" {
    for_each = var.subnet_data
    content {
      name           = subnet.value["name"]
      address_prefix = subnet.value["address_prefix"]
    }
  }
}
