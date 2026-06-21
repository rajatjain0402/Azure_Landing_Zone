resource "azurerm_network_interface_card" "nic-lz" {
    for_each = var.nic-LZ
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rg_name
}