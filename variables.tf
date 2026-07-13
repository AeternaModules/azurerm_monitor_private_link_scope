variable "monitor_private_link_scopes" {
  description = <<EOT
Map of monitor_private_link_scopes, attributes below
Required:
    - name
    - resource_group_name
Optional:
    - ingestion_access_mode
    - query_access_mode
    - tags
EOT

  type = map(object({
    name                  = string
    resource_group_name   = string
    ingestion_access_mode = optional(string)
    query_access_mode     = optional(string)
    tags                  = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.monitor_private_link_scopes : (
        length(v.name) >= 1
      )
    ])
    error_message = "[from validate.PrivateLinkScopeName: invalid when len(value) < 1]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_private_link_scopes : (
        length(v.name) <= 255
      )
    ])
    error_message = "[from validate.PrivateLinkScopeName: invalid when len(value) > 255]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_private_link_scopes : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_private_link_scopes : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_private_link_scopes : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.monitor_private_link_scopes : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

