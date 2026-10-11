resource "oci_bds_bds_instance_node_backup" "bds_bds_instance_node_backups" {
  for_each = var.bds_bds_instance_node_backups

  backup_type      = each.value.backup_type
  bds_instance_id  = each.value.bds_instance_id
  backup_config_id = each.value.backup_config_id
  display_name     = each.value.display_name
  node_instance_id = each.value.node_instance_id

  level_type_details {
    level_type     = each.value.level_type_details.level_type
    node_host_name = each.value.level_type_details.node_host_name
    node_type      = each.value.level_type_details.node_type
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

