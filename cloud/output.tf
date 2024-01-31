resource "local_file" "ansible_output" {
  content = templatefile("templates/inventory.tpl", {
    user = var.user
    bastion = var.proxmox_ip
    worker_nodes = module.worker-node.ip_addresses
    master_nodes = module.master-node.ip_addresses
  }
  )
  filename = "../../Ansible/inventory/hosts"
}