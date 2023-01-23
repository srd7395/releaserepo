resource "azurerm_resource_group" "rgr11" {
   name = var.rgname
   location = var.loc
  
}

resource "azurerm_public_ip" "rgr11" {
    name = var.pipname
    resource_group_name = azurerm_resource_group.rgr11.name
    location = azurerm_resource_group.rgr11.location
    allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}

