variable "site_recovery_network_mappings" {
  description = <<EOT
Map of site_recovery_network_mappings, attributes below
Required:
    - name
    - recovery_vault_name
    - resource_group_name
    - source_network_id
    - source_recovery_fabric_name
    - target_network_id
    - target_recovery_fabric_name
EOT

  type = map(object({
    name                        = string
    recovery_vault_name         = string
    resource_group_name         = string
    source_network_id           = string
    source_recovery_fabric_name = string
    target_network_id           = string
    target_recovery_fabric_name = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_network_mappings : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_network_mappings : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_network_mappings : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_network_mappings : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_network_mappings : (
        length(v.source_recovery_fabric_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_network_mappings : (
        length(v.target_recovery_fabric_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

