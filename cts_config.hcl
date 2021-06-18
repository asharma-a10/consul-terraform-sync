log_level = "DEBUG"
consul {
  address = "10.65.22.163:8500"
}

driver "terraform" {
  log = true
  required_providers {
    thunder = {
      source = "a10networks/thunder"
    }
  }
}

terraform_provider "thunder" {
  address  = "10.65.22.166"
  alias    = "thunder1"
  username = "admin"
  password = "a10"
}

task {
  name        = "slb-automation-4"
  description = "automate slb servers for vThunder"
  #source      = "a10networks/service-group-sync-nia/thunder"
  source      = "/Users/asharma/Desktop/work/consul-nia/custom_module/terraform-thunder-service-group-sync-nia/"
  variable_files = ["/Users/asharma/Desktop/work/consul-nia/custom_vars.tfvars"]
  #version    = "0.1.3"
  providers   = ["thunder.thunder1"]
  services    = ["web","db", "api"]
}