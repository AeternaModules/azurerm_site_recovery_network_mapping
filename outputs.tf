output "site_recovery_network_mappings_name" {
  description = "Map of name values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.name }
}
output "site_recovery_network_mappings_recovery_vault_name" {
  description = "Map of recovery_vault_name values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.recovery_vault_name }
}
output "site_recovery_network_mappings_resource_group_name" {
  description = "Map of resource_group_name values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.resource_group_name }
}
output "site_recovery_network_mappings_source_network_id" {
  description = "Map of source_network_id values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.source_network_id }
}
output "site_recovery_network_mappings_source_recovery_fabric_name" {
  description = "Map of source_recovery_fabric_name values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.source_recovery_fabric_name }
}
output "site_recovery_network_mappings_target_network_id" {
  description = "Map of target_network_id values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.target_network_id }
}
output "site_recovery_network_mappings_target_recovery_fabric_name" {
  description = "Map of target_recovery_fabric_name values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.target_recovery_fabric_name }
}

