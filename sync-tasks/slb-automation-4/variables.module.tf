# This file is generated by Consul Terraform Sync.
#
# The HCL blocks, arguments, variables, and values are derived from the
# operator configuration for Sync. Any manual changes to this file
# may not be preserved and could be overwritten by a subsequent update.
#
# Task: slb-automation-4
# Description: automate slb servers for vThunder

variable "virtual_servers" {
  default = null
  type = object({
    db = object({
      ip_address = string
      name       = string
      port       = number
      protocol   = string
    })
    web = object({
      ip_address = string
      name       = string
      port       = number
      protocol   = string
    })
  })
}
