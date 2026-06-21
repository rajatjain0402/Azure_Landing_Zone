resource "azurerm_subnet" "subnet1" {
    for_each = var.subnets_LZ
    name = each.value.name
    resource_group_name = each.value.rg_name
    virtual_network_name = each.value.virtual_network_name
    address_prefixes = each.value.address_prefix

    depends_on = [azurerm_virtual_network.vnet-lz]
}