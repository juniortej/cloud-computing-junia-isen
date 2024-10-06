output "app_service_url" {
  description = "The URL of the deployed web app"
  value       = azurerm_app_service.app_service.default_site_hostname
}
