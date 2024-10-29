variable "id" {
  type = string
}

variable "role_definition_name" {
  type = string
}

variable "principal_id" {
  type = string
}

resource "azurerm_role_assignment" "acr_role_assignment" {
  scope                = var.id
  role_definition_name = var.role_definition_name
  principal_id         = var.principal_id

}