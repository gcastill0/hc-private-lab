variable "postfix" {
  description = "Common name postfix for the environment"
  default     = "CCA-NB"
}

variable "location" {
  description = "(Required) The location where the resource group should be created. See this: https://azure.microsoft.com/en-us/global-infrastructure/locations/"
  default     = "canadacentral"
}

variable "gwsubname" {
  description = "A user-defined name of the IP configuration."
  default     = "GatewaySubnet"
}

variable "loggingstorageaccount" {
  description = "(Required) Specifies the name of the Storage Account"
  default     = "gcnbdiaglogs"
}

variable "sqlbckstorageaccount" {
  description = "(Required) Specifies the name of the Storage Account"
  default     = "gcnbsqlbck"
}

variable "tags" {
  type = "map"

  default = {
    Subscription = "Norbord Azure"
    Environment  = "Dev\\Test"
    Owner        = "Norbord"
  }

  description = "Basic tags"
}
