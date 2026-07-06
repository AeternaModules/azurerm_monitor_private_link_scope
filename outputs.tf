output "monitor_private_link_scopes" {
  description = "All monitor_private_link_scope resources"
  value       = azurerm_monitor_private_link_scope.monitor_private_link_scopes
}
output "monitor_private_link_scopes_ingestion_access_mode" {
  description = "List of ingestion_access_mode values across all monitor_private_link_scopes"
  value       = [for k, v in azurerm_monitor_private_link_scope.monitor_private_link_scopes : v.ingestion_access_mode]
}
output "monitor_private_link_scopes_name" {
  description = "List of name values across all monitor_private_link_scopes"
  value       = [for k, v in azurerm_monitor_private_link_scope.monitor_private_link_scopes : v.name]
}
output "monitor_private_link_scopes_query_access_mode" {
  description = "List of query_access_mode values across all monitor_private_link_scopes"
  value       = [for k, v in azurerm_monitor_private_link_scope.monitor_private_link_scopes : v.query_access_mode]
}
output "monitor_private_link_scopes_resource_group_name" {
  description = "List of resource_group_name values across all monitor_private_link_scopes"
  value       = [for k, v in azurerm_monitor_private_link_scope.monitor_private_link_scopes : v.resource_group_name]
}
output "monitor_private_link_scopes_tags" {
  description = "List of tags values across all monitor_private_link_scopes"
  value       = [for k, v in azurerm_monitor_private_link_scope.monitor_private_link_scopes : v.tags]
}

