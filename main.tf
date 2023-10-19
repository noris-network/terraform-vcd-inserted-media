data "vcd_catalog" "catalog" {
  name = var.catalog_name
}

data "vcd_vapp" "vapp" {
  name = var.vapp_name
  org  = var.vdc_org_name
  vdc  = var.vdc_name
}

resource "vcd_inserted_media" "inserted_media" {
  org         = var.vdc_org_name
  vdc         = var.vdc_name
  catalog     = data.vcd_catalog.catalog.name
  name        = var.name
  vapp_name   = data.vcd_vapp.vapp.name
  vm_name     = var.vm_name
  eject_force = var.eject_force
}
