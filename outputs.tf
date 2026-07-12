output "monitor_private_link_scopes_id" {
  description = "Map of id values across all monitor_private_link_scopes, keyed the same as var.monitor_private_link_scopes"
  value       = { for k, v in azurerm_monitor_private_link_scope.monitor_private_link_scopes : k => v.id }
}
output "monitor_private_link_scopes_ingestion_access_mode" {
  description = "Map of ingestion_access_mode values across all monitor_private_link_scopes, keyed the same as var.monitor_private_link_scopes"
  value       = { for k, v in azurerm_monitor_private_link_scope.monitor_private_link_scopes : k => v.ingestion_access_mode }
}
output "monitor_private_link_scopes_name" {
  description = "Map of name values across all monitor_private_link_scopes, keyed the same as var.monitor_private_link_scopes"
  value       = { for k, v in azurerm_monitor_private_link_scope.monitor_private_link_scopes : k => v.name }
}
output "monitor_private_link_scopes_query_access_mode" {
  description = "Map of query_access_mode values across all monitor_private_link_scopes, keyed the same as var.monitor_private_link_scopes"
  value       = { for k, v in azurerm_monitor_private_link_scope.monitor_private_link_scopes : k => v.query_access_mode }
}
output "monitor_private_link_scopes_resource_group_name" {
  description = "Map of resource_group_name values across all monitor_private_link_scopes, keyed the same as var.monitor_private_link_scopes"
  value       = { for k, v in azurerm_monitor_private_link_scope.monitor_private_link_scopes : k => v.resource_group_name }
}
output "monitor_private_link_scopes_tags" {
  description = "Map of tags values across all monitor_private_link_scopes, keyed the same as var.monitor_private_link_scopes"
  value       = { for k, v in azurerm_monitor_private_link_scope.monitor_private_link_scopes : k => v.tags }
}

