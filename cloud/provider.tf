terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.42.1"
    }
  }
}

provider "proxmox" {
  endpoint = var.proxmox_api_address
  api_token = "${var.proxmox_api_token_id}=${var.proxmox_api_token_secret}"
  insecure = true
}

module "worker-node" {
  source = "./templates/worker-node"
  vm_count = 2
  vm_id_base = 201
  template_id = 200
  vm_name = "worker-node"
  vm_description = "cloud worker node"
  vm_cidr_ip_base = "192.168.1.128/27"
  vm_ip_mask = "24"
  gateway = "192.168.1.1"
}

module "master-node" {
  source = "./templates/master-node"
  vm_count = 1
  vm_id_base = 301
  template_id = 300
  vm_name = "master-node"
  vm_description = "cloud master node"
  vm_cidr_ip_base = "192.168.1.112/28"
  vm_ip_mask = "24"
  gateway = "192.168.1.1"
}
