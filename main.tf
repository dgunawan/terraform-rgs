# https://registry.terraform.io/modules/cybergavin/resource-group/azurerm/latest/examples/multiple-resource-groups

terraform {
  required_version = ">= 0.15"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.58.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  for_each    = var.resource_groups

    name      = each.key
    location  = each.value.location
    tags      = each.value.tags
}