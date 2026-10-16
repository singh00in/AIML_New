terraform {
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "4.80.0"
    }
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_machine_learning_workspace" "res-0" {
  application_insights_id = "/subscriptions/92fc1f6e-8639-4425-8489-64ccdfb2e499/resourceGroups/RG-YashML/providers/Microsoft.Insights/components/appinsight-ml1"
  friendly_name           = "ML-Workspace"
  key_vault_id            = "/subscriptions/92fc1f6e-8639-4425-8489-64ccdfb2e499/resourceGroups/RG-YashML/providers/Microsoft.KeyVault/vaults/keyvault-ml1"
  location                = "eastus2"
  name                    = "ML-Workspace"
  resource_group_name     = "RG-YashML"
  storage_account_id      = "/subscriptions/92fc1f6e-8639-4425-8489-64ccdfb2e499/resourceGroups/RG-YashML/providers/Microsoft.Storage/storageAccounts/storagemlacc1"
  identity {
    type = "SystemAssigned"
  }
  managed_network {
    isolation_mode = "Disabled"
  }
}
