resource "azurerm_public_ip" {
    for_each = var.pub-ip
    name = each.value.name
    location = each.value.location
  allocation_method = "Static"
}