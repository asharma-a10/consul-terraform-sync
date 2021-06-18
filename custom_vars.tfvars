virtual_servers = {
  "web" : {
    name       = "virtual_server_web"
    ip_address = "10.10.10.10"
    port       = 80
    protocol   = "tcp"
  },
  "db" : {
    name       = "virtual_server_db"
    ip_address = "10.10.10.20"
    port       = 90
    protocol   = "tcp"
  }
}