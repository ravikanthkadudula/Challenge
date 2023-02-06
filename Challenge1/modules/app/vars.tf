variable "resource_group" {
    default = "rg-1-resource-group"
}
variable "location" {
    default = "West Europe"
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