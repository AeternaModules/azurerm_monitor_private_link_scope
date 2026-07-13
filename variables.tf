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
  # --- Unconfirmed validation candidates, derived from azurerm_monitor_private_link_scope's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.PrivateLinkScopeName] !ok
  # path: name
  #   condition: length(value) >= 1
  #   message:   [from validate.PrivateLinkScopeName: invalid when len(value) < 1]
  #   source:    [from validate.PrivateLinkScopeName: invalid when len(value) < 1]
  # path: name
  #   condition: length(value) <= 255
  #   message:   [from validate.PrivateLinkScopeName: invalid when len(value) > 255]
  #   source:    [from validate.PrivateLinkScopeName: invalid when len(value) > 255]
  # path: name
  #   source:    [from validate.PrivateLinkScopeName] !regexp.MustCompile(`^[a-zA-Z0-9()-_.]*[a-zA-Z0-9_-]$`).MatchString(v)
  # path: ingestion_access_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: query_access_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

