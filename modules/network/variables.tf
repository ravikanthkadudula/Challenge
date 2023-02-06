# variables.tf

variable "location" {
  type = string
  default = "West Europe"
}

variable "resource_group_name" {
  type = string
  default = "rg-1-resource-group"
}

variable "vnet_name" {
  type = string
  default = "rg-1-vnet"
}

variable "vnetcidr" {
    default = "192.168.0.0/16"
  
}

variable "websubnetcidr" {
    default = "192.168.1.0/24"
  
}

variable "appsubnetcidr" {
    default = "192.168.2.0/24"
  
}

variable "dbsubnetcidr" {
    default = "192.168.3.0/24"
  
}

variable "resource_group" {}
variable "web_subnet_id" {}
variable "app_subnet_id" {}
variable "db_subnet_id" {}
