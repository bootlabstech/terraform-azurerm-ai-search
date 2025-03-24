# Resource Group (Assuming it's created elsewhere in Terraform)
data "azurerm_key_vault" "example" {
  name                = var.keyvault_name
  resource_group_name = var.resource_group_name
}

# Azure Search Service
resource "azurerm_search_service" "search" {
  name                = var.search_service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  partition_count     = var.partition_count
  replica_count       = var.replica_count

  identity {
    type = "SystemAssigned"
  }
}
