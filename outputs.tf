output "bds_bds_instance_node_backups_id" {
  description = "Map of id values across all bds_bds_instance_node_backups, keyed the same as var.bds_bds_instance_node_backups except keys with no id are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup.bds_bds_instance_node_backups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bds_bds_instance_node_backups_backup_config_id" {
  description = "Map of backup_config_id values across all bds_bds_instance_node_backups, keyed the same as var.bds_bds_instance_node_backups except keys with no backup_config_id are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup.bds_bds_instance_node_backups : k => v.backup_config_id if v.backup_config_id != null && length(v.backup_config_id) > 0 }
}
output "bds_bds_instance_node_backups_backup_type" {
  description = "Map of backup_type values across all bds_bds_instance_node_backups, keyed the same as var.bds_bds_instance_node_backups except keys with no backup_type are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup.bds_bds_instance_node_backups : k => v.backup_type if v.backup_type != null && length(v.backup_type) > 0 }
}
output "bds_bds_instance_node_backups_bds_instance_id" {
  description = "Map of bds_instance_id values across all bds_bds_instance_node_backups, keyed the same as var.bds_bds_instance_node_backups except keys with no bds_instance_id are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup.bds_bds_instance_node_backups : k => v.bds_instance_id if v.bds_instance_id != null && length(v.bds_instance_id) > 0 }
}
output "bds_bds_instance_node_backups_display_name" {
  description = "Map of display_name values across all bds_bds_instance_node_backups, keyed the same as var.bds_bds_instance_node_backups except keys with no display_name are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup.bds_bds_instance_node_backups : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "bds_bds_instance_node_backups_level_type_details" {
  description = "Map of level_type_details values across all bds_bds_instance_node_backups, keyed the same as var.bds_bds_instance_node_backups except keys with no level_type_details are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup.bds_bds_instance_node_backups : k => one(v.level_type_details) if v.level_type_details != null && length(v.level_type_details) > 0 }
}
output "bds_bds_instance_node_backups_node_instance_id" {
  description = "Map of node_instance_id values across all bds_bds_instance_node_backups, keyed the same as var.bds_bds_instance_node_backups except keys with no node_instance_id are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup.bds_bds_instance_node_backups : k => v.node_instance_id if v.node_instance_id != null && length(v.node_instance_id) > 0 }
}
output "bds_bds_instance_node_backups_state" {
  description = "Map of state values across all bds_bds_instance_node_backups, keyed the same as var.bds_bds_instance_node_backups except keys with no state are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup.bds_bds_instance_node_backups : k => v.state if v.state != null && length(v.state) > 0 }
}
output "bds_bds_instance_node_backups_time_created" {
  description = "Map of time_created values across all bds_bds_instance_node_backups, keyed the same as var.bds_bds_instance_node_backups except keys with no time_created are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup.bds_bds_instance_node_backups : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "bds_bds_instance_node_backups_time_updated" {
  description = "Map of time_updated values across all bds_bds_instance_node_backups, keyed the same as var.bds_bds_instance_node_backups except keys with no time_updated are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup.bds_bds_instance_node_backups : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

