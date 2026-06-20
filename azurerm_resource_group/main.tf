resource "azurerm_resource_group" "rg-LandingZone" {
    for_each = var.rg-names
    name     = each.value.name
    location = each.value.location
}