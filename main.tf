terraform {
  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = "2.6.0"
    }
  }
}

provider "equinix" {
  # Configuration options 
  # Credentials for only Equinix Metal resources 
  auth_token = ""
}

#specs of server and machine  
resource "equinix_metal_device" "web1" {
  hostname = "audreametal1"
  plan = "c3.small.x86"
  metro = "da"
  operating_system = "ubuntu_20_04"
  billing_cycle = "hourly"
  project_id = ""
}

resource "equinix_metal_vlan" "vlan1" {
  description = "VLAN in da"
  metro = "da"
  project_id = ""
}

resource "equinix_metal_vlan" "vlan1" {
  description = "VLAN in SV"
  metro = "sv"
  project_id = ""
}
