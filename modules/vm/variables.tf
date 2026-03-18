variable "vm_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "subnet_id" {}
variable "vm_size" { default = "Standard_D2s_v3" }
variable "admin_username" { default = "azureuser" }