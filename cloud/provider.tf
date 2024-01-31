terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.42.1"
    }
  }
}

variable "user" {
  type = string
  default = "simmondobber"
}

variable "proxmox_ip" {
  type = string
  default = "192.168.1.2"
}

variable "proxmox_port" {
  type = string
  default = "8006"
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
  endpoint = "https://${var.proxmox_ip}:${var.proxmox_port}/api2/json"
  api_token = "${var.proxmox_api_token_id}=${var.proxmox_api_token_secret}"
  insecure = true
}