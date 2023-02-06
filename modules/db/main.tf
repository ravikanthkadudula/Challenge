resource "azurerm_sql_server" "primary" {
    name = var.primary_database
    resource_group_name = var.resource_group
    location = var.location
    version = var.primary_database_version
    administrator_login = var.primary_database_admin
    administrator_login_password = var.primary_database_password
}

resource "azurerm_sql_database" "db" {
  name                = "db"
  resource_group_name = var.resource_group
  location            = var.location
  server_name         = azurerm_sql_server.primary.name
  collation           = "SQL_Latin1_General_CP1_CI_AS"
  requested_service_objective_name = "S0"
}
