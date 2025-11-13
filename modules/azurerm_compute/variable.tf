variable "vms" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    size                = string
    admin_username      = string
    admin_password      = string
    vnet_name = string
    subnet_name = string
    pip_name = string
    nic_name = string

  }))

}
