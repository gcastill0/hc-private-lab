variable "postfix" {
  description = "Common name postfix for the environment"
  default     = "interrupt"
}

variable "location" {
  description = "(Required) The location where the resource group should be created. See this: https://azure.microsoft.com/en-us/global-infrastructure/locations/"
  default     = "East US"
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
    Subscription = "Customer in Azure"
    Environment  = "HCS Testing"
    Owner        = "Gilberto Castillo"
    Purpose      = "POC Test"
    Email        = "gilberto@hashicorp.com"
    Phone        = "416-543-7918"
    DoNotDelete  = "True"
  }

  description = "Basic tags"
}

variable "hcadmin_rsa" {
  description = "SSH RSA pub key"
}
