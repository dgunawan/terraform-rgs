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
    tags      = lookup(each.value,"tags",null) == null ? var.global_tags : merge(var.global_tags,each.value.tags)
}