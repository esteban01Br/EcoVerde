terraform {
  required_version = ">= 1.0"
}

# Proveedor local para entorno de desarrollo
provider "local" {}

# Archivo de configuración de la app (IaC declarativa)
resource "local_file" "app_config" {
  filename = "${path.module}/app-config.json"
  content  = jsonencode({
    app_name    = "Portal EcoVerde Antioquia"
    environment = "development"
    version     = "1.0.0"
    port        = 80
    replicas    = 2
  })
}

output "app_name" {
  value = "Portal EcoVerde Antioquia"
}

output "environment" {
  value = "development"
}