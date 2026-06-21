resource "azurerm_network_security_group" "nsg-lz" {
    for_each = var.nsg-LZ
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rg_name

    depends_on = [azurerm_resource_group.rg-LandingZone]
}