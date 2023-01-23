resource "azurerm_resource_group" "rgr1" {
   name = "Pipelinergrelease2"
   location = "Canada Central"
  
}

resource "azurerm_public_ip" "rgr1" {
    name = "releasepip2"
    resource_group_name = azurerm_resource_group.rgr1.name
    location = azurerm_resource_group.rgr1.location
    allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}

