output "site_recovery_network_mappings_id" {
  description = "Map of id values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "site_recovery_network_mappings_name" {
  description = "Map of name values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "site_recovery_network_mappings_recovery_vault_name" {
  description = "Map of recovery_vault_name values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.recovery_vault_name if v.recovery_vault_name != null && length(v.recovery_vault_name) > 0 }
}
output "site_recovery_network_mappings_resource_group_name" {
  description = "Map of resource_group_name values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "site_recovery_network_mappings_source_network_id" {
  description = "Map of source_network_id values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.source_network_id if v.source_network_id != null && length(v.source_network_id) > 0 }
}
output "site_recovery_network_mappings_source_recovery_fabric_name" {
  description = "Map of source_recovery_fabric_name values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.source_recovery_fabric_name if v.source_recovery_fabric_name != null && length(v.source_recovery_fabric_name) > 0 }
}
output "site_recovery_network_mappings_target_network_id" {
  description = "Map of target_network_id values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.target_network_id if v.target_network_id != null && length(v.target_network_id) > 0 }
}
output "site_recovery_network_mappings_target_recovery_fabric_name" {
  description = "Map of target_recovery_fabric_name values across all site_recovery_network_mappings, keyed the same as var.site_recovery_network_mappings"
  value       = { for k, v in azurerm_site_recovery_network_mapping.site_recovery_network_mappings : k => v.target_recovery_fabric_name if v.target_recovery_fabric_name != null && length(v.target_recovery_fabric_name) > 0 }
}

