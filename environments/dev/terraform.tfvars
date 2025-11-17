rgs = {
  rg1 = {
    name     = "rg-sdm"
    location = "centralindia"
  }
}

stgs = {
  stg1 = {
    name                     = "stgacc92"
    location                 = "centralindia"
    resource_group_name      = "rg-sdm"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnets = {
  vnet1 = {
    vnet_name           = "prod-vnet"
    location            = "centralindia"
    resource_group_name = "rg-sdm"
    address_space       = ["10.0.0.0/16"]

    subnet = {
      subnet1 = {
        name             = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      }
      subnet2 = {
        name             = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    }
} }

pips = {
  pip1 = {
  pip_name           = "frontend-pip"
  location            = "centralindia"
  resource_group_name = "rg-sdm"
  allocation_method   = "Static"
  }
  pip2 = {
  pip_name           = "backend-pip"
  location            = "centralindia"
  resource_group_name = "rg-sdm"
  allocation_method   = "Static"
  }
}

vms = {
  vm1 = {
    name                = "frontend-vm"
    resource_group_name = "rg-sdm"
    location            = "centralindia"
    size                = "Standard_F2"
    admin_username      = "adminuser"
    admin_password      = "Password@123"
    vnet_name = "prod-vnet"
    subnet_name = "frontend-subnet"
    pip_name = "frontend-pip"
    nic_name = "frontend-nic"
  }

  vm2 = {
    name                = "backend-vm"
    resource_group_name = "rg-sdm"
    location            = "centralindia"
    size                = "Standard_F2"
    admin_username      = "adminuser"
    admin_password      = "Password@123"
    vnet_name = "prod-vnet"
    subnet_name = "backend-subnet"
    pip_name = "backend-pip"
    nic_name = "backend-nic"
  }
}

key_vaults = {
  kv1 = {
    kv_name = "kv-frontend91"
    location = "centralindia"
    resource_group_name = "rg-sdm"

  }
}

