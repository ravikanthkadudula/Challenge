
provider "azurerm" {
    features {}
  version = "2.92.0"
}

/*  module "resourcegroup" {
  source         = "./modules"
  name           = var.resource_group_name
  location       = var.location
} 
 */
 module "network" {
  source         = "./modules/network"  
  location       = module.network.location_id
  resource_group = module.network.resource_group_name
  vnetcidr       = var.vnetcidr
  websubnetcidr  = var.websubnetcidr
  appsubnetcidr  = var.appsubnetcidr
  dbsubnetcidr   = var.dbsubnetcidr
  web_subnet_id = module.network.websubnet_id 
  app_subnet_id  = module.network.appsubnet_id
  db_subnet_id   = module.network.dbsubnet_id
 }

 module "web" {
  source         = "./modules/web"
  web_host_name = var.web_host_name
  web_username = var.web_username
  web_os_password = var.web_os_password

}
module "app"{
  source = "./modules/app"
  app_host_name = var.app_host_name
  app_username = var.app_username
  app_os_password = var.app_os_password
}

module "db"{
  source = "./modules/db"
  primary_database = var.primary_database
  primary_database_version = var.primary_database_version
  primary_database_admin = var.primary_database_admin
  primary_database_password = var.primary_database_password
}


