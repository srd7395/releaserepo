resource "azurerm_resource_group" "rgr" {
   name = "Pipelinergrelease"
   location = "Canada Central"
  
}

resource "azurerm_public_ip" "rgr" {
    name = "releasepip"
    resource_group_name = azurerm_resource_group.rgr.name
    location = azurerm_resource_group.rgr.location
    allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}

