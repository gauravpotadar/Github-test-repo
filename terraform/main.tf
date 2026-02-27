resource "azurerm_resource_group" "test12" {
  name     = "test123vrunda"
  location = "westus"
}

resource "azurerm_storage_account" "storage1" {
  name                     = "vrunda987654"
  resource_group_name      = azurerm_resource_group.test12.name
  location                 = azurerm_resource_group.test12.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
    owner = "Pooja"
    serviceprovider = "GauravP"
    notification = "enabled"
  }
}