resource "yandex_compute_instance" "vm_ansible" {

  for_each = toset(var.vm_for_each)

  name        = each.value
  platform_id = var.vm_ansible_resource.platform
   

  resources {
    cores  = var.vm_ansible_resource.cpu
    memory = var.vm_ansible_resource.ram
    core_fraction = var.vm_ansible_resource.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu-2004-lts.image_id
      type = var.vm_ansible_resource.type_disk
      size = var.vm_ansible_resource.disk
    }   
  }

  metadata = {
    ssh-keys = "ubuntu:${local.public_key}"
  }

  scheduling_policy { preemptible = true }

  network_interface { 
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }
  allow_stopping_for_update = true
  
}
