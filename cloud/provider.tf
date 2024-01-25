terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.42.1"
    }
  }
}

variable "proxmox_api_token_id" {
  type = string
  sensitive = true
}

variable "proxmox_api_token_secret" {
  type = string
  sensitive = true
}

provider "proxmox" {
  endpoint = "https://192.168.1.2:8006/api2/json"
  api_token = "${var.proxmox_api_token_id}=${var.proxmox_api_token_secret}"
  insecure = true
}
