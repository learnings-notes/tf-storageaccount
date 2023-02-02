resource "azurerm_storage_account" "sa" {
  for_each = var.sa_name

  name                     = each.value
  resource_group_name      = var.resource_group
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  network_rules {
    default_action = "Deny"
    ip_rules       = ["100.0.0.1"]
  }

  tags = {
    environment = "staging"
  }
}
