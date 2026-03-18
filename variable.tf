variable "location" {}
variable "rg-name" {}
variable "vnet-name" {}
variable "address-space" {}
variable "storage-account-name" {}
variable "account-tier" {}
variable "account-replication-type" {
  type    = string
  default = "LRS"
}
variable "vm-name" {}


