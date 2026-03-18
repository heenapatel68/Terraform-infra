terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "ab3939ae-a899-4ec7-9ac6-bf65369f017b"
  tenant_id       = "59bf68e6-8766-412d-80fb-eb62cb36f3e6"
  client_id       = "0b10c5c7-ab41-481f-a02f-af6d64f3d143"
  client_secret   = "ivw8Q~qx6NxngQbJhmaXQivE8MkflMzy0ub_1agk"

  features {}
}

module "dev_rg" {
  source   = "./modules/resource_group"
  name     = var.rg-name
  location = var.location
}

module "dev_vnet" {
  source              = "./modules/vnet"
  vnet_name           = var.vnet-name
  address_space       = var.address-space
  location            = var.location
  resource_group_name = module.dev_rg.name
}

module "dev_storage" {
  source              = "./modules/storage"
    storage_name             = var.storage-account-name
    resource_group_name      = module.dev_rg.name
    location                 = var.location
    account_tier             = var.account-tier
    account_replication_type = var.account-replication-type
}

module "dev_virtual_machine" {
  source              = "./modules/vm"
  vm_name             = var.vm-name
  location            = var.location
  resource_group_name = module.dev_rg.name
  subnet_id           = module.dev_vnet.subnet_id
}
