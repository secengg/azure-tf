resource "random_string" "random" {
  length  = 4
  upper   = false
  special = false
}

resource "azurerm_storage_account" "mystorage" {
  name                     = "stor${random_string.random.id}"
  resource_group_name      = var.rggroup
  location                 = var.location
  account_tier             = var.tier
  account_replication_type = var.replication_type

  tags = {
    environment = "staging"
    cost-centre= "Training"
  }
}

resource "azurerm_storage_share" "example" {
  name                 = var.name
  depends_on           = [azurerm_storage_account.mystorage]
  storage_account_name = azurerm_storage_account.mystorage.name
  quota                = var.quota
  access_tier          = var.access_tier

  acl {
    id = "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI"

    access_policy {
      permissions = "rwdl"
      start       = "2019-07-02T09:38:21.0000000Z"
      expiry      = "2019-07-02T10:38:21.0000000Z"
    }
  }
}