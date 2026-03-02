resource "azurerm_static_site" "static_web_app" {
  name                = "stapp-azure26"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "Central US"
  sku_tier            = "Free"
  sku_size            = "Free"
}

output "static_web_app_url" {
  value = azurerm_static_site.static_web_app.default_host_name
}
