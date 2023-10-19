# terraform-vcd-inserted-media

Terraform module which manages media file ressources on already existing VMs on VMWare Cloud Director.

Create this resource for inserting the media, and destroy it for ejecting.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.9 |
| <a name="requirement_vcd"></a> [vcd](#requirement\_vcd) | >= 3.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vcd"></a> [vcd](#provider\_vcd) | 3.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vcd_inserted_media.inserted_media](https://registry.terraform.io/providers/vmware/vcd/latest/docs/resources/inserted_media) | resource |
| [vcd_catalog.catalog](https://registry.terraform.io/providers/vmware/vcd/latest/docs/data-sources/catalog) | data source |
| [vcd_vapp.vapp](https://registry.terraform.io/providers/vmware/vcd/latest/docs/data-sources/vapp) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_catalog_name"></a> [catalog\_name](#input\_catalog\_name) | The name of the catalog where to find the media file. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Media file name in catalog which will be inserted to VM. | `string` | n/a | yes |
| <a name="input_vapp_name"></a> [vapp\_name](#input\_vapp\_name) | The name of vApp to find. | `string` | n/a | yes |
| <a name="input_vdc_org_name"></a> [vdc\_org\_name](#input\_vdc\_org\_name) | The name of the organization to use. | `string` | n/a | yes |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | The name of VM to be used to insert media file. | `string` | n/a | yes |
| <a name="input_eject_force"></a> [eject\_force](#input\_eject\_force) | Allows to pass answer to question in vCD 'The guest operating system has locked the CD-ROM door and is probably using the CD-ROM. Disconnect anyway (and override the lock)?' when ejecting from a VM which is powered on. | `bool` | `true` | no |
| <a name="input_vdc_name"></a> [vdc\_name](#input\_vdc\_name) | The name of VDC to use. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Inserted Media file. |
<!-- END_TF_DOCS -->

## Examples

```
module "boot_disk" {
  source       = "git::https://github.com/noris-network/terraform-vcd-inserted-media?ref=1.0.0"
  name         = "debian12.iso"
  vdc_org_name = "myORG"
  vdc_name     = "myDC01"
  vm_name      = "web01.example.net"
  vapp_name    = "webserver"
  catalog_name = "myCatalog"
}
```
