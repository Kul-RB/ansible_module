resource "null_resource" "ansible_host"{

depends_on = [ yandex_compute_instance.vm_ansible ]

      provisioner "local-exec" {
    command = "cat /home/cfdata/.ssh/id_rsa | ssh-add -"
  }

  provisioner "local-exec" {
    command = "sleep 60"
  }

  provisioner "local-exec" {                  
    command  = "export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook -i ${abspath(path.module)}/hosts.cfg /home/cfdata/ansible_module/hw_3_yandex/playbook/site.yml  --diff"
    environment = { ANSIBLE_HOST_KEY_CHECKING = "False" }
  }
    triggers = {  
      playbook_src_hash  = file("/home/cfdata/ansible_module/hw_3_yandex/playbook/site.yml")
      ssh_public_key     = local.public_key
    }
}