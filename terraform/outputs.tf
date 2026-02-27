output "key" {
  value = azurerm_storage_account.storage1.primary_access_key
  sensitive = true
}

output "host" {
  value = azurerm_storage_account.storage1.primary_blob_host
}