output "resource_group_name" {
  value = var.create_rg ? azurerm_resource_group.rg[0].name : data.azurerm_resource_group.existing_rg[0].name
}

# output "validate_rg" {
#   value = null

#   precondition {
#     condition     = (var.create_rg && var.rg_name == null)
#     error_message = "The 'rg_name' must be provided when 'create_rg' is false."
#   }
# }

output "public_ip_address" {
  value = azurerm_linux_virtual_machine.this.public_ip_address
}
