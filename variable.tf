variable "search_service_name" {
  description = "The name of the Azure Search Service"
  type        = string
}

variable "sku" {
  description = "The SKU of the Search Service (e.g., basic, standard, free, standard2, etc.)"
  type        = string
}

variable "partition_count" {
  description = "Number of partitions for the Azure Search Service"
  type        = number
}

variable "replica_count" {
  description = "Number of replicas for the Azure Search Service"
  type        = number
}

variable "resource_group_name" {
  type        = string
  description = " The name of the resource group in which to create the storage account."
}

variable "location" {
  type        = string
  description = " Specifies the supported Azure location where the resource exists."
}

variable "keyvault_name" {
  type = string
}
