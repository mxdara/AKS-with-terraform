provider "azurerm" {
    features {
      
    }
}

resource "azurerm_resource_group" "rg1" {
  name = var.rgname
  location = var.location
}

module "ServicePrinciple" {
  source = "./modules/ServicePrinciple"
  service_principal_name = var.service_principal_name
}