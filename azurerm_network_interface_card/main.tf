resource "azurerm_network_interface_card" "nic-lz" {
    for_each = var.nic-LZ
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rg_name

    ip_configuration {
    name                          = "subnet-nic"
    subnet_id                     = azurerm_subnet.subnets.id
    private_ip_address_allocation = "static"

    public_ip_address_id = azurerm_public_ip.pub
  }

  depends_on = [ azurerm_resource_group.rg-LandingZone ]
}

