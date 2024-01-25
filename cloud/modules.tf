module "master-node" {
  source = "./templates/master-node"
  vm_count = 1
  vm_id_base = 300
  template_id = 200
  vm_name = "master-node"
  vm_description = "cloud master node"
  vm_cidr_ip = "10.0.0.8/30"
  gateway = "10.0.0.1"
  bridge = "vmbr1"
}

module "worker-node" {
  source = "./templates/worker-node"
  vm_count = 2
  vm_id_base = 301
  template_id = 201
  vm_name = "worker-node"
  vm_description = "cloud worker node"
  vm_cidr_ip = "10.0.0.16/28"
  gateway = "10.0.0.1"
  bridge = "vmbr1"
}