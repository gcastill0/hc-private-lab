variable "company-name" {
  description = "Official name for our client"
  default     = "Norbord"
}

variable "environment" {
  description = "Target environment for our client"
  default     = "Dev\\Test"
}

variable "subscription-name" {
  description = "(Optional) Specifies the ID of the subscription. Used for tagging."
  default     = "Norbord Azure"
}

variable "resource-group-name" {
  description = "(Required) The name of the resource group. Must be unique on your Azure subscription."
  default     = "RG-CCA-NB"
}

variable "location" {
  description = "(Required) The location where the resource group should be created. See this: https://azure.microsoft.com/en-us/global-infrastructure/locations/"
  default     = "canadacentral"
}

variable "vnet-name" {
  description = "(Required) Specifies the name of the Virtual Network."
  default     = "VNET-CCA-NB"
}

variable "tags" {
  type = "map"

  default = {
    Subscription = "${var.subscription-name}"
    Environment  = "${var.environment}"
    Owner        = "${var.company-name}"
  }

  description = "Basic tags"
}
