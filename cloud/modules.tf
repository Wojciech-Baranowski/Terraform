module "master-node" {
  source = "./cloud-nodes/master-node"
  vm_count = 3
  vm_id_base = 300
  template_id = 200
  vm_name = "master-node"
  vm_description = "cloud master node"
  vm_cidr_ip = "10.0.0.8/30"
  gateway = "10.0.0.1"
  bridge = "vmbr1"
}

module "worker-node" {
  source = "./cloud-nodes/worker-node"
  vm_count = 3
  vm_id_base = 310
  template_id = 201
  vm_name = "worker-node"
  vm_description = "cloud worker node"
  vm_cidr_ip = "10.0.0.16/28"
  gateway = "10.0.0.1"
  bridge = "vmbr1"
}
