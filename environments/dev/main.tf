module "rg-module" {
    source = "../../modules/azurerm_resource_group"
    rgs = var.rgs
  
}

module "stg-module" {
  depends_on = [ module.rg-module ]
  source = "../../modules/azurerm_storage_account"
  stgs = var.stgs
  
}
module "vnet-module" {
  depends_on = [ module.rg-module ]
  source = "../../modules/azurerm_networking"
  vnets = var.vnets
  
}

module "pip-module" {
  depends_on = [module.rg-module]
  source  = "../../modules/azurerm_public_ip"
  pips = var.pips
}

module "vm-module" {
  depends_on = [ module.vnet-module ]
  source = "../../modules/azurerm_compute"
  vms = var.vms
  
}

module "key_vault" {
  depends_on = [ module.rg-module ]
  source = "../../modules/azurerm_key_vault"
  key_vaults = var.key_vaults
}

