# initialize terraform using 'terraform init'
# plan out what will happen using 'terraform plan'
# apply this terraform file using 'terraform apply -auto-approve'

# This will create VLAN10 on the 9300 Switch in this pod and store that data in the Terraform state file

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

## ADD YOUR RESOURCE(S) HERE