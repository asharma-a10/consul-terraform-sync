variable "services" {
  description = "Consul services monitored by Consul NIA"
  type = map(
    object({
      id        = string
      name      = string
      address   = string
      port      = number
      meta      = map(string)
      tags      = list(string)
      namespace = string
      status    = string

      node                  = string
      node_id               = string
      node_address          = string
      node_datacenter       = string
      node_tagged_addresses = map(string)
      node_meta             = map(string)
    })
  )
}

variable "virtual_servers" {
  description = "Virtual Server Details passed by the User"
  type = map(
    object({
      name       = string
      ip_address = string
      port       = number
      protocol   = string
    })
  )
}

variable "slb_service_group_protocol" {
  description = "Protocol of the Consul services in service group"
  type        = string
  default     = "tcp"
}
