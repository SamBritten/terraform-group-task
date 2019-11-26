resource "azurerm_public_ip" "front" {
    name                         = "${terraform.workspace}-front-pip"
    location                     = "${azurerm_resource_group.default.location}"
    resource_group_name          = "${azurerm_resource_group.default.name}"
    allocation_method            = "Dynamic"
    domain_name_label = "${terraform.workspace}-front-463361681130006683"
}

resource "azurerm_public_ip" "manage" {
    name                         = "${terraform.workspace}-manage-pip"
    location                     = "${azurerm_resource_group.default.location}"
    resource_group_name          = "${azurerm_resource_group.default.name}"
    allocation_method            = "Dynamic"
    domain_name_label = "${terraform-workspace}-manage-463361681130006683"
}
