// modules/storage/variables.tf
variable "storage_name" {
  description = "Name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure location for the storage account"
  type        = string
}

variable "account_tier" {
  description = "The account tier for the storage account"
  type        = string
}

variable "account_replication_type" {
  description = "The replication type for the storage account"
  type        = string
}

variable "tags" {
  description = "Tags for the storage account"
  type        = map(string)
  default     = {}
}
