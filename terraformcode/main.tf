

# resource "azurerm_resource_group" "abc" {
#   name = var.resourcegroupname
#   location = var.location
#   tags = {
#     environment = var.tags
#   }
# }

# resource "azurerm_resource_group" "example" {
#   count    = 2
#   name     = "${var.resourcegroupname}-${count.index + 1}"   # Creates rg-example-1 and rg-example-2
#   location = var.location
# }

# resource "azurerm_resource_group" "example" {
#   count    = length(var.resourcegroupname)
#   name     = var.resourcegroupname[count.index]
#   location = var.location
# }

# resource "azurerm_resource_group" "rg" {
#   name     = var.myResourceGroup
#   location = var.location
# }
# data "azurerm_resource_group" "name" {
#   name = "demo"
# }
 resource "azurerm_resource_group" "name" {
   name = var.resource_group_name
   location = var.location
   tags = {
     env = "dev"
   }
 }
# resource "azurerm_virtual_network" "vnet" {
#   name                = var.vnet_name
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.name.location
#   resource_group_name = azurerm_resource_group.name.name
# }

# resource "azurerm_subnet" "subnet" {
#   name                 = "mySubnet"
#   resource_group_name  = azurerm_resource_group.rg.name
#   virtual_network_name = azurerm_virtual_network.vnet.name
#   address_prefixes     = ["10.0.1.0/24"]
# }

# resource "azurerm_network_interface" "nic" {
#   name                = "myNIC"
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.subnet.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# resource "azurerm_windows_virtual_machine" "vm" {
#   name                  = "myVM"
#   resource_group_name   = azurerm_resource_group.rg.name
#   location              = azurerm_resource_group.rg.location
#   size                  = "Standard_B1s"
#   admin_username        = "azureuser"
#   admin_password        = "P@ssw0rd1234!"
#   network_interface_ids = [azurerm_network_interface.nic.id]

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "MicrosoftWindowsServer"
#     offer     = "WindowsServer"
#     sku       = "2019-Datacenter"
#     version   = "latest"
#   }
# }
