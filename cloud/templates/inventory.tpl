[bastion]
${ bastion }

[cloud_all:children]
cloud_workers
cloud_masters

[cloud_workers]
%{ for group in worker_nodes ~}
${ group }
%{ endfor ~}

[cloud_masters]
%{ for group in master_nodes ~}
${ group }
%{ endfor ~}

[cloud_all:vars]
ansible_ssh_common_args = '-J ${ user }@${ bastion } -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'