variable "bds_bds_instance_node_backups" {
  description = <<EOT
Map of bds_bds_instance_node_backups, attributes below
Required:
    - backup_type
    - bds_instance_id
    - level_type_details (block):
        - level_type (required)
        - node_host_name (optional)
        - node_type (optional)
Optional:
    - backup_config_id
    - display_name
    - node_instance_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    backup_type      = string
    bds_instance_id  = string
    backup_config_id = optional(string)
    display_name     = optional(string)
    node_instance_id = optional(string)
    level_type_details = object({
      level_type     = string
      node_host_name = optional(string)
      node_type      = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.bds_bds_instance_node_backups : (
        contains([for v in ["NODE_LEVEL", "NODE_TYPE_LEVEL"] : lower(v)], lower(v.level_type_details.level_type))
      )
    ])
    error_message = "must be one of: \"NODE_LEVEL\", \"NODE_TYPE_LEVEL\""
  }
}

