terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.42.1"
    }
  }
}

resource "proxmox_virtual_environment_vm" "master-node" {

  count = var.vm_count
  vm_id = var.vm_id_base + count.index
  name = "${var.vm_name}-${count.index + 1}"
  description = var.vm_description
  node_name = "pve"

  network_device {
    bridge = var.bridge
  }

  clone {
    vm_id = var.template_id
  }

  agent {
    enabled = true
  }
  initialization {
    ip_config {
      ipv4 {
        address = "${cidrhost(var.vm_cidr_ip, count.index)}${regex("\\/\\d*", var.vm_cidr_ip)}"
        gateway = var.gateway
      }
    }
  }
}