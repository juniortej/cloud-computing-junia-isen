variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be created"
  default     = "francecentral"
}

variable "app_service_plan_name" {
  type        = string
  description = "Name of the App Service Plan"
}

variable "app_service_name" {
  type        = string
  description = "Name of the App Service"
}

variable "repo_url" {
  type        = string
  description = "URL of the GitHub repository containing the app"
  default = "https://github.com/juniortej/cloud-computing-junia-isen/tree/main/week-2"
}
