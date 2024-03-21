resource "azurerm_resource_group" "example" {
  name     = "example"
  location = var.azregion
}

resource "azurerm_storage_account" "mystorage" {
  name                     = "makistorage12345"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
    owner = "Ms. ${local.name}"
  }
}


