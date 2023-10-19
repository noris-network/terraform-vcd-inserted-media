variable "vdc_org_name" {
  description = "The name of the organization to use."
  type        = string
}

variable "vdc_name" {
  description = "The name of VDC to use."
  type        = string
  default     = null
}

variable "catalog_name" {
  description = "The name of the catalog where to find the media file."
  type        = string
}

variable "name" {
  description = "Media file name in catalog which will be inserted to VM."
  type        = string
}

variable "vapp_name" {
  description = "The name of vApp to find."
  type        = string
}

variable "vm_name" {
  description = "The name of VM to be used to insert media file."
  type        = string
}

variable "eject_force" {
  description = "Allows to pass answer to question in vCD 'The guest operating system has locked the CD-ROM door and is probably using the CD-ROM. Disconnect anyway (and override the lock)?' when ejecting from a VM which is powered on."
  type        = bool
  default     = true
}
