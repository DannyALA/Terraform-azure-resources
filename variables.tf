

variable "subscriptionID" {
  type        = string
  description = "The subscription ID where the resource group will be created."
}

variable "resourceGroupName" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The location where the resource group will be created."
}
