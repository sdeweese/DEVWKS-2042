# initialize terraform using 'terraform init'
# plan out what will happen using 'terraform plan'
# apply this terraform file using 'terraform apply -auto-approve'

# This will create VLAN100 on the 9300 Switch in this pod and store that data in the Terraform state file

terraform {
  required_providers {
    iosxe = {
      source = "CiscoDevNet/iosxe"
      version = ">=0.5.5"
    }
  }
}

provider "iosxe" {
  url = "https://10.1.1.5"
  insecure = true
  username = "admin"
  password = "Cisco123"
}

resource "iosxe_interface_vlan" "example" {
  name                 = 100
  ipv4_address         = "10.1.100.100"
  ipv4_address_mask    = "255.255.255.0"
}

data "iosxe_interface_vlan" "get_example" {
  name = 100
} 
