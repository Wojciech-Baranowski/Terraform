## Script for automated creation of Proxmox VMs.

### How to use:

Script needs `secrets.auto.tfvars` file based on `secrets-example` with filled secrets to execute propertly.

To initialize execute `terraform init` from cloud directory.

To run execute `terraform apply --auto-approve -var-file='templates/worker-node.tfvars'` from cloud directory, and enter number of VMs to clone.
