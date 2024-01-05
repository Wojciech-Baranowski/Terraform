#common variables
variable "proxmox_api_address" {
  type = string
}

variable "gateway" {
  type = string
}

variable "vm_count" {
  type = number
}


#secrets
variable "proxmox_api_token_id" {
  type = string
  sensitive = true
}

variable "proxmox_api_token_secret" {
  type = string
  sensitive = true
}


#template specific variables
variable "vm_id_base" {
  type = number
}

variable "template_id" {
  type = number
}

variable "vm_name" {
  type = string
}

variable "vm_description" {
  type = string
}

variable "vm_cidr_ip_base" {
  type = string
}

variable "vm_ip_mask" {
  type = string
}
