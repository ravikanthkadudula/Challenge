# variables.tf
variable "location" {
  type = string
  default = "West Europe"
}

variable "resource_group_name" {
  type = string
  default = "rg-1-resource-group"
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

variable "web_subnet_id" {
    default = "10.0.1.0/24"
  
}
variable "web_host_name"{
    default = "webserver"
}
variable "web_username" {
    default = "webuser01"
}
variable "web_os_password" {
    default = "Web@user01"
}

variable "resource_group" {
    default = "rg-1-resource-group"
}

variable "app_host_name"{
    default = "appserver"
}
variable "app_username" {
    default = "appuser-01"
}
variable "app_subnet_id" {
    default = "10.0.2.0/24"
}
variable "app_os_password" {
    default = "@Appuser1"  
}
variable "primary_database" {
    default = "sql-primary-db"
}
variable "primary_database_version" {
    default = "12.0"
}
variable "primary_database_admin" {
    default = "sqladmin"
}
variable "primary_database_password" {
    default = "sql@dm1n"
}
