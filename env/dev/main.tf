provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstatefile-rg"
    storage_account_name = "ghtfstatefilesa"
    container_name       = "rgtfstatecontainer"
    key                  = "terraformtemplateDev.tfstate"
  }
}


module "sa" {
  source         = "../../modules/storageaccount"
  sa_name        = var.sa_name
  location       = azurerm_resource_group.rg.location
  resource_group = azurerm_resource_group.rg.name

}
